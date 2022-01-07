; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_input_source_apply.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_dg_mixer.c_input_source_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.dg* }
%struct.dg = type { i64, i32* }

@CS4245_SEL_MASK = common dso_local global i32 0, align 4
@CS4245_ANALOG_IN = common dso_local global i64 0, align 8
@CAPTURE_SRC_FP_MIC = common dso_local global i64 0, align 8
@CS4245_SEL_INPUT_2 = common dso_local global i32 0, align 4
@CAPTURE_SRC_LINE = common dso_local global i64 0, align 8
@CS4245_SEL_INPUT_4 = common dso_local global i32 0, align 4
@CAPTURE_SRC_MIC = common dso_local global i64 0, align 8
@CS4245_SEL_INPUT_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oxygen*)* @input_source_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_source_apply(%struct.oxygen* %0) #0 {
  %2 = alloca %struct.oxygen*, align 8
  %3 = alloca %struct.dg*, align 8
  store %struct.oxygen* %0, %struct.oxygen** %2, align 8
  %4 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %5 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %4, i32 0, i32 0
  %6 = load %struct.dg*, %struct.dg** %5, align 8
  store %struct.dg* %6, %struct.dg** %3, align 8
  %7 = load i32, i32* @CS4245_SEL_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.dg*, %struct.dg** %3, align 8
  %10 = getelementptr inbounds %struct.dg, %struct.dg* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @CS4245_ANALOG_IN, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %8
  store i32 %15, i32* %13, align 4
  %16 = load %struct.dg*, %struct.dg** %3, align 8
  %17 = getelementptr inbounds %struct.dg, %struct.dg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CAPTURE_SRC_FP_MIC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @CS4245_SEL_INPUT_2, align 4
  %23 = load %struct.dg*, %struct.dg** %3, align 8
  %24 = getelementptr inbounds %struct.dg, %struct.dg* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @CS4245_ANALOG_IN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %22
  store i32 %29, i32* %27, align 4
  br label %62

30:                                               ; preds = %1
  %31 = load %struct.dg*, %struct.dg** %3, align 8
  %32 = getelementptr inbounds %struct.dg, %struct.dg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CAPTURE_SRC_LINE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load i32, i32* @CS4245_SEL_INPUT_4, align 4
  %38 = load %struct.dg*, %struct.dg** %3, align 8
  %39 = getelementptr inbounds %struct.dg, %struct.dg* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @CS4245_ANALOG_IN, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %37
  store i32 %44, i32* %42, align 4
  br label %61

45:                                               ; preds = %30
  %46 = load %struct.dg*, %struct.dg** %3, align 8
  %47 = getelementptr inbounds %struct.dg, %struct.dg* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CAPTURE_SRC_MIC, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* @CS4245_SEL_INPUT_1, align 4
  %53 = load %struct.dg*, %struct.dg** %3, align 8
  %54 = getelementptr inbounds %struct.dg, %struct.dg* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @CS4245_ANALOG_IN, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %52
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %51, %45
  br label %61

61:                                               ; preds = %60, %36
  br label %62

62:                                               ; preds = %61, %21
  %63 = load %struct.oxygen*, %struct.oxygen** %2, align 8
  %64 = load i64, i64* @CS4245_ANALOG_IN, align 8
  %65 = call i32 @cs4245_write_spi(%struct.oxygen* %63, i64 %64)
  ret i32 %65
}

declare dso_local i32 @cs4245_write_spi(%struct.oxygen*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
