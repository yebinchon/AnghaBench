; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_helper_mem_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_helper_mem_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_call_arg_meta = type { i32 }
%struct.bpf_reg_state = type { i32, i32 }

@BPF_WRITE = common dso_local global i32 0, align 4
@BPF_READ = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32, i32, i32, %struct.bpf_call_arg_meta*)* @check_helper_mem_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_helper_mem_access(%struct.bpf_verifier_env* %0, i32 %1, i32 %2, i32 %3, %struct.bpf_call_arg_meta* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bpf_call_arg_meta*, align 8
  %12 = alloca %struct.bpf_reg_state*, align 8
  %13 = alloca %struct.bpf_reg_state*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.bpf_call_arg_meta* %4, %struct.bpf_call_arg_meta** %11, align 8
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %15 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %14)
  store %struct.bpf_reg_state* %15, %struct.bpf_reg_state** %12, align 8
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %16, i64 %18
  store %struct.bpf_reg_state* %19, %struct.bpf_reg_state** %13, align 8
  %20 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %21 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %66 [
    i32 129, label %23
    i32 128, label %23
    i32 130, label %32
  ]

23:                                               ; preds = %5, %5
  %24 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %27 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @check_packet_access(%struct.bpf_verifier_env* %24, i32 %25, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %73

32:                                               ; preds = %5
  %33 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %36 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %11, align 8
  %40 = icmp ne %struct.bpf_call_arg_meta* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %11, align 8
  %43 = getelementptr inbounds %struct.bpf_call_arg_meta, %struct.bpf_call_arg_meta* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @BPF_WRITE, align 4
  br label %50

48:                                               ; preds = %41, %32
  %49 = load i32, i32* @BPF_READ, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = call i32 @check_map_access_type(%struct.bpf_verifier_env* %33, i32 %34, i32 %37, i32 %38, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EACCES, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %73

57:                                               ; preds = %50
  %58 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %61 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @check_map_access(%struct.bpf_verifier_env* %58, i32 %59, i32 %62, i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %73

66:                                               ; preds = %5
  %67 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.bpf_call_arg_meta*, %struct.bpf_call_arg_meta** %11, align 8
  %72 = call i32 @check_stack_boundary(%struct.bpf_verifier_env* %67, i32 %68, i32 %69, i32 %70, %struct.bpf_call_arg_meta* %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %66, %57, %54, %23
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @check_packet_access(%struct.bpf_verifier_env*, i32, i32, i32, i32) #1

declare dso_local i32 @check_map_access_type(%struct.bpf_verifier_env*, i32, i32, i32, i32) #1

declare dso_local i32 @check_map_access(%struct.bpf_verifier_env*, i32, i32, i32, i32) #1

declare dso_local i32 @check_stack_boundary(%struct.bpf_verifier_env*, i32, i32, i32, %struct.bpf_call_arg_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
