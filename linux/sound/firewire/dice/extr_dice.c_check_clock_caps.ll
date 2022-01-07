; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice.c_check_clock_caps.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice.c_check_clock_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32 }

@GLOBAL_CLOCK_CAPABILITIES = common dso_local global i32 0, align 4
@CLOCK_CAP_RATE_44100 = common dso_local global i32 0, align 4
@CLOCK_CAP_RATE_48000 = common dso_local global i32 0, align 4
@CLOCK_CAP_SOURCE_ARX1 = common dso_local global i32 0, align 4
@CLOCK_CAP_SOURCE_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*)* @check_clock_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_clock_caps(%struct.snd_dice* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_dice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %3, align 8
  %6 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %7 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %12 = load i32, i32* @GLOBAL_CLOCK_CAPABILITIES, align 4
  %13 = call i32 @snd_dice_transaction_read_global(%struct.snd_dice* %11, i32 %12, i32* %4, i32 4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %34

18:                                               ; preds = %10
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  %21 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %22 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %33

23:                                               ; preds = %1
  %24 = load i32, i32* @CLOCK_CAP_RATE_44100, align 4
  %25 = load i32, i32* @CLOCK_CAP_RATE_48000, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CLOCK_CAP_SOURCE_ARX1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CLOCK_CAP_SOURCE_INTERNAL, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.snd_dice*, %struct.snd_dice** %3, align 8
  %32 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %23, %18
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @snd_dice_transaction_read_global(%struct.snd_dice*, i32, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
