; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__add_indexed_event.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_queues__add_indexed_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_queues = type { i32 }
%struct.perf_session = type { i32 }
%union.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@PERF_SAMPLE_MAX_SIZE = common dso_local global i32 0, align 4
@PERF_RECORD_AUXTRACE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auxtrace_queues*, %struct.perf_session*, i64, i64)* @auxtrace_queues__add_indexed_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auxtrace_queues__add_indexed_event(%struct.auxtrace_queues* %0, %struct.perf_session* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.auxtrace_queues*, align 8
  %7 = alloca %struct.perf_session*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.perf_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.auxtrace_queues* %0, %struct.auxtrace_queues** %6, align 8
  store %struct.perf_session* %1, %struct.perf_session** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* @PERF_SAMPLE_MAX_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* @PERF_SAMPLE_MAX_SIZE, align 4
  %22 = call i32 @perf_session__peek_event(%struct.perf_session* %19, i64 %20, i8* %18, i32 %21, %union.perf_event** %10, i32* null)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %68

27:                                               ; preds = %4
  %28 = load %union.perf_event*, %union.perf_event** %10, align 8
  %29 = bitcast %union.perf_event* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PERF_RECORD_AUXTRACE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %27
  %35 = load %union.perf_event*, %union.perf_event** %10, align 8
  %36 = bitcast %union.perf_event* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp ult i64 %39, 4
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = load %union.perf_event*, %union.perf_event** %10, align 8
  %43 = bitcast %union.perf_event* %42 to %struct.TYPE_2__*
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41, %34
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %11, align 4
  br label %66

52:                                               ; preds = %41
  %53 = load %union.perf_event*, %union.perf_event** %10, align 8
  %54 = bitcast %union.perf_event* %53 to %struct.TYPE_2__*
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load %struct.auxtrace_queues*, %struct.auxtrace_queues** %6, align 8
  %61 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %62 = load %union.perf_event*, %union.perf_event** %10, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @auxtrace_queues__add_event(%struct.auxtrace_queues* %60, %struct.perf_session* %61, %union.perf_event* %62, i64 %63, i32* null)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %52, %27
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %68

68:                                               ; preds = %66, %25
  %69 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %69)
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @perf_session__peek_event(%struct.perf_session*, i64, i8*, i32, %union.perf_event**, i32*) #2

declare dso_local i32 @auxtrace_queues__add_event(%struct.auxtrace_queues*, %struct.perf_session*, %union.perf_event*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
