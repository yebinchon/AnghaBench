; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_ptr_or_null_regs.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_mark_ptr_or_null_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_state = type { i64, %struct.bpf_func_state** }
%struct.bpf_func_state = type { %struct.bpf_reg_state* }
%struct.bpf_reg_state = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_state*, i64, i32)* @mark_ptr_or_null_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_ptr_or_null_regs(%struct.bpf_verifier_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_verifier_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_func_state*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.bpf_verifier_state* %0, %struct.bpf_verifier_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %12, i32 0, i32 1
  %14 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %13, align 8
  %15 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %14, i64 %17
  %19 = load %struct.bpf_func_state*, %struct.bpf_func_state** %18, align 8
  store %struct.bpf_func_state* %19, %struct.bpf_func_state** %7, align 8
  %20 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %21 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %20, i32 0, i32 0
  %22 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %21, align 8
  store %struct.bpf_reg_state* %22, %struct.bpf_reg_state** %8, align 8
  %23 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %23, i64 %24
  %26 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %28, i64 %29
  %31 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %3
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load %struct.bpf_func_state*, %struct.bpf_func_state** %7, align 8
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @release_reference_state(%struct.bpf_func_state* %43, i64 %44)
  %46 = call i32 @WARN_ON_ONCE(i32 %45)
  br label %47

47:                                               ; preds = %42, %39, %35, %3
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %52 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ule i64 %50, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %57 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %56, i32 0, i32 1
  %58 = load %struct.bpf_func_state**, %struct.bpf_func_state*** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.bpf_func_state*, %struct.bpf_func_state** %58, i64 %60
  %62 = load %struct.bpf_func_state*, %struct.bpf_func_state** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @__mark_ptr_or_null_regs(%struct.bpf_func_state* %62, i64 %63, i32 %64)
  br label %66

66:                                               ; preds = %55
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %48

69:                                               ; preds = %48
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @release_reference_state(%struct.bpf_func_state*, i64) #1

declare dso_local i32 @__mark_ptr_or_null_regs(%struct.bpf_func_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
