; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_free_modules.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-pcm.c_hsw_pcm_free_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.hsw_priv_data = type { i32*, %struct.hsw_pcm_data**, %struct.sst_hsw* }
%struct.hsw_pcm_data = type { i32* }
%struct.sst_hsw = type { i32 }

@mod_map = common dso_local global %struct.TYPE_3__* null, align 8
@SST_HSW_MODULE_WAVES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hsw_priv_data*)* @hsw_pcm_free_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_pcm_free_modules(%struct.hsw_priv_data* %0) #0 {
  %2 = alloca %struct.hsw_priv_data*, align 8
  %3 = alloca %struct.sst_hsw*, align 8
  %4 = alloca %struct.hsw_pcm_data*, align 8
  %5 = alloca i32, align 4
  store %struct.hsw_priv_data* %0, %struct.hsw_priv_data** %2, align 8
  %6 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %2, align 8
  %7 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %6, i32 0, i32 2
  %8 = load %struct.sst_hsw*, %struct.sst_hsw** %7, align 8
  store %struct.sst_hsw* %8, %struct.sst_hsw** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %45, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mod_map, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %9
  %15 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %2, align 8
  %16 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %15, i32 0, i32 1
  %17 = load %struct.hsw_pcm_data**, %struct.hsw_pcm_data*** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mod_map, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %17, i64 %23
  %25 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mod_map, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %25, i64 %31
  store %struct.hsw_pcm_data* %32, %struct.hsw_pcm_data** %4, align 8
  %33 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %4, align 8
  %34 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %14
  %38 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %4, align 8
  %39 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @sst_hsw_runtime_module_free(i32* %40)
  %42 = load %struct.hsw_pcm_data*, %struct.hsw_pcm_data** %4, align 8
  %43 = getelementptr inbounds %struct.hsw_pcm_data, %struct.hsw_pcm_data* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %14
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %9

48:                                               ; preds = %9
  %49 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %50 = load i32, i32* @SST_HSW_MODULE_WAVES, align 4
  %51 = call i64 @sst_hsw_is_module_loaded(%struct.sst_hsw* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %2, align 8
  %55 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %2, align 8
  %60 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @sst_hsw_runtime_module_free(i32* %61)
  %63 = load %struct.hsw_priv_data*, %struct.hsw_priv_data** %2, align 8
  %64 = getelementptr inbounds %struct.hsw_priv_data, %struct.hsw_priv_data* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %58, %53, %48
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @sst_hsw_runtime_module_free(i32*) #1

declare dso_local i64 @sst_hsw_is_module_loaded(%struct.sst_hsw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
