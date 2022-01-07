; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_sst_hsw_stream_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32 }
%struct.sst_hsw_stream = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [36 x i8] c"error: stream committed for buffer\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_hsw_stream_buffer(%struct.sst_hsw* %0, %struct.sst_hsw_stream* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sst_hsw*, align 8
  %10 = alloca %struct.sst_hsw_stream*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.sst_hsw* %0, %struct.sst_hsw** %9, align 8
  store %struct.sst_hsw_stream* %1, %struct.sst_hsw_stream** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %16 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %10, align 8
  %17 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %7
  %21 = load %struct.sst_hsw*, %struct.sst_hsw** %9, align 8
  %22 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %55

27:                                               ; preds = %7
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %10, align 8
  %30 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  store i8* %28, i8** %32, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %10, align 8
  %35 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i8* %33, i8** %37, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %10, align 8
  %40 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i8* %38, i8** %42, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %10, align 8
  %45 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i8* %43, i8** %47, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %10, align 8
  %50 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i8* %48, i8** %52, align 8
  %53 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %10, align 8
  %54 = call i32 @trace_hsw_stream_buffer(%struct.sst_hsw_stream* %53)
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %27, %20
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @trace_hsw_stream_buffer(%struct.sst_hsw_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
