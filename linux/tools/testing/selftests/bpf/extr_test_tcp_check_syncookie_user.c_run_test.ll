; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tcp_check_syncookie_user.c_run_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tcp_check_syncookie_user.c_run_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"Can't clear results\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Can't accept connection\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Can't lookup result\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Didn't match syncookie: %u\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Skipping XDP cookie check\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"BPF generated cookie does not match kernel one\00", align 1
@USHRT_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"Unexpected MSS retrieved\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @run_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 1, i64* %11, align 8
  store i64 2, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @bpf_map_update_elem(i32 %16, i64* %10, i64* %13, i32 0)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %94

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @bpf_map_update_elem(i32 %22, i64* %11, i64* %14, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %94

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = call i64 @bpf_map_update_elem(i32 %28, i64* %12, i64* %15, i32 0)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %94

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @connect_to_server(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %94

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @accept(i32 %40, i32* null, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %94

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @bpf_map_lookup_elem(i32 %47, i64* %10, i64* %13)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %94

52:                                               ; preds = %46
  %53 = load i64, i64* %13, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* %13, align 8
  %57 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  br label %94

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @bpf_map_lookup_elem(i32 %59, i64* %11, i64* %14)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %94

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i64, i64* %14, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %95

72:                                               ; preds = %67, %64
  %73 = load i32, i32* %5, align 4
  %74 = call i64 @bpf_map_lookup_elem(i32 %73, i64* %12, i64* %15)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %94

78:                                               ; preds = %72
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %14, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %94

84:                                               ; preds = %78
  %85 = load i64, i64* %15, align 8
  %86 = icmp slt i64 %85, 536
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* @USHRT_MAX, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %87, %84
  %92 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %94

93:                                               ; preds = %87
  br label %95

94:                                               ; preds = %91, %82, %76, %62, %55, %50, %44, %38, %31, %25, %19
  store i32 1, i32* %9, align 4
  br label %95

95:                                               ; preds = %94, %93, %70
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @close(i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @close(i32 %98)
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i64 @bpf_map_update_elem(i32, i64*, i64*, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @connect_to_server(i32) #1

declare dso_local i32 @accept(i32, i32*, i32) #1

declare dso_local i64 @bpf_map_lookup_elem(i32, i64*, i64*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
