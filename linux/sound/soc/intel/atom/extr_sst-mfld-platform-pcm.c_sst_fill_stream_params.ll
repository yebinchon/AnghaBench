; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_fill_stream_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_fill_stream_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.sst_dev_stream_map* }
%struct.sst_dev_stream_map = type { i32, i32 }
%struct.snd_sst_params = type { i32, i8*, i32, i32, i32 }
%struct.snd_pcm_substream = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.snd_compr_stream = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SST_STREAM_TYPE_MUSIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_fill_stream_params(i8* %0, %struct.sst_data* %1, %struct.snd_sst_params* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sst_data*, align 8
  %8 = alloca %struct.snd_sst_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sst_dev_stream_map*, align 8
  %13 = alloca %struct.snd_pcm_substream*, align 8
  %14 = alloca %struct.snd_compr_stream*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.sst_data* %1, %struct.sst_data** %7, align 8
  store %struct.snd_sst_params* %2, %struct.snd_sst_params** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.snd_pcm_substream* null, %struct.snd_pcm_substream** %13, align 8
  store %struct.snd_compr_stream* null, %struct.snd_compr_stream** %14, align 8
  %15 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %16 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.sst_dev_stream_map*, %struct.sst_dev_stream_map** %18, align 8
  store %struct.sst_dev_stream_map* %19, %struct.sst_dev_stream_map** %12, align 8
  %20 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %21 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i8*, i8** %6, align 8
  %29 = bitcast i8* %28 to %struct.snd_compr_stream*
  store %struct.snd_compr_stream* %29, %struct.snd_compr_stream** %14, align 8
  br label %33

30:                                               ; preds = %4
  %31 = load i8*, i8** %6, align 8
  %32 = bitcast i8* %31 to %struct.snd_pcm_substream*
  store %struct.snd_pcm_substream* %32, %struct.snd_pcm_substream** %13, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @SST_STREAM_TYPE_MUSIC, align 4
  %35 = load %struct.snd_sst_params*, %struct.snd_sst_params** %8, align 8
  %36 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %38 = icmp ne %struct.snd_pcm_substream* %37, null
  br i1 %38, label %39, label %85

39:                                               ; preds = %33
  %40 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %41 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %46 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.sst_dev_stream_map*, %struct.sst_dev_stream_map** %12, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @sst_get_stream_mapping(i32 %44, i32 %47, i64 %50, %struct.sst_dev_stream_map* %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %39
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %132

59:                                               ; preds = %39
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.snd_sst_params*, %struct.snd_sst_params** %8, align 8
  %62 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.sst_dev_stream_map*, %struct.sst_dev_stream_map** %12, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %63, i64 %65
  %67 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_sst_params*, %struct.snd_sst_params** %8, align 8
  %70 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sst_dev_stream_map*, %struct.sst_dev_stream_map** %12, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %71, i64 %73
  %75 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.snd_sst_params*, %struct.snd_sst_params** %8, align 8
  %78 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %13, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.snd_sst_params*, %struct.snd_sst_params** %8, align 8
  %84 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %59, %33
  %86 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %14, align 8
  %87 = icmp ne %struct.snd_compr_stream* %86, null
  br i1 %87, label %88, label %131

88:                                               ; preds = %85
  %89 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %14, align 8
  %90 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %14, align 8
  %95 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.sst_dev_stream_map*, %struct.sst_dev_stream_map** %12, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @sst_get_stream_mapping(i32 %93, i32 0, i64 %96, %struct.sst_dev_stream_map* %97, i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %88
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %132

105:                                              ; preds = %88
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.snd_sst_params*, %struct.snd_sst_params** %8, align 8
  %108 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.sst_dev_stream_map*, %struct.sst_dev_stream_map** %12, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %109, i64 %111
  %113 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.snd_sst_params*, %struct.snd_sst_params** %8, align 8
  %116 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.sst_dev_stream_map*, %struct.sst_dev_stream_map** %12, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %117, i64 %119
  %121 = getelementptr inbounds %struct.sst_dev_stream_map, %struct.sst_dev_stream_map* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.snd_sst_params*, %struct.snd_sst_params** %8, align 8
  %124 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %123, i32 0, i32 2
  store i32 %122, i32* %124, align 8
  %125 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %14, align 8
  %126 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = load %struct.snd_sst_params*, %struct.snd_sst_params** %8, align 8
  %130 = getelementptr inbounds %struct.snd_sst_params, %struct.snd_sst_params* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %105, %85
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %102, %56
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @sst_get_stream_mapping(i32, i32, i64, %struct.sst_dev_stream_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
