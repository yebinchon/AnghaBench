; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_set_lpf_filters.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/meson/extr_axg-pdm.c_axg_pdm_set_lpf_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axg_pdm = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.axg_pdm_lpf* }
%struct.axg_pdm_lpf = type { i32, i32* }

@PDM_LPF_NUM = common dso_local global i32 0, align 4
@PDM_LPF_MAX_STAGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PDM_COEFF_ADDR = common dso_local global i32 0, align 4
@PDM_COEFF_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axg_pdm*)* @axg_pdm_set_lpf_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axg_pdm_set_lpf_filters(%struct.axg_pdm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axg_pdm*, align 8
  %4 = alloca %struct.axg_pdm_lpf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.axg_pdm* %0, %struct.axg_pdm** %3, align 8
  %8 = load %struct.axg_pdm*, %struct.axg_pdm** %3, align 8
  %9 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.axg_pdm_lpf*, %struct.axg_pdm_lpf** %13, align 8
  store %struct.axg_pdm_lpf* %14, %struct.axg_pdm_lpf** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @PDM_LPF_NUM, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.axg_pdm_lpf*, %struct.axg_pdm_lpf** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.axg_pdm_lpf, %struct.axg_pdm_lpf* %20, i64 %22
  %24 = getelementptr inbounds %struct.axg_pdm_lpf, %struct.axg_pdm_lpf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PDM_LPF_MAX_STAGE, align 4
  %34 = icmp uge i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %85

38:                                               ; preds = %31
  %39 = load %struct.axg_pdm*, %struct.axg_pdm** %3, align 8
  %40 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PDM_COEFF_ADDR, align 4
  %43 = call i32 @regmap_write(i32 %41, i32 %42, i32 0)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %81, %38
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @PDM_LPF_NUM, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %84

48:                                               ; preds = %44
  %49 = load %struct.axg_pdm*, %struct.axg_pdm** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @axg_pdm_set_lpf_ctrl(%struct.axg_pdm* %49, i32 %50)
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %77, %48
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.axg_pdm_lpf*, %struct.axg_pdm_lpf** %4, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.axg_pdm_lpf, %struct.axg_pdm_lpf* %54, i64 %56
  %58 = getelementptr inbounds %struct.axg_pdm_lpf, %struct.axg_pdm_lpf* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %53, %59
  br i1 %60, label %61, label %80

61:                                               ; preds = %52
  %62 = load %struct.axg_pdm*, %struct.axg_pdm** %3, align 8
  %63 = getelementptr inbounds %struct.axg_pdm, %struct.axg_pdm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PDM_COEFF_DATA, align 4
  %66 = load %struct.axg_pdm_lpf*, %struct.axg_pdm_lpf** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.axg_pdm_lpf, %struct.axg_pdm_lpf* %66, i64 %68
  %70 = getelementptr inbounds %struct.axg_pdm_lpf, %struct.axg_pdm_lpf* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @regmap_write(i32 %64, i32 %65, i32 %75)
  br label %77

77:                                               ; preds = %61
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %52

80:                                               ; preds = %52
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %44

84:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %35
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @axg_pdm_set_lpf_ctrl(%struct.axg_pdm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
