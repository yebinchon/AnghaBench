; ModuleID = '/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_miro.c_snd_card_miro_detect.c'
source_filename = "/home/carl/AnghaBench/linux/sound/isa/opti9xx/extr_miro.c_snd_card_miro_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.snd_miro = type { i32 }

@OPTi9XX_HW_82C929 = common dso_local global i32 0, align 4
@OPTi9XX_HW_82C924 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.snd_miro*)* @snd_card_miro_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_miro_detect(%struct.snd_card* %0, %struct.snd_miro* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_miro*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.snd_miro* %1, %struct.snd_miro** %5, align 8
  %8 = load i32, i32* @OPTi9XX_HW_82C929, align 4
  store i32 %8, i32* %6, align 4
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @OPTi9XX_HW_82C924, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @snd_miro_init(%struct.snd_miro* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %13
  %21 = load %struct.snd_miro*, %struct.snd_miro** %5, align 8
  %22 = call i32 @snd_miro_opti_check(%struct.snd_miro* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %33

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %25, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @snd_miro_init(%struct.snd_miro*, i32) #1

declare dso_local i32 @snd_miro_opti_check(%struct.snd_miro*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
