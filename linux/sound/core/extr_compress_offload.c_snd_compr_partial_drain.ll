; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_partial_drain.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_compress_offload.c_snd_compr_partial_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_compr_stream = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.snd_compr_stream*, i32)* }

@EPERM = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SND_COMPRESS_CAPTURE = common dso_local global i64 0, align 8
@SND_COMPR_TRIGGER_PARTIAL_DRAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Partial drain returned failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @snd_compr_partial_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_compr_partial_drain(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  %5 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %6 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %16 [
    i32 132, label %10
    i32 129, label %10
    i32 130, label %10
    i32 131, label %10
    i32 128, label %13
  ]

10:                                               ; preds = %1, %1, %1, %1
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load i32, i32* @EPIPE, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %19 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SND_COMPRESS_CAPTURE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %17
  %27 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %58

34:                                               ; preds = %26
  %35 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %36 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.snd_compr_stream*, i32)*, i32 (%struct.snd_compr_stream*, i32)** %38, align 8
  %40 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %41 = load i32, i32* @SND_COMPR_TRIGGER_PARTIAL_DRAIN, align 4
  %42 = call i32 %39(%struct.snd_compr_stream* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %48 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i32 @wake_up(i32* %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %34
  %54 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %55 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %57 = call i32 @snd_compress_wait_for_drain(%struct.snd_compr_stream* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %53, %45, %31, %23, %13, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @snd_compress_wait_for_drain(%struct.snd_compr_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
