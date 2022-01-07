; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sysctl.c_load_sysctl_prog_insns.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sysctl.c_load_sysctl_prog_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_test = type { i64, i64, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }
%struct.bpf_load_program_attr = type { i8*, %struct.bpf_insn*, i32, i32 }

@BPF_PROG_TYPE_CGROUP_SYSCTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"open(%s) failed\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"read(%s) failed\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@BPF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@LOAD_REJECT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c">>> Loading program error.\0A>>> Verifier output:\0A%s\0A-------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysctl_test*, i8*)* @load_sysctl_prog_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_sysctl_prog_insns(%struct.sysctl_test* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysctl_test*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bpf_insn*, align 8
  %7 = alloca %struct.bpf_load_program_attr, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sysctl_test* %0, %struct.sysctl_test** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %13 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %12, i32 0, i32 2
  %14 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  store %struct.bpf_insn* %14, %struct.bpf_insn** %6, align 8
  %15 = call i32 @memset(%struct.bpf_load_program_attr* %7, i32 0, i32 24)
  %16 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SYSCTL, align 4
  %17 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 3
  store i32 %16, i32* %17, align 4
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %19 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 1
  store %struct.bpf_insn* %18, %struct.bpf_insn** %19, align 8
  %20 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 1
  %21 = load %struct.bpf_insn*, %struct.bpf_insn** %20, align 8
  %22 = call i32 @probe_prog_length(%struct.bpf_insn* %21)
  %23 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %26 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %2
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @O_RDONLY, align 4
  %32 = load i32, i32* @O_CLOEXEC, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @open(i8* %30, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @log_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i32 -1, i32* %3, align 4
  br label %81

40:                                               ; preds = %29
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %43 = call i32 @read(i32 %41, i8* %42, i32 128)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @log_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %47)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @close(i32 %49)
  store i32 -1, i32* %3, align 4
  br label %81

51:                                               ; preds = %40
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @close(i32 %52)
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.bpf_insn*, %struct.bpf_insn** %6, align 8
  %57 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %58 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @fixup_sysctl_value(i8* %54, i32 %55, %struct.bpf_insn* %56, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %81

63:                                               ; preds = %51
  br label %64

64:                                               ; preds = %63, %2
  %65 = load i8*, i8** @bpf_log_buf, align 8
  %66 = load i32, i32* @BPF_LOG_BUF_SIZE, align 4
  %67 = call i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr* %7, i8* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.sysctl_test*, %struct.sysctl_test** %4, align 8
  %72 = getelementptr inbounds %struct.sysctl_test, %struct.sysctl_test* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @LOAD_REJECT, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i8*, i8** @bpf_log_buf, align 8
  %78 = call i32 @log_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %76, %70, %64
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %62, %46, %37
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @memset(%struct.bpf_load_program_attr*, i32, i32) #1

declare dso_local i32 @probe_prog_length(%struct.bpf_insn*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @log_err(i8*, i8*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @fixup_sysctl_value(i8*, i32, %struct.bpf_insn*, i64) #1

declare dso_local i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
