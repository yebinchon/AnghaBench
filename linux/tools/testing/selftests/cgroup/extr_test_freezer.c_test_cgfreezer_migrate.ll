; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_migrate.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cg_test_migrate_A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"cg_test_migrate_B\00", align 1
@child_fn = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgfreezer_migrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgfreezer_migrate(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [2 x i8*], align 16
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %6, i32* %3, align 4
  %7 = bitcast [2 x i8*]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @cg_name(i8* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  store i8* %9, i8** %10, align 16
  %11 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %12 = load i8*, i8** %11, align 16
  %13 = icmp ne i8* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %102

15:                                               ; preds = %1
  %16 = load i8*, i8** %2, align 8
  %17 = call i8* @cg_name(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  store i8* %17, i8** %18, align 8
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %102

23:                                               ; preds = %15
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %25 = load i8*, i8** %24, align 16
  %26 = call i64 @cg_create(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %102

29:                                               ; preds = %23
  %30 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @cg_create(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %102

35:                                               ; preds = %29
  %36 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %37 = load i8*, i8** %36, align 16
  %38 = load i32, i32* @child_fn, align 4
  %39 = call i32 @cg_run_nowait(i8* %37, i32 %38, i32* null)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %102

43:                                               ; preds = %35
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %45 = load i8*, i8** %44, align 16
  %46 = call i64 @cg_wait_for_proc_count(i8* %45, i32 1)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %102

49:                                               ; preds = %43
  %50 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @cg_freeze_wait(i8* %51, i32 1)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %102

55:                                               ; preds = %49
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @cg_enter_and_wait_for_frozen(i8* %57, i32 %58, i32 1)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %102

62:                                               ; preds = %55
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %64 = load i8*, i8** %63, align 16
  %65 = call i64 @cg_check_frozen(i8* %64, i32 0)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %102

68:                                               ; preds = %62
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %70 = load i8*, i8** %69, align 16
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @cg_enter_and_wait_for_frozen(i8* %70, i32 %71, i32 0)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %102

75:                                               ; preds = %68
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = call i64 @cg_check_frozen(i8* %77, i32 1)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %102

81:                                               ; preds = %75
  %82 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %83 = load i8*, i8** %82, align 16
  %84 = call i64 @cg_freeze_wait(i8* %83, i32 1)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %102

87:                                               ; preds = %81
  %88 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i64 @cg_enter_and_wait_for_frozen(i8* %89, i32 %90, i32 1)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %102

94:                                               ; preds = %87
  %95 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %96 = load i8*, i8** %95, align 16
  %97 = call i64 @cg_check_frozen(i8* %96, i32 1)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %102

100:                                              ; preds = %94
  %101 = load i32, i32* @KSFT_PASS, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %99, %93, %86, %80, %74, %67, %61, %54, %48, %42, %34, %28, %22, %14
  %103 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %104 = load i8*, i8** %103, align 16
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %108 = load i8*, i8** %107, align 16
  %109 = call i32 @cg_destroy(i8* %108)
  br label %110

110:                                              ; preds = %106, %102
  %111 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %112 = load i8*, i8** %111, align 16
  %113 = call i32 @free(i8* %112)
  %114 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @cg_destroy(i8* %119)
  br label %121

121:                                              ; preds = %117, %110
  %122 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @cg_name(i8*, i8*) #2

declare dso_local i64 @cg_create(i8*) #2

declare dso_local i32 @cg_run_nowait(i8*, i32, i32*) #2

declare dso_local i64 @cg_wait_for_proc_count(i8*, i32) #2

declare dso_local i64 @cg_freeze_wait(i8*, i32) #2

declare dso_local i64 @cg_enter_and_wait_for_frozen(i8*, i32, i32) #2

declare dso_local i64 @cg_check_frozen(i8*, i32) #2

declare dso_local i32 @cg_destroy(i8*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
