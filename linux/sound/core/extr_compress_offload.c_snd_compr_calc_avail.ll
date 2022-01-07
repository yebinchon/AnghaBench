; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_calc_avail.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_calc_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.snd_compr_avail = type { i64, i32 }

@SNDRV_PCM_STATE_SETUP = common dso_local global i64 0, align 8
@SND_COMPRESS_PLAYBACK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"detected init and someone forgot to do a write\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"app wrote %lld, DSP consumed %lld\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"both pointers are same, returning full avail\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"both pointers are same, returning no avail\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ret avail as %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_compr_stream*, %struct.snd_compr_avail*)* @snd_compr_calc_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_compr_calc_avail(%struct.snd_compr_stream* %0, %struct.snd_compr_avail* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca %struct.snd_compr_avail*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store %struct.snd_compr_avail* %1, %struct.snd_compr_avail** %5, align 8
  %6 = load %struct.snd_compr_avail*, %struct.snd_compr_avail** %5, align 8
  %7 = call i32 @memset(%struct.snd_compr_avail* %6, i32 0, i32 16)
  %8 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %9 = load %struct.snd_compr_avail*, %struct.snd_compr_avail** %5, align 8
  %10 = getelementptr inbounds %struct.snd_compr_avail, %struct.snd_compr_avail* %9, i32 0, i32 1
  %11 = call i32 @snd_compr_update_tstamp(%struct.snd_compr_stream* %8, i32* %10)
  %12 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %13 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %20 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STATE_SETUP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %28 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SND_COMPRESS_PLAYBACK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %35 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %3, align 8
  br label %116

39:                                               ; preds = %26, %18, %2
  %40 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %41 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %46 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %44, i64 %49)
  %51 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %52 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %57 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %39
  %63 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %64 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SND_COMPRESS_PLAYBACK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %71 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %3, align 8
  br label %116

75:                                               ; preds = %62
  %76 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %3, align 8
  br label %116

77:                                               ; preds = %39
  %78 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %79 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %84 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %82, %87
  %89 = load %struct.snd_compr_avail*, %struct.snd_compr_avail** %5, align 8
  %90 = getelementptr inbounds %struct.snd_compr_avail, %struct.snd_compr_avail* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %92 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SND_COMPRESS_PLAYBACK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %77
  %97 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %98 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.snd_compr_avail*, %struct.snd_compr_avail** %5, align 8
  %103 = getelementptr inbounds %struct.snd_compr_avail, %struct.snd_compr_avail* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %101, %104
  %106 = load %struct.snd_compr_avail*, %struct.snd_compr_avail** %5, align 8
  %107 = getelementptr inbounds %struct.snd_compr_avail, %struct.snd_compr_avail* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %96, %77
  %109 = load %struct.snd_compr_avail*, %struct.snd_compr_avail** %5, align 8
  %110 = getelementptr inbounds %struct.snd_compr_avail, %struct.snd_compr_avail* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %111)
  %113 = load %struct.snd_compr_avail*, %struct.snd_compr_avail** %5, align 8
  %114 = getelementptr inbounds %struct.snd_compr_avail, %struct.snd_compr_avail* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %3, align 8
  br label %116

116:                                              ; preds = %108, %75, %68, %32
  %117 = load i64, i64* %3, align 8
  ret i64 %117
}

declare dso_local i32 @memset(%struct.snd_compr_avail*, i32, i32) #1

declare dso_local i32 @snd_compr_update_tstamp(%struct.snd_compr_stream*, i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
