; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_multi.c_run_getsockopt_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/prog_tests/extr_sockopt_multi.c_run_getsockopt_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_object = type { i32 }

@SOL_IP = common dso_local global i32 0, align 4
@IP_TOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to call setsockopt(IP_TOS)\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to call getsockopt(IP_TOS)\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Unexpected getsockopt 0x%x != 0x80 without BPF\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"cgroup/getsockopt/child\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Unexpected getsockopt 0x%x != 0x90\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cgroup/getsockopt/parent\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Unexpected getsockopt 0x%x != 0xA0\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Unexpected success from getsockopt(IP_TOS)\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to detach child program\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_object*, i32, i32, i32)* @run_getsockopt_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_getsockopt_test(%struct.bpf_object* %0, i32 %1, i32 %2, i32 %3) #0 {
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
  br label %138

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
  br label %138

29:                                               ; preds = %20
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 128
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 -1, i32* %11, align 4
  br label %138

35:                                               ; preds = %29
  %36 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @prog_attach(%struct.bpf_object* %36, i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %138

42:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SOL_IP, align 4
  %45 = load i32, i32* @IP_TOS, align 4
  %46 = call i32 @getsockopt(i32 %43, i32 %44, i32 %45, i32* %10, i32* %9)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %138

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 144
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %55)
  store i32 -1, i32* %11, align 4
  br label %138

57:                                               ; preds = %51
  %58 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @prog_attach(%struct.bpf_object* %58, i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %138

64:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SOL_IP, align 4
  %67 = load i32, i32* @IP_TOS, align 4
  %68 = call i32 @getsockopt(i32 %65, i32 %66, i32 %67, i32* %10, i32* %9)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %138

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 160
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %10, align 4
  %78 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  store i32 -1, i32* %11, align 4
  br label %138

79:                                               ; preds = %73
  store i32 64, i32* %10, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @SOL_IP, align 4
  %82 = load i32, i32* @IP_TOS, align 4
  %83 = call i32 @setsockopt(i32 %80, i32 %81, i32 %82, i32* %10, i32 1)
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %138

87:                                               ; preds = %79
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @SOL_IP, align 4
  %90 = load i32, i32* @IP_TOS, align 4
  %91 = call i32 @getsockopt(i32 %88, i32 %89, i32 %90, i32* %10, i32* %9)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %138

96:                                               ; preds = %87
  %97 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @prog_detach(%struct.bpf_object* %97, i32 %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %138

104:                                              ; preds = %96
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @SOL_IP, align 4
  %107 = load i32, i32* @IP_TOS, align 4
  %108 = call i32 @getsockopt(i32 %105, i32 %106, i32 %107, i32* %10, i32* %9)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %104
  %112 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %138

113:                                              ; preds = %104
  store i32 144, i32* %10, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @SOL_IP, align 4
  %116 = load i32, i32* @IP_TOS, align 4
  %117 = call i32 @setsockopt(i32 %114, i32 %115, i32 %116, i32* %10, i32 1)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %138

122:                                              ; preds = %113
  store i32 0, i32* %10, align 4
  store i32 1, i32* %9, align 4
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @SOL_IP, align 4
  %125 = load i32, i32* @IP_TOS, align 4
  %126 = call i32 @getsockopt(i32 %123, i32 %124, i32 %125, i32* %10, i32* %9)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %138

131:                                              ; preds = %122
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 160
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* %10, align 4
  %136 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  store i32 -1, i32* %11, align 4
  br label %138

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %137, %134, %129, %120, %111, %102, %94, %85, %76, %71, %63, %54, %49, %41, %32, %27, %18
  %139 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @prog_detach(%struct.bpf_object* %139, i32 %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %142 = load %struct.bpf_object*, %struct.bpf_object** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @prog_detach(%struct.bpf_object* %142, i32 %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %145 = load i32, i32* %11, align 4
  ret i32 %145
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
