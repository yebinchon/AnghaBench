; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_convert_pseudo_ld_imm64.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_convert_pseudo_ld_imm64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i64 }

@BPF_LD = common dso_local global i32 0, align 4
@BPF_IMM = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*)* @convert_pseudo_ld_imm64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convert_pseudo_ld_imm64(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca %struct.bpf_verifier_env*, align 8
  %3 = alloca %struct.bpf_insn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %2, align 8
  %6 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %7 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.bpf_insn*, %struct.bpf_insn** %9, align 8
  store %struct.bpf_insn* %10, %struct.bpf_insn** %3, align 8
  %11 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %12 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %34, %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %22 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BPF_LD, align 4
  %25 = load i32, i32* @BPF_IMM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @BPF_DW, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %32 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %30, %20
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  %37 = load %struct.bpf_insn*, %struct.bpf_insn** %3, align 8
  %38 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %37, i32 1
  store %struct.bpf_insn* %38, %struct.bpf_insn** %3, align 8
  br label %16

39:                                               ; preds = %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
