; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_core.c_test_cgcore_invalid_domain.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_core.c_test_cgcore_invalid_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cg_test_grandparent\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"cg_test_grandparent/cg_test_parent\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cg_test_grandparent/cg_test_parent/cg_test_child\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cgroup.type\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"threaded\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"domain invalid\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i64 0, align 8
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgcore_invalid_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgcore_invalid_domain(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %7, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @cg_name(i8* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @cg_name(i8* %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* @cg_name(i8* %12, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %16, %1
  br label %60

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @cg_create(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %60

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @cg_create(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %60

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @cg_create(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %60

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = call i64 @cg_write(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %60

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = call i64 @cg_read_strcmp(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %60

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @cg_enter_current(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %60

53:                                               ; preds = %48
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EOPNOTSUPP, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @KSFT_PASS, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %57, %52, %47, %42, %37, %32, %27, %22
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @cg_enter_current(i8* %61)
  %63 = load i8*, i8** %6, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @cg_destroy(i8* %66)
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i8*, i8** %5, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @cg_destroy(i8* %72)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i8*, i8** %4, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8*, i8** %4, align 8
  %79 = call i32 @cg_destroy(i8* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @free(i8* %81)
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i64 @cg_write(i8*, i8*, i8*) #1

declare dso_local i64 @cg_read_strcmp(i8*, i8*, i8*) #1

declare dso_local i32 @cg_enter_current(i8*) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
