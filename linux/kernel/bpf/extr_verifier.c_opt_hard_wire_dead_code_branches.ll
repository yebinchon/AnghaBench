; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_opt_hard_wire_dead_code_branches.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_opt_hard_wire_dead_code_branches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_2__*, %struct.bpf_insn_aux_data* }
%struct.TYPE_2__ = type { i32, i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i32 }
%struct.bpf_insn_aux_data = type { i32 }

@BPF_JA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*)* @opt_hard_wire_dead_code_branches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opt_hard_wire_dead_code_branches(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca %struct.bpf_verifier_env*, align 8
  %3 = alloca %struct.bpf_insn_aux_data*, align 8
  %4 = alloca %struct.bpf_insn, align 4
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %2, align 8
  %8 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %9 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %8, i32 0, i32 1
  %10 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %9, align 8
  store %struct.bpf_insn_aux_data* %10, %struct.bpf_insn_aux_data** %3, align 8
  %11 = load i32, i32* @BPF_JA, align 4
  %12 = call i64 @BPF_JMP_IMM(i32 %11, i32 0, i32 0, i32 0)
  %13 = bitcast %struct.bpf_insn* %4 to i64*
  store i64 %12, i64* %13, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load %struct.bpf_insn*, %struct.bpf_insn** %17, align 8
  store %struct.bpf_insn* %18, %struct.bpf_insn** %5, align 8
  %19 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %20 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %81, %1
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %86

28:                                               ; preds = %24
  %29 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %30 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @insn_is_cond_jump(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %81

35:                                               ; preds = %28
  %36 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %36, i64 %39
  %41 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %35
  %45 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %46 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %4, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  br label %66

49:                                               ; preds = %35
  %50 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  %53 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %54 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %50, i64 %57
  %59 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %4, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %65

64:                                               ; preds = %49
  br label %81

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %44
  %67 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %68 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @bpf_prog_is_dev_bound(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @bpf_prog_offload_replace_insn(%struct.bpf_verifier_env* %75, i32 %76, %struct.bpf_insn* %4)
  br label %78

78:                                               ; preds = %74, %66
  %79 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %80 = call i32 @memcpy(%struct.bpf_insn* %79, %struct.bpf_insn* %4, i32 8)
  br label %81

81:                                               ; preds = %78, %64, %34
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  %84 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %85 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %84, i32 1
  store %struct.bpf_insn* %85, %struct.bpf_insn** %5, align 8
  br label %24

86:                                               ; preds = %24
  ret void
}

declare dso_local i64 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i32 @insn_is_cond_jump(i32) #1

declare dso_local i64 @bpf_prog_is_dev_bound(i32) #1

declare dso_local i32 @bpf_prog_offload_replace_insn(%struct.bpf_verifier_env*, i32, %struct.bpf_insn*) #1

declare dso_local i32 @memcpy(%struct.bpf_insn*, %struct.bpf_insn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
