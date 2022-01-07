; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_output_select_apply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_output_select_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i64, i32* }

@CS4245_A_OUT_SEL_MASK = common dso_local global i32 0, align 4
@CS4245_SIGNAL_SEL = common dso_local global i64 0, align 8
@PLAYBACK_DST_HP = common dso_local global i64 0, align 8
@OXYGEN_GPIO_DATA = common dso_local global i32 0, align 4
@GPIO_HP_REAR = common dso_local global i32 0, align 4
@PLAYBACK_DST_HP_FP = common dso_local global i64 0, align 8
@CS4245_A_OUT_SEL_DAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*)* @output_select_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @output_select_apply(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.dg*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.dg*, %struct.dg** %5, align 8
  store %struct.dg* %6, %struct.dg** %3, align 8
  %7 = load i32, i32* @CS4245_A_OUT_SEL_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.dg*, %struct.dg** %3, align 8
  %10 = getelementptr inbounds %struct.dg, %struct.dg* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @CS4245_SIGNAL_SEL, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %8
  store i32 %15, i32* %13, align 4
  %16 = load %struct.dg*, %struct.dg** %3, align 8
  %17 = getelementptr inbounds %struct.dg, %struct.dg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PLAYBACK_DST_HP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %23 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %24 = load i32, i32* @GPIO_HP_REAR, align 4
  %25 = call i32 @oxygen_set_bits8(%struct.oxygen* %22, i32 %23, i32 %24)
  br label %51

26:                                               ; preds = %1
  %27 = load %struct.dg*, %struct.dg** %3, align 8
  %28 = getelementptr inbounds %struct.dg, %struct.dg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PLAYBACK_DST_HP_FP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %34 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %35 = load i32, i32* @GPIO_HP_REAR, align 4
  %36 = call i32 @oxygen_clear_bits8(%struct.oxygen* %33, i32 %34, i32 %35)
  %37 = load i32, i32* @CS4245_A_OUT_SEL_DAC, align 4
  %38 = load %struct.dg*, %struct.dg** %3, align 8
  %39 = getelementptr inbounds %struct.dg, %struct.dg* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @CS4245_SIGNAL_SEL, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %37
  store i32 %44, i32* %42, align 4
  br label %50

45:                                               ; preds = %26
  %46 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %47 = load i32, i32* @OXYGEN_GPIO_DATA, align 4
  %48 = load i32, i32* @GPIO_HP_REAR, align 4
  %49 = call i32 @oxygen_clear_bits8(%struct.oxygen* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %32
  br label %51

51:                                               ; preds = %50, %21
  %52 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %53 = load i64, i64* @CS4245_SIGNAL_SEL, align 8
  %54 = call i32 @cs4245_write_spi(%struct.oxygen* %52, i64 %53)
  ret i32 %54
}

declare dso_local i32 @oxygen_set_bits8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @oxygen_clear_bits8(%struct.oxygen*, i32, i32) #1

declare dso_local i32 @cs4245_write_spi(%struct.oxygen*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
