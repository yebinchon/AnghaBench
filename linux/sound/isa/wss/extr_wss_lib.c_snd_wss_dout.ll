; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_dout.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_dout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i8 }

@REGSEL = common dso_local global i32 0, align 4
@CS4231_INIT = common dso_local global i32 0, align 4
@REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wss*, i8, i8)* @snd_wss_dout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wss_dout(%struct.snd_wss* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca %struct.snd_wss*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 %2, i8* %6, align 1
  store i32 250, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %13 = load i32, i32* @REGSEL, align 4
  %14 = call i32 @CS4231P(i32 %13)
  %15 = call i32 @wss_inb(%struct.snd_wss* %12, i32 %14)
  %16 = load i32, i32* @CS4231_INIT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %11, %8
  %20 = phi i1 [ false, %8 ], [ %18, %11 ]
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = call i32 @udelay(i32 10)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %7, align 4
  br label %8

26:                                               ; preds = %19
  %27 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %28 = load i32, i32* @REGSEL, align 4
  %29 = call i32 @CS4231P(i32 %28)
  %30 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %31 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  %37 = trunc i32 %36 to i8
  %38 = call i32 @wss_outb(%struct.snd_wss* %27, i32 %29, i8 zeroext %37)
  %39 = load %struct.snd_wss*, %struct.snd_wss** %4, align 8
  %40 = load i32, i32* @REG, align 4
  %41 = call i32 @CS4231P(i32 %40)
  %42 = load i8, i8* %6, align 1
  %43 = call i32 @wss_outb(%struct.snd_wss* %39, i32 %41, i8 zeroext %42)
  %44 = call i32 (...) @mb()
  ret void
}

declare dso_local i32 @wss_inb(%struct.snd_wss*, i32) #1

declare dso_local i32 @CS4231P(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wss_outb(%struct.snd_wss*, i32, i8 zeroext) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
