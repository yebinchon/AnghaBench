; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_create_modules.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_create_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.hsw_priv_data = type { %struct.hsw_pcm_data**, i32*, %struct.sst_hsw* }
%struct.hsw_pcm_data = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sst_hsw = type { i32 }

@mod_map = common dso_local global %struct.TYPE_5__* null, align 8
@SST_HSW_MODULE_WAVES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hsw_priv_data*)* @hsw_pcm_create_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_pcm_create_modules(%struct.hsw_priv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hsw_priv_data*, align 8
  %4 = alloca %struct.sst_hsw*, align 8
  %5 = alloca %struct.hsw_pcm_data*, align 8
  %6 = alloca i32, align 4
  store %struct.hsw_priv_data* %0, %struct.hsw_priv_data** %3, align 8
  %7 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %3, align 8
  %8 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %7, i32 0, i32 2
  %9 = load %struct.sst_hsw*, %struct.sst_hsw** %8, align 8
  store %struct.sst_hsw* %9, %struct.sst_hsw** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %61, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mod_map, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %10
  %16 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %3, align 8
  %17 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %16, i32 0, i32 0
  %18 = load %struct.hsw_pcm_data**, %struct.hsw_pcm_data*** %17, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mod_map, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %18, i64 %24
  %26 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %25, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mod_map, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %26, i64 %32
  store %struct.hsw_pcm_data* %33, %struct.hsw_pcm_data** %5, align 8
  %34 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mod_map, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %5, align 8
  %42 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @sst_hsw_runtime_module_create(%struct.sst_hsw* %34, i32 %40, i32 %43)
  %45 = bitcast i8* %44 to %struct.TYPE_4__*
  %46 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %5, align 8
  %47 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %46, i32 0, i32 0
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %47, align 8
  %48 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %5, align 8
  %49 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = icmp eq %struct.TYPE_4__* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %15
  br label %83

53:                                               ; preds = %15
  %54 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %5, align 8
  %55 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %5, align 8
  %60 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %10

64:                                               ; preds = %10
  %65 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %66 = load i32, i32* @SST_HSW_MODULE_WAVES, align 4
  %67 = call i64 @sst_hsw_is_module_loaded(%struct.sst_hsw* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %64
  %70 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %71 = load i32, i32* @SST_HSW_MODULE_WAVES, align 4
  %72 = call i8* @sst_hsw_runtime_module_create(%struct.sst_hsw* %70, i32 %71, i32 0)
  %73 = bitcast i8* %72 to i32*
  %74 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %3, align 8
  %75 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %3, align 8
  %77 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %83

81:                                               ; preds = %69
  br label %82

82:                                               ; preds = %81, %64
  store i32 0, i32* %2, align 4
  br label %118

83:                                               ; preds = %80, %52
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %112, %83
  %87 = load i32, i32* %6, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %115

89:                                               ; preds = %86
  %90 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %3, align 8
  %91 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %90, i32 0, i32 0
  %92 = load %struct.hsw_pcm_data**, %struct.hsw_pcm_data*** %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mod_map, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %92, i64 %98
  %100 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %99, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mod_map, align 8
  %102 = load i32, i32* %6, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %100, i64 %106
  store %struct.hsw_pcm_data* %107, %struct.hsw_pcm_data** %5, align 8
  %108 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %5, align 8
  %109 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = call i32 @sst_hsw_runtime_module_free(%struct.TYPE_4__* %110)
  br label %112

112:                                              ; preds = %89
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %6, align 4
  br label %86

115:                                              ; preds = %86
  %116 = load i32, i32* @ENODEV, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %115, %82
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i8* @sst_hsw_runtime_module_create(%struct.sst_hsw*, i32, i32) #1

declare dso_local i64 @sst_hsw_is_module_loaded(%struct.sst_hsw*, i32) #1

declare dso_local i32 @sst_hsw_runtime_module_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
