; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_load_insns.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_sock_addr.c_load_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_addr_test = type { i64, i32 }
%struct.bpf_insn = type { i32 }
%struct.bpf_load_program_attr = type { i64, i8*, %struct.bpf_insn*, i32, i32 }

@BPF_PROG_TYPE_CGROUP_SOCK_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@bpf_log_buf = common dso_local global i32 0, align 4
@BPF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@LOAD_REJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c">>> Loading program error.\0A>>> Verifier output:\0A%s\0A-------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock_addr_test*, %struct.bpf_insn*, i64)* @load_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_insns(%struct.sock_addr_test* %0, %struct.bpf_insn* %1, i64 %2) #0 {
  %4 = alloca %struct.sock_addr_test*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bpf_load_program_attr, align 8
  %8 = alloca i32, align 4
  store %struct.sock_addr_test* %0, %struct.sock_addr_test** %4, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = call i32 @memset(%struct.bpf_load_program_attr* %7, i32 0, i32 32)
  %10 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SOCK_ADDR, align 4
  %11 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 4
  store i32 %10, i32* %11, align 4
  %12 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %13 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %17 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 2
  store %struct.bpf_insn* %16, %struct.bpf_insn** %17, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.bpf_load_program_attr, %struct.bpf_load_program_attr* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @bpf_log_buf, align 4
  %22 = load i32, i32* @BPF_LOG_BUF_SIZE, align 4
  %23 = call i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr* %7, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load %struct.sock_addr_test*, %struct.sock_addr_test** %4, align 8
  %28 = getelementptr inbounds %struct.sock_addr_test, %struct.sock_addr_test* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LOAD_REJECT, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @bpf_log_buf, align 4
  %34 = call i32 @log_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %26, %3
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

declare dso_local i32 @memset(%struct.bpf_load_program_attr*, i32, i32) #1

declare dso_local i32 @bpf_load_program_xattr(%struct.bpf_load_program_attr*, i32, i32) #1

declare dso_local i32 @log_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
