; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_bpf_patch_insn_data.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_bpf_patch_insn_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog = type { i32 }
%struct.bpf_verifier_env = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_insn = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"insn %d cannot be patched due to 16-bit range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_prog* (%struct.bpf_verifier_env*, i64, %struct.bpf_insn*, i64)* @bpf_patch_insn_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_prog* @bpf_patch_insn_data(%struct.bpf_verifier_env* %0, i64 %1, %struct.bpf_insn* %2, i64 %3) #0 {
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bpf_insn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bpf_prog*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.bpf_insn* %2, %struct.bpf_insn** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %12 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.bpf_insn*, %struct.bpf_insn** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call %struct.bpf_prog* @bpf_patch_insn_single(i32 %13, i64 %14, %struct.bpf_insn* %15, i64 %16)
  store %struct.bpf_prog* %17, %struct.bpf_prog** %10, align 8
  %18 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %19 = call i64 @IS_ERR(%struct.bpf_prog* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %23 = call i32 @PTR_ERR(%struct.bpf_prog* %22)
  %24 = load i32, i32* @ERANGE, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %29 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %30 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @verbose(%struct.bpf_verifier_env* %28, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %27, %21
  store %struct.bpf_prog* null, %struct.bpf_prog** %5, align 8
  br label %52

38:                                               ; preds = %4
  %39 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %40 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @adjust_insn_aux_data(%struct.bpf_verifier_env* %39, %struct.bpf_prog* %40, i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  store %struct.bpf_prog* null, %struct.bpf_prog** %5, align 8
  br label %52

46:                                               ; preds = %38
  %47 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @adjust_subprog_starts(%struct.bpf_verifier_env* %47, i64 %48, i64 %49)
  %51 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  store %struct.bpf_prog* %51, %struct.bpf_prog** %5, align 8
  br label %52

52:                                               ; preds = %46, %45, %37
  %53 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  ret %struct.bpf_prog* %53
}

declare dso_local %struct.bpf_prog* @bpf_patch_insn_single(i32, i64, %struct.bpf_insn*, i64) #1

declare dso_local i64 @IS_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @PTR_ERR(%struct.bpf_prog*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32) #1

declare dso_local i64 @adjust_insn_aux_data(%struct.bpf_verifier_env*, %struct.bpf_prog*, i64, i64) #1

declare dso_local i32 @adjust_subprog_starts(%struct.bpf_verifier_env*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
