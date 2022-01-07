; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_thinkpad_twiddle.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/wss/extr_wss_lib.c_snd_wss_thinkpad_twiddle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_wss = type { i32 }

@AD1848_THINKPAD_CTL_PORT1 = common dso_local global i32 0, align 4
@AD1848_THINKPAD_CTL_PORT2 = common dso_local global i32 0, align 4
@AD1848_THINKPAD_CS4248_ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_wss*, i32)* @snd_wss_thinkpad_twiddle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_wss_thinkpad_twiddle(%struct.snd_wss* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_wss*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_wss* %0, %struct.snd_wss** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_wss*, %struct.snd_wss** %3, align 8
  %7 = getelementptr inbounds %struct.snd_wss, %struct.snd_wss* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %31

11:                                               ; preds = %2
  %12 = load i32, i32* @AD1848_THINKPAD_CTL_PORT1, align 4
  %13 = call i32 @outb(i32 28, i32 %12)
  %14 = load i32, i32* @AD1848_THINKPAD_CTL_PORT2, align 4
  %15 = call i32 @inb(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @AD1848_THINKPAD_CS4248_ENABLE_BIT, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %11
  %23 = load i32, i32* @AD1848_THINKPAD_CS4248_ENABLE_BIT, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @AD1848_THINKPAD_CTL_PORT2, align 4
  %30 = call i32 @outb(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %10
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
