; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_set_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_set_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32 }
%struct.sst_hsw_stream = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.sst_hsw_module_map }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.sst_hsw_module_map = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8* }
%struct.sst_module_runtime = type { i32, i32, %struct.sst_module* }
%struct.sst_module = type { i8*, i32, i32 }
%struct.sst_dsp = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"error: stream committed for set module\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SST_MEM_DRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"module %d runtime %d using:\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c" persistent offset 0x%x bytes 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c" scratch offset 0x%x bytes 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_stream_set_module_info(%struct.sst_hsw* %0, %struct.sst_hsw_stream* %1, %struct.sst_module_runtime* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_hsw*, align 8
  %6 = alloca %struct.sst_hsw_stream*, align 8
  %7 = alloca %struct.sst_module_runtime*, align 8
  %8 = alloca %struct.sst_hsw_module_map*, align 8
  %9 = alloca %struct.sst_dsp*, align 8
  %10 = alloca %struct.sst_module*, align 8
  store %struct.sst_hsw* %0, %struct.sst_hsw** %5, align 8
  store %struct.sst_hsw_stream* %1, %struct.sst_hsw_stream** %6, align 8
  store %struct.sst_module_runtime* %2, %struct.sst_module_runtime** %7, align 8
  %11 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %12 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  store %struct.sst_hsw_module_map* %13, %struct.sst_hsw_module_map** %8, align 8
  %14 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %15 = call %struct.sst_dsp* @sst_hsw_get_dsp(%struct.sst_hsw* %14)
  store %struct.sst_dsp* %15, %struct.sst_dsp** %9, align 8
  %16 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %7, align 8
  %17 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %16, i32 0, i32 2
  %18 = load %struct.sst_module*, %struct.sst_module** %17, align 8
  store %struct.sst_module* %18, %struct.sst_module** %10, align 8
  %19 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %20 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %25 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %121

30:                                               ; preds = %3
  %31 = load %struct.sst_hsw_module_map*, %struct.sst_hsw_module_map** %8, align 8
  %32 = getelementptr inbounds %struct.sst_hsw_module_map, %struct.sst_hsw_module_map* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.sst_module*, %struct.sst_module** %10, align 8
  %34 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.sst_hsw_module_map*, %struct.sst_hsw_module_map** %8, align 8
  %37 = getelementptr inbounds %struct.sst_hsw_module_map, %struct.sst_hsw_module_map* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i8* %35, i8** %40, align 8
  %41 = load %struct.sst_module*, %struct.sst_module** %10, align 8
  %42 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sst_hsw_module_map*, %struct.sst_hsw_module_map** %8, align 8
  %45 = getelementptr inbounds %struct.sst_hsw_module_map, %struct.sst_hsw_module_map* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 8
  %49 = load %struct.sst_dsp*, %struct.sst_dsp** %9, align 8
  %50 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %7, align 8
  %51 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SST_MEM_DRAM, align 4
  %54 = call i8* @sst_dsp_get_offset(%struct.sst_dsp* %49, i32 %52, i32 %53)
  %55 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %56 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i8* %54, i8** %58, align 8
  %59 = load %struct.sst_module*, %struct.sst_module** %10, align 8
  %60 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %63 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load %struct.sst_dsp*, %struct.sst_dsp** %9, align 8
  %67 = load %struct.sst_dsp*, %struct.sst_dsp** %9, align 8
  %68 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SST_MEM_DRAM, align 4
  %71 = call i8* @sst_dsp_get_offset(%struct.sst_dsp* %66, i32 %69, i32 %70)
  %72 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %73 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i8* %71, i8** %75, align 8
  %76 = load %struct.sst_dsp*, %struct.sst_dsp** %9, align 8
  %77 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %80 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 8
  %83 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %84 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sst_module*, %struct.sst_module** %10, align 8
  %87 = getelementptr inbounds %struct.sst_module, %struct.sst_module* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.sst_module_runtime*, %struct.sst_module_runtime** %7, align 8
  %90 = getelementptr inbounds %struct.sst_module_runtime, %struct.sst_module_runtime* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %88, i32 %91)
  %93 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %94 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %97 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %102 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_dbg(i32 %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %100, i32 %105)
  %107 = load %struct.sst_hsw*, %struct.sst_hsw** %5, align 8
  %108 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %111 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %6, align 8
  %116 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @dev_dbg(i32 %109, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %114, i32 %119)
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %30, %23
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.sst_dsp* @sst_hsw_get_dsp(%struct.sst_hsw*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @sst_dsp_get_offset(%struct.sst_dsp*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
