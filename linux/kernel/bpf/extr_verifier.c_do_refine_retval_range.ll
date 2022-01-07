; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_do_refine_retval_range.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_do_refine_retval_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_reg_state = type { i32, i32 }
%struct.bpf_call_arg_meta = type { i32, i32 }

@BPF_REG_0 = common dso_local global i64 0, align 8
@RET_INTEGER = common dso_local global i32 0, align 4
@BPF_FUNC_get_stack = common dso_local global i32 0, align 4
@BPF_FUNC_probe_read_str = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_reg_state*, i32, i32, %struct.bpf_call_arg_meta*)* @do_refine_retval_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_refine_retval_range(%struct.bpf_reg_state* %0, i32 %1, i32 %2, %struct.bpf_call_arg_meta* %3) #0 {
  %5 = alloca %struct.bpf_reg_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bpf_call_arg_meta*, align 8
  %9 = alloca %struct.bpf_reg_state*, align 8
  store %struct.bpf_reg_state* %0, %struct.bpf_reg_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.bpf_call_arg_meta* %3, %struct.bpf_call_arg_meta** %8, align 8
  %10 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %11 = load i64, i64* @BPF_REG_0, align 8
  %12 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %10, i64 %11
  store %struct.bpf_reg_state* %12, %struct.bpf_reg_state** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @RET_INTEGER, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @BPF_FUNC_get_stack, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @BPF_FUNC_probe_read_str, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %4
  br label %40

25:                                               ; preds = %20, %16
  %26 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %8, align 8
  %27 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %30 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %8, align 8
  %32 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %35 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %37 = call i32 @__reg_deduce_bounds(%struct.bpf_reg_state* %36)
  %38 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %9, align 8
  %39 = call i32 @__reg_bound_offset(%struct.bpf_reg_state* %38)
  br label %40

40:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @__reg_deduce_bounds(%struct.bpf_reg_state*) #1

declare dso_local i32 @__reg_bound_offset(%struct.bpf_reg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
