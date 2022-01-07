; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_prog_load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_prog_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn = type { i32 }

@BPF_REG_0 = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_CGROUP_SKB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"GPL\00", align 1
@bpf_log_buf = common dso_local global i8* null, align 8
@BPF_LOG_BUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Loading program\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Output from verifier:\0A%s\0A-------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @prog_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prog_load(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x %struct.bpf_insn], align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %5, i64 0, i64 0
  %8 = load i32, i32* @BPF_REG_0, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @BPF_MOV64_IMM(i32 %8, i32 %9)
  %11 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %7, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %7, i64 1
  %13 = call i32 (...) @BPF_EXIT_INSN()
  %14 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %12, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  store i64 2, i64* %6, align 8
  %15 = load i32, i32* @BPF_PROG_TYPE_CGROUP_SKB, align 4
  %16 = getelementptr inbounds [2 x %struct.bpf_insn], [2 x %struct.bpf_insn]* %5, i64 0, i64 0
  %17 = load i64, i64* %6, align 8
  %18 = load i8*, i8** @bpf_log_buf, align 8
  %19 = load i32, i32* @BPF_LOG_BUF_SIZE, align 4
  %20 = call i32 @bpf_load_program(i32 %15, %struct.bpf_insn* %16, i64 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 0, i8* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = call i32 @log_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i8*, i8** @bpf_log_buf, align 8
  %26 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  store i32 0, i32* %2, align 4
  br label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @BPF_MOV64_IMM(i32, i32) #1

declare dso_local i32 @BPF_EXIT_INSN(...) #1

declare dso_local i32 @bpf_load_program(i32, %struct.bpf_insn*, i64, i8*, i32, i8*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
