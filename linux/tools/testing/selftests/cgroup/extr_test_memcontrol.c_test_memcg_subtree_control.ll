; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_subtree_control.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_memcontrol.c_test_memcg_subtree_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"memcg_test_0\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"memcg_test_0/memcg_test_1\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"cgroup.subtree_control\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"+memory\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"cgroup.controllers\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"memcg_test_1\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"memcg_test_1/memcg_test_1\00", align 1
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_memcg_subtree_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_memcg_subtree_control(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %10 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i8* @cg_name(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i8* @cg_name(i8* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %1
  br label %96

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @cg_create(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %96

30:                                               ; preds = %25
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @cg_write(i8* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %93

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = call i64 @cg_create(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %93

40:                                               ; preds = %35
  %41 = load i8*, i8** %4, align 8
  %42 = call i64 @cg_read_strstr(i8* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %90

45:                                               ; preds = %40
  %46 = load i8*, i8** %2, align 8
  %47 = call i8* @cg_name(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  store i8* %47, i8** %5, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = call i8* @cg_name(i8* %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52, %45
  br label %85

56:                                               ; preds = %52
  %57 = load i8*, i8** %5, align 8
  %58 = call i64 @cg_create(i8* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %85

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = call i64 @cg_create(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %82

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = trunc i64 %12 to i32
  %69 = call i64 @cg_read(i8* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %14, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %79

72:                                               ; preds = %66
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @cg_read_strstr(i8* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %79

77:                                               ; preds = %72
  %78 = load i32, i32* @KSFT_PASS, align 4
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %77, %76, %71
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @cg_destroy(i8* %80)
  br label %82

82:                                               ; preds = %79, %65
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @cg_destroy(i8* %83)
  br label %85

85:                                               ; preds = %82, %60, %55
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @free(i8* %88)
  br label %90

90:                                               ; preds = %85, %44
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @cg_destroy(i8* %91)
  br label %93

93:                                               ; preds = %90, %39, %34
  %94 = load i8*, i8** %3, align 8
  %95 = call i32 @cg_destroy(i8* %94)
  br label %96

96:                                               ; preds = %93, %29, %24
  %97 = load i8*, i8** %3, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %4, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i32, i32* %7, align 4
  %102 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @cg_name(i8*, i8*) #2

declare dso_local i64 @cg_create(i8*) #2

declare dso_local i64 @cg_write(i8*, i8*, i8*) #2

declare dso_local i64 @cg_read_strstr(i8*, i8*, i8*) #2

declare dso_local i64 @cg_read(i8*, i8*, i8*, i32) #2

declare dso_local i32 @cg_destroy(i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
