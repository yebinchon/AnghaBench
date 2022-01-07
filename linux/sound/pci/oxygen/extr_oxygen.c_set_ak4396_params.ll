; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_set_ak4396_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen.c_set_ak4396_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxygen = type { %struct.generic_data* }
%struct.generic_data = type { i32**, i32 }
%struct.snd_pcm_hw_params = type { i32 }

@AK4396_CONTROL_2 = common dso_local global i64 0, align 8
@AK4396_DFS_MASK = common dso_local global i32 0, align 4
@AK4396_DFS_NORMAL = common dso_local global i32 0, align 4
@AK4396_DFS_DOUBLE = common dso_local global i32 0, align 4
@AK4396_DFS_QUAD = common dso_local global i32 0, align 4
@AK4396_CONTROL_1 = common dso_local global i64 0, align 8
@AK4396_DIF_24_MSB = common dso_local global i32 0, align 4
@AK4396_RSTN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oxygen*, %struct.snd_pcm_hw_params*)* @set_ak4396_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ak4396_params(%struct.oxygen* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca %struct.oxygen*, align 8
  %4 = alloca %struct.snd_pcm_hw_params*, align 8
  %5 = alloca %struct.generic_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.oxygen* %0, %struct.oxygen** %3, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %4, align 8
  %8 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %9 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %8, i32 0, i32 0
  %10 = load %struct.generic_data*, %struct.generic_data** %9, align 8
  store %struct.generic_data* %10, %struct.generic_data** %5, align 8
  %11 = load %struct.generic_data*, %struct.generic_data** %5, align 8
  %12 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = getelementptr inbounds i32*, i32** %13, i64 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @AK4396_CONTROL_2, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AK4396_DFS_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %23 = call i32 @params_rate(%struct.snd_pcm_hw_params* %22)
  %24 = icmp sle i32 %23, 54000
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @AK4396_DFS_NORMAL, align 4
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %42

29:                                               ; preds = %2
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %4, align 8
  %31 = call i32 @params_rate(%struct.snd_pcm_hw_params* %30)
  %32 = icmp sle i32 %31, 108000
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @AK4396_DFS_DOUBLE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load i32, i32* @AK4396_DFS_QUAD, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %25
  %43 = call i32 @msleep(i32 1)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.generic_data*, %struct.generic_data** %5, align 8
  %46 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = getelementptr inbounds i32*, i32** %47, i64 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @AK4396_CONTROL_2, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %44, %52
  br i1 %53, label %54, label %83

54:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %79, %54
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.generic_data*, %struct.generic_data** %5, align 8
  %58 = getelementptr inbounds %struct.generic_data, %struct.generic_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i64, i64* @AK4396_CONTROL_1, align 8
  %65 = load i32, i32* @AK4396_DIF_24_MSB, align 4
  %66 = call i32 @ak4396_write(%struct.oxygen* %62, i32 %63, i64 %64, i32 %65)
  %67 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i64, i64* @AK4396_CONTROL_2, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ak4396_write(%struct.oxygen* %67, i32 %68, i64 %69, i32 %70)
  %72 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i64, i64* @AK4396_CONTROL_1, align 8
  %75 = load i32, i32* @AK4396_DIF_24_MSB, align 4
  %76 = load i32, i32* @AK4396_RSTN, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @ak4396_write(%struct.oxygen* %72, i32 %73, i64 %74, i32 %77)
  br label %79

79:                                               ; preds = %61
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %55

82:                                               ; preds = %55
  br label %83

83:                                               ; preds = %82, %42
  ret void
}

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ak4396_write(%struct.oxygen*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
