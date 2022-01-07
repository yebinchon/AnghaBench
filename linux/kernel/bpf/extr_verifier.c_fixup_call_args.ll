; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_fixup_call_args.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_fixup_call_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.bpf_prog* }
%struct.bpf_prog = type { i32, i32, i64, %struct.bpf_insn* }
%struct.bpf_insn = type { i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@BPF_JMP = common dso_local global i32 0, align 4
@BPF_CALL = common dso_local global i32 0, align 4
@BPF_PSEUDO_CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @fixup_call_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_call_args(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %9 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %9, i32 0, i32 0
  %11 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  store %struct.bpf_prog* %11, %struct.bpf_prog** %4, align 8
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %12, i32 0, i32 3
  %14 = load %struct.bpf_insn*, %struct.bpf_insn** %13, align 8
  store %struct.bpf_insn* %14, %struct.bpf_insn** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %15, i32 0, i32 0
  %17 = load %struct.bpf_prog*, %struct.bpf_prog** %16, align 8
  %18 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %23 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %22, i32 0, i32 0
  %24 = load %struct.bpf_prog*, %struct.bpf_prog** %23, align 8
  %25 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bpf_prog_is_dev_bound(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %21
  %30 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %31 = call i32 @jit_subprogs(%struct.bpf_verifier_env* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %85

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EFAULT, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %85

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %21, %1
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %78, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %47 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %44
  %51 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %52 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BPF_JMP, align 4
  %55 = load i32, i32* @BPF_CALL, align 4
  %56 = or i32 %54, %55
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %50
  %59 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %60 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BPF_PSEUDO_CALL, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %50
  br label %78

65:                                               ; preds = %58
  %66 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %67 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @get_callee_stack_depth(%struct.bpf_verifier_env* %66, %struct.bpf_insn* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %85

74:                                               ; preds = %65
  %75 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @bpf_patch_call_args(%struct.bpf_insn* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %64
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %82 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %81, i32 1
  store %struct.bpf_insn* %82, %struct.bpf_insn** %5, align 8
  br label %44

83:                                               ; preds = %44
  store i32 0, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %72, %40, %34
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @bpf_prog_is_dev_bound(i32) #1

declare dso_local i32 @jit_subprogs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @get_callee_stack_depth(%struct.bpf_verifier_env*, %struct.bpf_insn*, i32) #1

declare dso_local i32 @bpf_patch_call_args(%struct.bpf_insn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
