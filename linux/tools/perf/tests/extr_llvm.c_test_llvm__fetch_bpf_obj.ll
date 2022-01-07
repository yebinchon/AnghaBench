; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/tests/extr_llvm.c_test_llvm__fetch_bpf_obj.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/tests/extr_llvm.c_test_llvm__fetch_bpf_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i32 }

@TEST_FAIL = common dso_local global i32 0, align 4
@__LLVM_TESTCASE_MAX = common dso_local global i32 0, align 4
@bpf_source_table = common dso_local global %struct.TYPE_4__* null, align 8
@verbose = common dso_local global i32 0, align 4
@llvm_param = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"No clang and no verbosive, skip this test\0A\00", align 1
@TEST_SKIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"echo '%s' | %s%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" 2>/dev/null\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"-xc %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@TEST_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to compile test case: '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_llvm__fetch_bpf_obj(i8** %0, i64* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8** %0, i8*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %21 = load i32, i32* @TEST_FAIL, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @__LLVM_TESTCASE_MAX, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @TEST_FAIL, align 4
  store i32 %26, i32* %6, align 4
  br label %127

27:                                               ; preds = %5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bpf_source_table, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %12, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bpf_source_table, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %13, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %27
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bpf_source_table, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32*, i32** %11, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %42, %27
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @verbose, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 2), align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = call i64 (...) @llvm__search_clang()
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %64 = load i32, i32* @TEST_SKIP, align 4
  store i32 %64, i32* %6, align 4
  br label %127

65:                                               ; preds = %59, %56, %53, %50
  %66 = load i32, i32* @verbose, align 4
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* @verbose, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 -1, i32* @verbose, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i8**, i8*** %7, align 8
  store i8* null, i8** %71, align 8
  %72 = load i64*, i64** %8, align 8
  store i64 0, i64* %72, align 8
  %73 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 0), align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %114

76:                                               ; preds = %70
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 1), align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %80, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 1), align 8
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 0), align 8
  %84 = load i32, i32* %19, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %88 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %82, i8* %83, i8* %87)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %114

92:                                               ; preds = %81
  %93 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 1), align 8
  %94 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %114

98:                                               ; preds = %92
  %99 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 0), align 8
  store i8* %99, i8** %14, align 8
  %100 = load i8*, i8** %16, align 8
  store i8* %100, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 0), align 8
  %101 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 1), align 8
  store i8* %101, i8** %15, align 8
  %102 = load i8*, i8** %17, align 8
  store i8* %102, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 1), align 8
  %103 = load i8**, i8*** %7, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = call i32 @llvm__compile_bpf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %103, i64* %104)
  store i32 %105, i32* %18, align 4
  %106 = load i8*, i8** %14, align 8
  store i8* %106, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 0), align 8
  %107 = load i8*, i8** %15, align 8
  store i8* %107, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @llvm_param, i32 0, i32 1), align 8
  %108 = load i32, i32* %19, align 4
  store i32 %108, i32* @verbose, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %114

112:                                              ; preds = %98
  %113 = load i32, i32* @TEST_OK, align 4
  store i32 %113, i32* %20, align 4
  br label %114

114:                                              ; preds = %112, %111, %97, %91, %75
  %115 = load i8*, i8** %16, align 8
  %116 = call i32 @free(i8* %115)
  %117 = load i8*, i8** %17, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* @TEST_OK, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i8*, i8** %13, align 8
  %124 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i8* %123)
  br label %125

125:                                              ; preds = %122, %114
  %126 = load i32, i32* %20, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %125, %62, %25
  %128 = load i32, i32* %6, align 4
  ret i32 %128
}

declare dso_local i64 @llvm__search_clang(...) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @llvm__compile_bpf(i8*, i8**, i64*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
