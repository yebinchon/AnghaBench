; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-compress.c_sst_platform_compr_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-compress.c_sst_platform_compr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32)* }
%struct.snd_compr_stream = type { %struct.snd_compr_runtime* }
%struct.snd_compr_runtime = type { %struct.sst_runtime_stream* }
%struct.sst_runtime_stream = type { i64, %struct.TYPE_6__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sst = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"no device available to run\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SST_PLATFORM_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*)* @sst_platform_compr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_compr_open(%struct.snd_compr_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_compr_runtime*, align 8
  %6 = alloca %struct.sst_runtime_stream*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %8 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %7, i32 0, i32 0
  %9 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %8, align 8
  store %struct.snd_compr_runtime* %9, %struct.snd_compr_runtime** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sst_runtime_stream* @kzalloc(i32 24, i32 %10)
  store %struct.sst_runtime_stream* %11, %struct.sst_runtime_stream** %6, align 8
  %12 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %13 = icmp ne %struct.sst_runtime_stream* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %64

17:                                               ; preds = %1
  %18 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %19 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %18, i32 0, i32 2
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sst, align 8
  %22 = icmp ne %struct.TYPE_8__* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sst, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @try_module_get(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %23, %17
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %60

37:                                               ; preds = %23
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sst, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %42 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %41, i32 0, i32 1
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %44 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sst, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sst, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i32 %49(%struct.TYPE_7__* %52, i32 1)
  %54 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %55 = load i32, i32* @SST_PLATFORM_INIT, align 4
  %56 = call i32 @sst_set_stream_status(%struct.sst_runtime_stream* %54, i32 %55)
  %57 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %58 = load %struct.snd_compr_runtime*, %struct.snd_compr_runtime** %5, align 8
  %59 = getelementptr inbounds %struct.snd_compr_runtime, %struct.snd_compr_runtime* %58, i32 0, i32 0
  store %struct.sst_runtime_stream* %57, %struct.sst_runtime_stream** %59, align 8
  store i32 0, i32* %2, align 4
  br label %64

60:                                               ; preds = %33
  %61 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %6, align 8
  %62 = call i32 @kfree(%struct.sst_runtime_stream* %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %37, %14
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.sst_runtime_stream* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sst_set_stream_status(%struct.sst_runtime_stream*, i32) #1

declare dso_local i32 @kfree(%struct.sst_runtime_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
