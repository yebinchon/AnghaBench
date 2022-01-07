; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_gen_read_mem.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_gen_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_insn_pos = type { i32 }

@BPF_REG_ARG3 = common dso_local global i32 0, align 4
@BPF_ADD = common dso_local global i32 0, align 4
@BPF_MOV = common dso_local global i32 0, align 4
@BPF_REG_ARG2 = common dso_local global i32 0, align 4
@BPF_REG_SIZE = common dso_local global i64 0, align 8
@BPF_REG_ARG1 = common dso_local global i32 0, align 4
@BPF_FUNC_probe_read = common dso_local global i32 0, align 4
@BPF_JNE = common dso_local global i32 0, align 4
@BPF_REG_0 = common dso_local global i32 0, align 4
@JMP_TO_ERROR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_insn_pos*, i32, i32, i64)* @gen_read_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_read_mem(%struct.bpf_insn_pos* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.bpf_insn_pos*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bpf_insn_pos* %0, %struct.bpf_insn_pos** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @BPF_REG_ARG3, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = load i32, i32* @BPF_REG_ARG3, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @BPF_MOV64_REG(i32 %13, i32 %14)
  %16 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %17 = call i32 @ins(i32 %15, %struct.bpf_insn_pos* %16)
  br label %18

18:                                               ; preds = %12, %4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* @BPF_ADD, align 4
  %23 = load i32, i32* @BPF_REG_ARG3, align 4
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @BPF_ALU64_IMM(i32 %22, i32 %23, i64 %24)
  %26 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %27 = call i32 @ins(i32 %25, %struct.bpf_insn_pos* %26)
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* @BPF_MOV, align 4
  %30 = load i32, i32* @BPF_REG_ARG2, align 4
  %31 = load i64, i64* @BPF_REG_SIZE, align 8
  %32 = call i32 @BPF_ALU64_IMM(i32 %29, i32 %30, i64 %31)
  %33 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %34 = call i32 @ins(i32 %32, %struct.bpf_insn_pos* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @BPF_REG_ARG1, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %28
  %39 = load i32, i32* @BPF_REG_ARG1, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @BPF_MOV64_REG(i32 %39, i32 %40)
  %42 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %43 = call i32 @ins(i32 %41, %struct.bpf_insn_pos* %42)
  br label %44

44:                                               ; preds = %38, %28
  %45 = load i32, i32* @BPF_FUNC_probe_read, align 4
  %46 = call i32 @BPF_EMIT_CALL(i32 %45)
  %47 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %48 = call i32 @ins(i32 %46, %struct.bpf_insn_pos* %47)
  %49 = load i32, i32* @BPF_JNE, align 4
  %50 = load i32, i32* @BPF_REG_0, align 4
  %51 = load i32, i32* @JMP_TO_ERROR_CODE, align 4
  %52 = call i32 @BPF_JMP_IMM(i32 %49, i32 %50, i32 0, i32 %51)
  %53 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %54 = call i32 @ins(i32 %52, %struct.bpf_insn_pos* %53)
  %55 = load %struct.bpf_insn_pos*, %struct.bpf_insn_pos** %5, align 8
  %56 = call i32 @check_pos(%struct.bpf_insn_pos* %55)
  ret i32 %56
}

declare dso_local i32 @ins(i32, %struct.bpf_insn_pos*) #1

declare dso_local i32 @BPF_MOV64_REG(i32, i32) #1

declare dso_local i32 @BPF_ALU64_IMM(i32, i32, i64) #1

declare dso_local i32 @BPF_EMIT_CALL(i32) #1

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @check_pos(%struct.bpf_insn_pos*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
