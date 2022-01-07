; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/lib/extr_evlist.c_perf_evlist__id_add_fd.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/lib/extr_evlist.c_perf_evlist__id_add_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_evlist = type { i32 }
%struct.perf_evsel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PERF_EVENT_IOC_ID = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i64 0, align 8
@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4
@PERF_FORMAT_ID = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_ENABLED = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_evlist__id_add_fd(%struct.perf_evlist* %0, %struct.perf_evsel* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_evlist*, align 8
  %8 = alloca %struct.perf_evsel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.perf_evlist* %0, %struct.perf_evlist** %7, align 8
  store %struct.perf_evsel* %1, %struct.perf_evsel** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 16, i1 false)
  store i32 1, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @PERF_EVENT_IOC_ID, align 4
  %19 = call i32 @ioctl(i32 %17, i32 %18, i32* %14)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  br label %76

23:                                               ; preds = %5
  %24 = load i64, i64* @errno, align 8
  %25 = load i64, i64* @ENOTTY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %83

28:                                               ; preds = %23
  %29 = load %struct.perf_evlist*, %struct.perf_evlist** %7, align 8
  %30 = call i32 @perf_evlist__read_format(%struct.perf_evlist* %29)
  %31 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %83

35:                                               ; preds = %28
  %36 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %37 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PERF_FORMAT_ID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = bitcast [4 x i32]* %12 to i32**
  %46 = call i32 @read(i32 %44, i32** %45, i32 16)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %35
  store i32 -1, i32* %6, align 4
  br label %83

49:                                               ; preds = %43
  %50 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %51 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %57, %49
  %61 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %62 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load i32, i32* %13, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %68, %60
  %72 = load i32, i32* %13, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %71, %22
  %77 = load %struct.perf_evlist*, %struct.perf_evlist** %7, align 8
  %78 = load %struct.perf_evsel*, %struct.perf_evsel** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @perf_evlist__id_add(%struct.perf_evlist* %77, %struct.perf_evsel* %78, i32 %79, i32 %80, i32 %81)
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %76, %48, %34, %27
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #2

declare dso_local i32 @perf_evlist__read_format(%struct.perf_evlist*) #2

declare dso_local i32 @read(i32, i32**, i32) #2

declare dso_local i32 @perf_evlist__id_add(%struct.perf_evlist*, %struct.perf_evsel*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
