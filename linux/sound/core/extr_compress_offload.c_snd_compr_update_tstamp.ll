; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_update_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_update_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { {}* }
%struct.snd_compr_tstamp = type { i32, i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"dsp consumed till %d total %d bytes\0A\00", align 1
@SND_COMPRESS_PLAYBACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)* @snd_compr_update_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compr_update_tstamp(%struct.snd_compr_stream* %0, %struct.snd_compr_tstamp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_compr_stream*, align 8
  %5 = alloca %struct.snd_compr_tstamp*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %4, align 8
  store %struct.snd_compr_tstamp* %1, %struct.snd_compr_tstamp** %5, align 8
  %6 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %7 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)**
  %11 = load i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)*, i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)** %10, align 8
  %12 = icmp ne i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %18 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)**
  %22 = load i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)*, i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)** %21, align 8
  %23 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %24 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %5, align 8
  %25 = call i32 %22(%struct.snd_compr_stream* %23, %struct.snd_compr_tstamp* %24)
  %26 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %5, align 8
  %27 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %5, align 8
  %30 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %34 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SND_COMPRESS_PLAYBACK, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %16
  %39 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %5, align 8
  %40 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %43 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 %41, i32* %45, align 4
  br label %54

46:                                               ; preds = %16
  %47 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %5, align 8
  %48 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %4, align 8
  %51 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %38
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
