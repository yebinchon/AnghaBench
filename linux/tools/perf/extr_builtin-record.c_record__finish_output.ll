; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__finish_output.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__finish_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { i32, %struct.TYPE_7__*, i64, i32, i64, %struct.perf_data }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.perf_data = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }

@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.record*)* @record__finish_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record__finish_output(%struct.record* %0) #0 {
  %2 = alloca %struct.record*, align 8
  %3 = alloca %struct.perf_data*, align 8
  %4 = alloca i32, align 4
  store %struct.record* %0, %struct.record** %2, align 8
  %5 = load %struct.record*, %struct.record** %2, align 8
  %6 = getelementptr inbounds %struct.record, %struct.record* %5, i32 0, i32 5
  store %struct.perf_data* %6, %struct.perf_data** %3, align 8
  %7 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %8 = call i32 @perf_data__fd(%struct.perf_data* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %10 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.record*, %struct.record** %2, align 8
  %16 = getelementptr inbounds %struct.record, %struct.record* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.record*, %struct.record** %2, align 8
  %19 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %17
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %22, align 4
  %27 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %28 = call i32 @perf_data__fd(%struct.perf_data* %27)
  %29 = load i32, i32* @SEEK_CUR, align 4
  %30 = call i32 @lseek(i32 %28, i32 0, i32 %29)
  %31 = load %struct.perf_data*, %struct.perf_data** %3, align 8
  %32 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.record*, %struct.record** %2, align 8
  %35 = getelementptr inbounds %struct.record, %struct.record* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %14
  %39 = load %struct.record*, %struct.record** %2, align 8
  %40 = call i32 @process_buildids(%struct.record* %39)
  %41 = load %struct.record*, %struct.record** %2, align 8
  %42 = getelementptr inbounds %struct.record, %struct.record* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load %struct.record*, %struct.record** %2, align 8
  %47 = getelementptr inbounds %struct.record, %struct.record* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = call i32 @dsos__hit_all(%struct.TYPE_7__* %48)
  br label %50

50:                                               ; preds = %45, %38
  br label %51

51:                                               ; preds = %50, %14
  %52 = load %struct.record*, %struct.record** %2, align 8
  %53 = getelementptr inbounds %struct.record, %struct.record* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load %struct.record*, %struct.record** %2, align 8
  %56 = getelementptr inbounds %struct.record, %struct.record* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @perf_session__write_header(%struct.TYPE_7__* %54, i32 %57, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %51, %13
  ret void
}

declare dso_local i32 @perf_data__fd(%struct.perf_data*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @process_buildids(%struct.record*) #1

declare dso_local i32 @dsos__hit_all(%struct.TYPE_7__*) #1

declare dso_local i32 @perf_session__write_header(%struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
