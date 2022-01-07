; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__init_features.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-record.c_record__init_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.TYPE_6__, %struct.TYPE_5__*, i64, %struct.perf_session* }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.perf_session = type { i32 }

@HEADER_FIRST_FEATURE = common dso_local global i32 0, align 4
@HEADER_LAST_FEATURE = common dso_local global i32 0, align 4
@HEADER_BUILD_ID = common dso_local global i32 0, align 4
@HEADER_TRACING_DATA = common dso_local global i32 0, align 4
@HEADER_BRANCH_STACK = common dso_local global i32 0, align 4
@HEADER_AUXTRACE = common dso_local global i32 0, align 4
@HEADER_CLOCKID = common dso_local global i32 0, align 4
@HEADER_DIR_FORMAT = common dso_local global i32 0, align 4
@HEADER_COMPRESSED = common dso_local global i32 0, align 4
@HEADER_STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.record*)* @record__init_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @record__init_features(%struct.record* %0) #0 {
  %2 = alloca %struct.record*, align 8
  %3 = alloca %struct.perf_session*, align 8
  %4 = alloca i32, align 4
  store %struct.record* %0, %struct.record** %2, align 8
  %5 = load %struct.record*, %struct.record** %2, align 8
  %6 = getelementptr inbounds %struct.record, %struct.record* %5, i32 0, i32 3
  %7 = load %struct.perf_session*, %struct.perf_session** %6, align 8
  store %struct.perf_session* %7, %struct.perf_session** %3, align 8
  %8 = load i32, i32* @HEADER_FIRST_FEATURE, align 4
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %18, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @HEADER_LAST_FEATURE, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %15 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @perf_header__set_feat(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %9

21:                                               ; preds = %9
  %22 = load %struct.record*, %struct.record** %2, align 8
  %23 = getelementptr inbounds %struct.record, %struct.record* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %28 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %27, i32 0, i32 0
  %29 = load i32, i32* @HEADER_BUILD_ID, align 4
  %30 = call i32 @perf_header__clear_feat(i32* %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.record*, %struct.record** %2, align 8
  %33 = getelementptr inbounds %struct.record, %struct.record* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @have_tracepoints(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %41 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %40, i32 0, i32 0
  %42 = load i32, i32* @HEADER_TRACING_DATA, align 4
  %43 = call i32 @perf_header__clear_feat(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %31
  %45 = load %struct.record*, %struct.record** %2, align 8
  %46 = getelementptr inbounds %struct.record, %struct.record* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %44
  %51 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %52 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %51, i32 0, i32 0
  %53 = load i32, i32* @HEADER_BRANCH_STACK, align 4
  %54 = call i32 @perf_header__clear_feat(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %44
  %56 = load %struct.record*, %struct.record** %2, align 8
  %57 = getelementptr inbounds %struct.record, %struct.record* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %63 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %62, i32 0, i32 0
  %64 = load i32, i32* @HEADER_AUXTRACE, align 4
  %65 = call i32 @perf_header__clear_feat(i32* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %55
  %67 = load %struct.record*, %struct.record** %2, align 8
  %68 = getelementptr inbounds %struct.record, %struct.record* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.record*, %struct.record** %2, align 8
  %74 = getelementptr inbounds %struct.record, %struct.record* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %72, %66
  %79 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %80 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %79, i32 0, i32 0
  %81 = load i32, i32* @HEADER_CLOCKID, align 4
  %82 = call i32 @perf_header__clear_feat(i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %72
  %84 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %85 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %84, i32 0, i32 0
  %86 = load i32, i32* @HEADER_DIR_FORMAT, align 4
  %87 = call i32 @perf_header__clear_feat(i32* %85, i32 %86)
  %88 = load %struct.record*, %struct.record** %2, align 8
  %89 = call i32 @record__comp_enabled(%struct.record* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %83
  %92 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %93 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %92, i32 0, i32 0
  %94 = load i32, i32* @HEADER_COMPRESSED, align 4
  %95 = call i32 @perf_header__clear_feat(i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %83
  %97 = load %struct.perf_session*, %struct.perf_session** %3, align 8
  %98 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %97, i32 0, i32 0
  %99 = load i32, i32* @HEADER_STAT, align 4
  %100 = call i32 @perf_header__clear_feat(i32* %98, i32 %99)
  ret void
}

declare dso_local i32 @perf_header__set_feat(i32*, i32) #1

declare dso_local i32 @perf_header__clear_feat(i32*, i32) #1

declare dso_local i32 @have_tracepoints(i32*) #1

declare dso_local i32 @record__comp_enabled(%struct.record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
