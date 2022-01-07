; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_params_choose.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_hw_params_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_mask = type { i32 }
%struct.snd_interval = type { i32 }

@snd_pcm_hw_params_choose.vars = internal constant [9 x i32] [i32 135, i32 132, i32 129, i32 133, i32 130, i32 131, i32 134, i32 128, i32 -1], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_pcm_hw_params_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pcm_hw_params_choose(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.snd_mask, align 4
  %8 = alloca %struct.snd_interval, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  store i32* getelementptr inbounds ([9 x i32], [9 x i32]* @snd_pcm_hw_params_choose.vars, i64 0, i64 0), i32** %6, align 8
  br label %10

10:                                               ; preds = %100, %2
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, -1
  br i1 %13, label %14, label %103

14:                                               ; preds = %10
  %15 = call i64 (...) @trace_hw_mask_param_enabled()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @hw_is_mask(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %23, i32 %25)
  %27 = bitcast %struct.snd_mask* %7 to i8*
  %28 = bitcast %struct.snd_mask* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %29

29:                                               ; preds = %22, %17
  br label %30

30:                                               ; preds = %29, %14
  %31 = call i64 (...) @trace_hw_interval_param_enabled()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @hw_is_interval(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %39, i32 %41)
  %43 = bitcast %struct.snd_interval* %8 to i8*
  %44 = bitcast %struct.snd_interval* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  br label %45

45:                                               ; preds = %38, %33
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 134
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %52 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @snd_pcm_hw_param_first(%struct.snd_pcm_substream* %51, %struct.snd_pcm_hw_params* %52, i32 %54, i32* null)
  store i32 %55, i32* %9, align 4
  br label %62

56:                                               ; preds = %46
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %58 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_pcm_hw_param_last(%struct.snd_pcm_substream* %57, %struct.snd_pcm_hw_params* %58, i32 %60, i32* null)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %56, %50
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %104

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %100

71:                                               ; preds = %67
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @hw_is_mask(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params* %80, i32 %82)
  %84 = call i32 @trace_hw_mask_param(%struct.snd_pcm_substream* %77, i32 %79, i32 0, %struct.snd_mask* %7, %struct.snd_mask* %83)
  br label %85

85:                                               ; preds = %76, %71
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @hw_is_interval(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params* %94, i32 %96)
  %98 = call i32 @trace_hw_interval_param(%struct.snd_pcm_substream* %91, i32 %93, i32 0, %struct.snd_interval* %8, %struct.snd_interval* %97)
  br label %99

99:                                               ; preds = %90, %85
  br label %100

100:                                              ; preds = %99, %70
  %101 = load i32*, i32** %6, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %6, align 8
  br label %10

103:                                              ; preds = %10
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %65
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @trace_hw_mask_param_enabled(...) #1

declare dso_local i64 @hw_is_mask(i32) #1

declare dso_local %struct.snd_mask* @hw_param_mask(%struct.snd_pcm_hw_params*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @trace_hw_interval_param_enabled(...) #1

declare dso_local i64 @hw_is_interval(i32) #1

declare dso_local %struct.snd_interval* @hw_param_interval(%struct.snd_pcm_hw_params*, i32) #1

declare dso_local i32 @snd_pcm_hw_param_first(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32*) #1

declare dso_local i32 @snd_pcm_hw_param_last(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*, i32, i32*) #1

declare dso_local i32 @trace_hw_mask_param(%struct.snd_pcm_substream*, i32, i32, %struct.snd_mask*, %struct.snd_mask*) #1

declare dso_local i32 @trace_hw_interval_param(%struct.snd_pcm_substream*, i32, i32, %struct.snd_interval*, %struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
