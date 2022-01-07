; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_func.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_state = type { i32 }
%struct.bpf_verifier_env = type { %struct.bpf_verifier_state* }
%struct.bpf_verifier_state = type { %struct.bpf_func_state** }
%struct.bpf_reg_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_func_state* (%struct.bpf_verifier_env*, %struct.bpf_reg_state*)* @func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_func_state* @func(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1) #0 {
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_reg_state*, align 8
  %5 = alloca %struct.bpf_verifier_state*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %4, align 8
  %6 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %6, i32 0, i32 0
  %8 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %7, align 8
  store %struct.bpf_verifier_state* %8, %struct.bpf_verifier_state** %5, align 8
  %9 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %10 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %9, i32 0, i32 0
  %11 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %10, align 8
  %12 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %11, i64 %14
  %16 = load %struct.bpf_func_state*, %struct.bpf_func_state** %15, align 8
  ret %struct.bpf_func_state* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
