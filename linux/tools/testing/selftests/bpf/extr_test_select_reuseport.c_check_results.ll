; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_check_results.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_check_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NR_RESULTS = common dso_local global i32 0, align 4
@result_map = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"lookup_elem(result_map)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"i:%u err:%d errno:%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@expected_results = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"unexpected result\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" result: [\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c", %u\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"expected: [\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"unexpected result\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"expected_results[%u] != results[%u] bpf_prog_linum:%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_results to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_results() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @NR_RESULTS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %28, %0
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @NR_RESULTS, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32, i32* @result_map, align 4
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %10, i64 %18
  %20 = call i32 @bpf_map_lookup_elem(i32 %16, i32* %3, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @CHECK(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %11

31:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @NR_RESULTS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %10, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** @expected_results, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %40, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %3, align 4
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %32

53:                                               ; preds = %47, %32
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @NR_RESULTS, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 1, i32* %6, align 4
  br label %115

58:                                               ; preds = %53
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %61 = getelementptr inbounds i32, i32* %10, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %74, %58
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @NR_RESULTS, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %10, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %64

77:                                               ; preds = %64
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %80 = load i32*, i32** @expected_results, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %95, %77
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @NR_RESULTS, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i32*, i32** @expected_results, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %84

98:                                               ; preds = %84
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %100 = load i32*, i32** @expected_results, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %10, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %104, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 (...) @get_linum()
  %114 = call i32 @CHECK(i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %111, i32 %112, i32 %113)
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %98, %57
  %116 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %6, align 4
  switch i32 %117, label %119 [
    i32 0, label %118
    i32 1, label %118
  ]

118:                                              ; preds = %115, %115
  ret void

119:                                              ; preds = %115
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, i32*) #2

declare dso_local i32 @CHECK(i32, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @get_linum(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
