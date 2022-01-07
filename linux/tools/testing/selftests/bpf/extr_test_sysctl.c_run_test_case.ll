; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sysctl.c_run_test_case.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sysctl.c_run_test_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_test = type { i32, i8*, i8*, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Test case: %s .. \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/proc/sys/%s\00", align 1
@LOAD_REJECT = common dso_local global i64 0, align 8
@BPF_F_ALLOW_OVERRIDE = common dso_local global i32 0, align 4
@ATTACH_REJECT = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@OP_EPERM = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Unexpected success\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"FAIL\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sysctl_test*)* @run_test_case to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_test_case(i32 %0, %struct.sysctl_test* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_test*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.sysctl_test* %1, %struct.sysctl_test** %4, align 8
  %9 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %10 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %13 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %17 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %18 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @snprintf(i8* %16, i32 128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %23 = call i32 @load_sysctl_prog(%struct.sysctl_test* %21, i8* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %28 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LOAD_REJECT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %76

33:                                               ; preds = %26
  br label %75

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @BPF_F_ALLOW_OVERRIDE, align 4
  %39 = call i32 @bpf_prog_attach(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %43 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ATTACH_REJECT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %76

48:                                               ; preds = %41
  br label %75

49:                                               ; preds = %34
  store i64 0, i64* @errno, align 8
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %51 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %52 = call i32 @access_sysctl(i8* %50, %struct.sysctl_test* %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %56 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @OP_EPERM, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EPERM, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %76

65:                                               ; preds = %60, %54
  br label %75

66:                                               ; preds = %49
  %67 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %68 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = call i32 @log_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %75

74:                                               ; preds = %66
  br label %76

75:                                               ; preds = %72, %65, %48, %33
  store i32 -1, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %74, %64, %47, %32
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, -1
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @bpf_prog_detach(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %90 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @load_sysctl_prog(%struct.sysctl_test*, i8*) #1

declare dso_local i32 @bpf_prog_attach(i32, i32, i32, i32) #1

declare dso_local i32 @access_sysctl(i8*, %struct.sysctl_test*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @bpf_prog_detach(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
