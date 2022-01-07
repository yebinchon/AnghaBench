; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_sanitize_val_alu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_sanitize_val_alu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_insn = type { i32 }
%struct.bpf_insn_aux_data = type { i32 }

@BPF_ALU_NON_POINTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_insn*)* @sanitize_val_alu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sanitize_val_alu(%struct.bpf_verifier_env* %0, %struct.bpf_insn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca %struct.bpf_insn_aux_data*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store %struct.bpf_insn* %1, %struct.bpf_insn** %5, align 8
  %7 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %8 = call %struct.bpf_insn_aux_data* @cur_aux(%struct.bpf_verifier_env* %7)
  store %struct.bpf_insn_aux_data* %8, %struct.bpf_insn_aux_data** %6, align 8
  %9 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %10 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %11 = call i64 @can_skip_alu_sanitation(%struct.bpf_verifier_env* %9, %struct.bpf_insn* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %6, align 8
  %16 = load i32, i32* @BPF_ALU_NON_POINTER, align 4
  %17 = call i32 @update_alu_sanitation_state(%struct.bpf_insn_aux_data* %15, i32 %16, i32 0)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.bpf_insn_aux_data* @cur_aux(%struct.bpf_verifier_env*) #1

declare dso_local i64 @can_skip_alu_sanitation(%struct.bpf_verifier_env*, %struct.bpf_insn*) #1

declare dso_local i32 @update_alu_sanitation_state(%struct.bpf_insn_aux_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
