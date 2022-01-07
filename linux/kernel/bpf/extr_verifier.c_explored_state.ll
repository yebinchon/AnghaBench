; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_explored_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_explored_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_state_list = type { i32 }
%struct.bpf_verifier_env = type { %struct.bpf_verifier_state_list**, %struct.bpf_verifier_state* }
%struct.bpf_verifier_state = type { i64, %struct.bpf_func_state** }
%struct.bpf_func_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_verifier_state_list** (%struct.bpf_verifier_env*, i32)* @explored_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_verifier_state_list** @explored_state(%struct.bpf_verifier_env* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_state*, align 8
  %6 = alloca %struct.bpf_func_state*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %8 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %7, i32 0, i32 1
  %9 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  store %struct.bpf_verifier_state* %9, %struct.bpf_verifier_state** %5, align 8
  %10 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %10, i32 0, i32 1
  %12 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %11, align 8
  %13 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %14 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %12, i64 %15
  %17 = load %struct.bpf_func_state*, %struct.bpf_func_state** %16, align 8
  store %struct.bpf_func_state* %17, %struct.bpf_func_state** %6, align 8
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %18, i32 0, i32 0
  %20 = load %struct.bpf_verifier_state_list**, %struct.bpf_verifier_state_list*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %23 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %21, %24
  %26 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %27 = call i32 @state_htab_size(%struct.bpf_verifier_env* %26)
  %28 = srem i32 %25, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %20, i64 %29
  ret %struct.bpf_verifier_state_list** %30
}

declare dso_local i32 @state_htab_size(%struct.bpf_verifier_env*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
