; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_perf_event__process_feature.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_header.c_perf_event__process_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32 (%struct.feat_fd*, i32)*, i32, i64 (%struct.feat_fd*, i32*)* }
%struct.feat_fd = type { i32*, i64, i8*, i32 }
%struct.perf_session = type { i32, %struct.perf_tool* }
%struct.perf_tool = type { i64 }
%union.perf_event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.perf_record_header_feature = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PERF_RECORD_HEADER_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid record type %d in pipe-mode\0A\00", align 1
@HEADER_RESERVED = common dso_local global i64 0, align 8
@HEADER_LAST_FEATURE = common dso_local global i64 0, align 8
@feat_ops = common dso_local global %struct.TYPE_6__* null, align 8
@SHOW_FEAT_HEADER_FULL_INFO = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"# %s info available, use -I to display\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perf_event__process_feature(%struct.perf_session* %0, %union.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca %struct.perf_tool*, align 8
  %7 = alloca %struct.feat_fd, align 8
  %8 = alloca %struct.perf_record_header_feature*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.perf_session* %0, %struct.perf_session** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  %11 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %12 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %11, i32 0, i32 1
  %13 = load %struct.perf_tool*, %struct.perf_tool** %12, align 8
  store %struct.perf_tool* %13, %struct.perf_tool** %6, align 8
  %14 = bitcast %struct.feat_fd* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 32, i1 false)
  %15 = load %union.perf_event*, %union.perf_event** %5, align 8
  %16 = bitcast %union.perf_event* %15 to %struct.perf_record_header_feature*
  store %struct.perf_record_header_feature* %16, %struct.perf_record_header_feature** %8, align 8
  %17 = load %struct.perf_record_header_feature*, %struct.perf_record_header_feature** %8, align 8
  %18 = getelementptr inbounds %struct.perf_record_header_feature, %struct.perf_record_header_feature* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.perf_record_header_feature*, %struct.perf_record_header_feature** %8, align 8
  %22 = getelementptr inbounds %struct.perf_record_header_feature, %struct.perf_record_header_feature* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PERF_RECORD_HEADER_MAX, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %3, align 4
  br label %118

33:                                               ; preds = %26
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @HEADER_RESERVED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @HEADER_LAST_FEATURE, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @pr_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %3, align 4
  br label %118

44:                                               ; preds = %37
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @feat_ops, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  %49 = load i64 (%struct.feat_fd*, i32*)*, i64 (%struct.feat_fd*, i32*)** %48, align 8
  %50 = icmp ne i64 (%struct.feat_fd*, i32*)* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %118

52:                                               ; preds = %44
  %53 = load %struct.perf_record_header_feature*, %struct.perf_record_header_feature** %8, align 8
  %54 = getelementptr inbounds %struct.perf_record_header_feature, %struct.perf_record_header_feature* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %7, i32 0, i32 2
  store i8* %56, i8** %57, align 8
  %58 = load %union.perf_event*, %union.perf_event** %5, align 8
  %59 = bitcast %union.perf_event* %58 to %struct.TYPE_5__*
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, 24
  %63 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %7, i32 0, i32 1
  store i64 %62, i64* %63, align 8
  %64 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %65 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.feat_fd, %struct.feat_fd* %7, i32 0, i32 0
  store i32* %65, i32** %66, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @feat_ops, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i64 (%struct.feat_fd*, i32*)*, i64 (%struct.feat_fd*, i32*)** %70, align 8
  %72 = call i64 %71(%struct.feat_fd* %7, i32* null)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %118

75:                                               ; preds = %52
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @feat_ops, align 8
  %77 = load i64, i64* %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32 (%struct.feat_fd*, i32)*, i32 (%struct.feat_fd*, i32)** %79, align 8
  %81 = icmp ne i32 (%struct.feat_fd*, i32)* %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %84 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82, %75
  store i32 0, i32* %3, align 4
  br label %118

88:                                               ; preds = %82
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @feat_ops, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %88
  %96 = load %struct.perf_tool*, %struct.perf_tool** %6, align 8
  %97 = getelementptr inbounds %struct.perf_tool, %struct.perf_tool* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SHOW_FEAT_HEADER_FULL_INFO, align 8
  %100 = icmp sge i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95, %88
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @feat_ops, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32 (%struct.feat_fd*, i32)*, i32 (%struct.feat_fd*, i32)** %105, align 8
  %107 = load i32, i32* @stdout, align 4
  %108 = call i32 %106(%struct.feat_fd* %7, i32 %107)
  br label %117

109:                                              ; preds = %95
  %110 = load i32, i32* @stdout, align 4
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @feat_ops, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %109, %101
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %87, %74, %51, %41, %30
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_warning(i8*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
