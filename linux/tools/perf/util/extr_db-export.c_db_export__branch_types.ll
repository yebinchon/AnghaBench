; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__branch_types.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_db-export.c_db_export__branch_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }
%struct.db_export = type { i32 }

@branch_types = common dso_local global %struct.TYPE_2__* null, align 8
@PERF_IP_FLAG_BRANCH = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TRACE_BEGIN = common dso_local global i32 0, align 4
@PERF_IP_FLAG_TRACE_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"trace begin / %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s / trace end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_export__branch_types(%struct.db_export* %0) #0 {
  %2 = alloca %struct.db_export*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  store %struct.db_export* %0, %struct.db_export** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @branch_types, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %8
  %17 = load %struct.db_export*, %struct.db_export** %2, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @branch_types, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @branch_types, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @db_export__branch_type(%struct.db_export* %17, i32 %23, i8* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %38

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %8

38:                                               ; preds = %33, %8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %98, %38
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @branch_types, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %101

47:                                               ; preds = %39
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @branch_types, align 8
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %5, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @branch_types, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PERF_IP_FLAG_BRANCH, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %47
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @PERF_IP_FLAG_TRACE_BEGIN, align 4
  %66 = load i32, i32* @PERF_IP_FLAG_TRACE_END, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63, %47
  br label %98

71:                                               ; preds = %63
  %72 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @snprintf(i8* %72, i32 64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %73)
  %75 = load %struct.db_export*, %struct.db_export** %2, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @PERF_IP_FLAG_TRACE_BEGIN, align 4
  %78 = or i32 %76, %77
  %79 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %80 = call i32 @db_export__branch_type(%struct.db_export* %75, i32 %78, i8* %79)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %101

84:                                               ; preds = %71
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @snprintf(i8* %85, i32 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  %88 = load %struct.db_export*, %struct.db_export** %2, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @PERF_IP_FLAG_TRACE_END, align 4
  %91 = or i32 %89, %90
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %93 = call i32 @db_export__branch_type(%struct.db_export* %88, i32 %91, i8* %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %101

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %70
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  br label %39

101:                                              ; preds = %96, %83, %39
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @db_export__branch_type(%struct.db_export*, i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
