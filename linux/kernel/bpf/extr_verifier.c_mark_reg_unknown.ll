; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_reg_unknown.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_reg_unknown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, i32 }
%struct.bpf_reg_state = type { i32 }

@MAX_BPF_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"mark_reg_unknown(regs, %u)\0A\00", align 1
@BPF_REG_FP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i64)* @mark_reg_unknown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_reg_unknown(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1, i64 %2) #0 {
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca %struct.bpf_reg_state*, align 8
  %6 = alloca i64, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MAX_BPF_REG, align 8
  %9 = icmp sge i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %3
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @verbose(%struct.bpf_verifier_env* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %15)
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %26, %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @BPF_REG_FP, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %22, i64 %23
  %25 = call i32 @__mark_reg_not_init(%struct.bpf_reg_state* %24)
  br label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %6, align 8
  br label %17

29:                                               ; preds = %17
  br label %52

30:                                               ; preds = %3
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %33 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %32, i64 %31
  store %struct.bpf_reg_state* %33, %struct.bpf_reg_state** %5, align 8
  %34 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %35 = call i32 @__mark_reg_unknown(%struct.bpf_reg_state* %34)
  %36 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %37 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %46, label %40

40:                                               ; preds = %30
  %41 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %42 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %40, %30
  %47 = phi i1 [ true, %30 ], [ %45, %40 ]
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  %50 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %5, align 8
  %51 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %29
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i64) #1

declare dso_local i32 @__mark_reg_not_init(%struct.bpf_reg_state*) #1

declare dso_local i32 @__mark_reg_unknown(%struct.bpf_reg_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
