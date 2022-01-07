; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_core.c_test_cgcore_populated.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_core.c_test_cgcore_populated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"cg_test_a\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"cg_test_a/cg_test_b\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"cg_test_a/cg_test_b/cg_test_c\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cg_test_a/cg_test_b/cg_test_d\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"cgroup.events\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"populated 1\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"populated 0\0A\00", align 1
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgcore_populated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgcore_populated(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %8, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i8* @cg_name(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @cg_name(i8* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = call i8* @cg_name(i8* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i8* @cg_name(i8* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %1
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %22, %19, %1
  br label %101

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @cg_create(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %101

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @cg_create(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %101

39:                                               ; preds = %34
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @cg_create(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %101

44:                                               ; preds = %39
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @cg_create(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %101

49:                                               ; preds = %44
  %50 = load i8*, i8** %6, align 8
  %51 = call i64 @cg_enter_current(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %101

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @cg_read_strcmp(i8* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  br label %101

59:                                               ; preds = %54
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @cg_read_strcmp(i8* %60, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %101

64:                                               ; preds = %59
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @cg_read_strcmp(i8* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %101

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = call i64 @cg_read_strcmp(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %101

74:                                               ; preds = %69
  %75 = load i8*, i8** %2, align 8
  %76 = call i64 @cg_enter_current(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %101

79:                                               ; preds = %74
  %80 = load i8*, i8** %4, align 8
  %81 = call i64 @cg_read_strcmp(i8* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %101

84:                                               ; preds = %79
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @cg_read_strcmp(i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  br label %101

89:                                               ; preds = %84
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @cg_read_strcmp(i8* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %101

94:                                               ; preds = %89
  %95 = load i8*, i8** %7, align 8
  %96 = call i64 @cg_read_strcmp(i8* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %101

99:                                               ; preds = %94
  %100 = load i32, i32* @KSFT_PASS, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %98, %93, %88, %83, %78, %73, %68, %63, %58, %53, %48, %43, %38, %33, %28
  %102 = load i8*, i8** %7, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @cg_destroy(i8* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i8*, i8** %6, align 8
  %109 = icmp ne i8* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i8*, i8** %6, align 8
  %112 = call i32 @cg_destroy(i8* %111)
  br label %113

113:                                              ; preds = %110, %107
  %114 = load i8*, i8** %5, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 @cg_destroy(i8* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i8*, i8** %4, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i8*, i8** %4, align 8
  %124 = call i32 @cg_destroy(i8* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8*, i8** %6, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i8*, i8** %5, align 8
  %131 = call i32 @free(i8* %130)
  %132 = load i8*, i8** %4, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_enter_current(i8*) #1

declare dso_local i64 @cg_read_strcmp(i8*, i8*, i8*) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
