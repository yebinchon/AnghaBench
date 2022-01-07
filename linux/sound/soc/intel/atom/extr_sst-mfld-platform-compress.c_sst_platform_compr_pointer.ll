; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-compress.c_sst_platform_compr_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-compress.c_sst_platform_compr_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.snd_compr_stream = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.sst_runtime_stream* }
%struct.sst_runtime_stream = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (i32, i32, %struct.snd_compr_tstamp*)* }
%struct.snd_compr_tstamp = type { i32, i32 }

@sst = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"calc bytes offset/copied bytes as %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_compr_stream*, %struct.snd_compr_tstamp*)* @sst_platform_compr_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_platform_compr_pointer(%struct.snd_compr_stream* %0, %struct.snd_compr_tstamp* %1) #0 {
  %3 = alloca %struct.snd_compr_stream*, align 8
  %4 = alloca %struct.snd_compr_tstamp*, align 8
  %5 = alloca %struct.sst_runtime_stream*, align 8
  store %struct.snd_compr_stream* %0, %struct.snd_compr_stream** %3, align 8
  store %struct.snd_compr_tstamp* %1, %struct.snd_compr_tstamp** %4, align 8
  %6 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %7 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %9, align 8
  store %struct.sst_runtime_stream* %10, %struct.sst_runtime_stream** %5, align 8
  %11 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %5, align 8
  %12 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, %struct.snd_compr_tstamp*)*, i32 (i32, i32, %struct.snd_compr_tstamp*)** %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sst, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sst_runtime_stream*, %struct.sst_runtime_stream** %5, align 8
  %20 = getelementptr inbounds %struct.sst_runtime_stream, %struct.sst_runtime_stream* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %23 = call i32 %15(i32 %18, i32 %21, %struct.snd_compr_tstamp* %22)
  %24 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %25 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_compr_stream*, %struct.snd_compr_stream** %3, align 8
  %28 = getelementptr inbounds %struct.snd_compr_stream, %struct.snd_compr_stream* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = srem i32 %26, %32
  %34 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %35 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.snd_compr_tstamp*, %struct.snd_compr_tstamp** %4, align 8
  %37 = getelementptr inbounds %struct.snd_compr_tstamp, %struct.snd_compr_tstamp* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %38)
  ret i32 0
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
