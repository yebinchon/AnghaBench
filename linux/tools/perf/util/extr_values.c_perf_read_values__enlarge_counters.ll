; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_values.c_perf_read_values__enlarge_counters.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_values.c_perf_read_values__enlarge_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_read_values = type { i32, i8**, i8**, i32, i8*** }

@.str = private unnamed_addr constant [42 x i8] c"failed to enlarge read_values rawid array\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to enlarge read_values ->values array\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_read_values*)* @perf_read_values__enlarge_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_read_values__enlarge_counters(%struct.perf_read_values* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_read_values*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.perf_read_values* %0, %struct.perf_read_values** %3, align 8
  %10 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %11 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %12, 2
  store i32 %13, i32* %6, align 4
  %14 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %15 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %14, i32 0, i32 1
  %16 = load i8**, i8*** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = call i8** @realloc(i8** %16, i32 %20)
  store i8** %21, i8*** %7, align 8
  %22 = load i8**, i8*** %7, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %106

26:                                               ; preds = %1
  %27 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %28 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %27, i32 0, i32 2
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i8** @realloc(i8** %29, i32 %33)
  store i8** %34, i8*** %4, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %26
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %103

39:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %87, %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %43 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %90

46:                                               ; preds = %40
  %47 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %48 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %47, i32 0, i32 4
  %49 = load i8***, i8**** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8**, i8*** %49, i64 %51
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = call i8** @realloc(i8** %53, i32 %57)
  store i8** %58, i8*** %8, align 8
  %59 = load i8**, i8*** %8, align 8
  %60 = icmp ne i8** %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %46
  %62 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %100

63:                                               ; preds = %46
  %64 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %65 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %76, %63
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i8**, i8*** %8, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  store i8* null, i8** %75, align 8
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %67

79:                                               ; preds = %67
  %80 = load i8**, i8*** %8, align 8
  %81 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %82 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %81, i32 0, i32 4
  %83 = load i8***, i8**** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8**, i8*** %83, i64 %85
  store i8** %80, i8*** %86, align 8
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %40

90:                                               ; preds = %40
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %93 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i8**, i8*** %7, align 8
  %95 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %96 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %95, i32 0, i32 1
  store i8** %94, i8*** %96, align 8
  %97 = load i8**, i8*** %4, align 8
  %98 = load %struct.perf_read_values*, %struct.perf_read_values** %3, align 8
  %99 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %98, i32 0, i32 2
  store i8** %97, i8*** %99, align 8
  store i32 0, i32* %2, align 4
  br label %109

100:                                              ; preds = %61
  %101 = load i8**, i8*** %4, align 8
  %102 = call i32 @free(i8** %101)
  br label %103

103:                                              ; preds = %100, %37
  %104 = load i8**, i8*** %7, align 8
  %105 = call i32 @free(i8** %104)
  br label %106

106:                                              ; preds = %103, %24
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %106, %90
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i8** @realloc(i8**, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
