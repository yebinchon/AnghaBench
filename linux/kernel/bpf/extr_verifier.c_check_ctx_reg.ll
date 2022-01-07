; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ctx_reg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ctx_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [55 x i8] c"dereference of modified ctx ptr R%d off=%d disallowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"variable ctx access var_off=%s disallowed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32)* @check_ctx_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ctx_reg(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [48 x i8], align 16
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %10 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %17 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %15, i64 %18)
  %20 = load i32, i32* @EACCES, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %24 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @tnum_is_const(i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %31 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29, %22
  %36 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i64 0, i64 0
  %37 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %38 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @tnum_strn(i8* %36, i32 48, i64 %40)
  %42 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %43 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i64 0, i64 0
  %44 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %42, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @EACCES, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %35, %13
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @tnum_is_const(i64) #1

declare dso_local i32 @tnum_strn(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
