; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusmax.c_snd_gusmax_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_gusmax.c_snd_gusmax_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_gus_card = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@joystick_dac = common dso_local global i32* null, align 8
@MAXCNTRLPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.snd_card*, %struct.snd_gus_card*)* @snd_gusmax_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_gusmax_init(i32 %0, %struct.snd_card* %1, %struct.snd_gus_card* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_gus_card*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.snd_card* %1, %struct.snd_card** %5, align 8
  store %struct.snd_gus_card* %2, %struct.snd_gus_card** %6, align 8
  %7 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %8 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %10 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %9, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = load i32*, i32** @joystick_dac, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %17 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %19 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 4
  %23 = and i32 %22, 15
  %24 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %25 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %27 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 3
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %33 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 16
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %3
  %37 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %38 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %44 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, 32
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %49 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 64
  store i32 %51, i32* %49, align 4
  %52 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %53 = getelementptr inbounds %struct.snd_gus_card, %struct.snd_gus_card* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.snd_gus_card*, %struct.snd_gus_card** %6, align 8
  %56 = load i32, i32* @MAXCNTRLPORT, align 4
  %57 = call i32 @GUSP(%struct.snd_gus_card* %55, i32 %56)
  %58 = call i32 @outb(i32 %54, i32 %57)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @GUSP(%struct.snd_gus_card*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
