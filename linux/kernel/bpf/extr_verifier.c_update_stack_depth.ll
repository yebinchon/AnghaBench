; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_update_stack_depth.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_update_stack_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_func_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_func_state*, i32)* @update_stack_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_stack_depth(%struct.bpf_verifier_env* %0, %struct.bpf_func_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_func_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_func_state* %1, %struct.bpf_func_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %10 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %13 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp sge i32 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %27 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %30 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %25, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
