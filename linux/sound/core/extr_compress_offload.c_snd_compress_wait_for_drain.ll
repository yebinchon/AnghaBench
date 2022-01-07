; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compress_wait_for_drain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compress_wait_for_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@SNDRV_PCM_STATE_DRAINING = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"wait aborted by a signal\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"wait for drain failed with %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @snd_compress_wait_for_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compress_wait_for_drain(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca %struct.snd_compr_stream*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %2, align 8
  %4 = load i64, i64* @SNDRV_PCM_STATE_DRAINING, align 8
  %5 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %6 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 %4, i64* %8, align 8
  %9 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i32 @mutex_unlock(i32* %12)
  %14 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %15 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %20 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SNDRV_PCM_STATE_DRAINING, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @wait_event_interruptible(i32 %18, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %41

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %41

41:                                               ; preds = %40, %32
  %42 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %43 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = call i32 @wake_up(i32* %45)
  %47 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %2, align 8
  %48 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
