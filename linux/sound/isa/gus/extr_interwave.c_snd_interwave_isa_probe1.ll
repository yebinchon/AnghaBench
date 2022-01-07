; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/gus/extr_interwave.c_snd_interwave_isa_probe1.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/gus/extr_interwave.c_snd_interwave_isa_probe1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_card = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.device*)* @snd_interwave_isa_probe1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_interwave_isa_probe1(i32 %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @snd_interwave_card_new(%struct.device* %8, i32 %9, %struct.snd_card** %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @snd_interwave_probe(%struct.snd_card* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %22 = call i32 @snd_card_free(%struct.snd_card* %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %27 = call i32 @dev_set_drvdata(%struct.device* %25, %struct.snd_card* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %20, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @snd_interwave_card_new(%struct.device*, i32, %struct.snd_card**) #1

declare dso_local i32 @snd_interwave_probe(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
