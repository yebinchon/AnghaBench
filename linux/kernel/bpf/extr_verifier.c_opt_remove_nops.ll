; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_opt_remove_nops.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_opt_remove_nops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.bpf_insn* }
%struct.bpf_insn = type { i32 }

@BPF_JA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*)* @opt_remove_nops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt_remove_nops(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_insn, align 4
  %5 = alloca %struct.bpf_insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  %9 = load i32, i32* @BPF_JA, align 4
  %10 = call i32 @BPF_JMP_IMM(i32 %9, i32 0, i32 0, i32 0)
  %11 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %4, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.bpf_insn*, %struct.bpf_insn** %15, align 8
  store %struct.bpf_insn* %16, %struct.bpf_insn** %5, align 8
  %17 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %47, %1
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.bpf_insn*, %struct.bpf_insn** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bpf_insn, %struct.bpf_insn* %27, i64 %29
  %31 = call i64 @memcmp(%struct.bpf_insn* %30, %struct.bpf_insn* %4, i32 4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %47

34:                                               ; preds = %26
  %35 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @verifier_remove_insns(%struct.bpf_verifier_env* %35, i32 %36, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %51

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %33
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %22

50:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @BPF_JMP_IMM(i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(%struct.bpf_insn*, %struct.bpf_insn*, i32) #1

declare dso_local i32 @verifier_remove_insns(%struct.bpf_verifier_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
