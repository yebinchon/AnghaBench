; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_opt_remove_dead_code.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_opt_remove_dead_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_2__*, %struct.bpf_insn_aux_data* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_insn_aux_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @opt_remove_dead_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_remove_dead_code(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_insn_aux_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %9 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %9, i32 0, i32 1
  %11 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %10, align 8
  store %struct.bpf_insn_aux_data* %11, %struct.bpf_insn_aux_data** %4, align 8
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %63, %1
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %66

21:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load %struct.bpf_insn_aux_data*, %struct.bpf_insn_aux_data** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %29, i64 %33
  %35 = getelementptr inbounds %struct.bpf_insn_aux_data, %struct.bpf_insn_aux_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %28, %22
  %40 = phi i1 [ false, %22 ], [ %38, %28 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %22

44:                                               ; preds = %39
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %63

48:                                               ; preds = %44
  %49 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @verifier_remove_insns(%struct.bpf_verifier_env* %49, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %67

57:                                               ; preds = %48
  %58 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %59 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %57, %47
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %17

66:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @verifier_remove_insns(%struct.bpf_verifier_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
