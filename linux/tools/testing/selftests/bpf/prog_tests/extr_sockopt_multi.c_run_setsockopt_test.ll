; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_multi.c_run_setsockopt_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_multi.c_run_setsockopt_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@SOL_IP = common dso_local global i32 0, align 4
@IP_TOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to call setsockopt(IP_TOS)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to call getsockopt(IP_TOS)\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unexpected getsockopt 0x%x != 0x80 without BPF\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"cgroup/setsockopt\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Unexpected getsockopt 0x%x != 0x80 + 0x10\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Unexpected getsockopt 0x%x != 0x80 + 2 * 0x10\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i32, i32, i32)* @run_setsockopt_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_setsockopt_test(%struct.bpf_object* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bpf_object* %0, %struct.bpf_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 128, i32* %10, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SOL_IP, align 4
  %14 = load i32, i32* @IP_TOS, align 4
  %15 = call i32 @setsockopt(i32 %12, i32 %13, i32 %14, i32* %10, i32 1)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %98

20:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SOL_IP, align 4
  %23 = load i32, i32* @IP_TOS, align 4
  %24 = call i32 @getsockopt(i32 %21, i32 %22, i32 %23, i32* %10, i32* %9)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %98

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 128
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %11, align 4
  br label %98

35:                                               ; preds = %29
  %36 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @prog_attach(%struct.bpf_object* %36, i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %98

42:                                               ; preds = %35
  store i32 128, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SOL_IP, align 4
  %45 = load i32, i32* @IP_TOS, align 4
  %46 = call i32 @setsockopt(i32 %43, i32 %44, i32 %45, i32* %10, i32 1)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %98

51:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @SOL_IP, align 4
  %54 = load i32, i32* @IP_TOS, align 4
  %55 = call i32 @getsockopt(i32 %52, i32 %53, i32 %54, i32* %10, i32* %9)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %98

60:                                               ; preds = %51
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 144
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  store i32 -1, i32* %11, align 4
  br label %98

66:                                               ; preds = %60
  %67 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @prog_attach(%struct.bpf_object* %67, i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %98

73:                                               ; preds = %66
  store i32 128, i32* %10, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @SOL_IP, align 4
  %76 = load i32, i32* @IP_TOS, align 4
  %77 = call i32 @setsockopt(i32 %74, i32 %75, i32 %76, i32* %10, i32 1)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %98

82:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @SOL_IP, align 4
  %85 = load i32, i32* @IP_TOS, align 4
  %86 = call i32 @getsockopt(i32 %83, i32 %84, i32 %85, i32* %10, i32* %9)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %98

91:                                               ; preds = %82
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 160
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  store i32 -1, i32* %11, align 4
  br label %98

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %94, %89, %80, %72, %63, %58, %49, %41, %32, %27, %18
  %99 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @prog_detach(%struct.bpf_object* %99, i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @prog_detach(%struct.bpf_object* %102, i32 %103, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %105 = load i32, i32* %11, align 4
  ret i32 %105
}

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @prog_attach(%struct.bpf_object*, i32, i8*) #1

declare dso_local i32 @prog_detach(%struct.bpf_object*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
