; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___check_stack_boundary.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___check_stack_boundary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i32 }

@MAX_BPF_STACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"invalid stack type R%d off=%d access_size=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"invalid stack type R%d var_off=%s access_size=%d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32, i32, i32, i32)* @__check_stack_boundary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_stack_boundary(%struct.bpf_verifier_env* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_reg_state*, align 8
  %13 = alloca [48 x i8], align 16
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.bpf_reg_state* @reg_state(%struct.bpf_verifier_env* %14, i32 %15)
  store %struct.bpf_reg_state* %16, %struct.bpf_reg_state** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @MAX_BPF_STACK, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %25, %26
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %35, %29, %24, %19, %5
  %39 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %40 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @tnum_is_const(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  br label %61

50:                                               ; preds = %38
  %51 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  %52 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %53 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @tnum_strn(i8* %51, i32 48, i32 %54)
  %56 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds [48 x i8], [48 x i8]* %13, i64 0, i64 0
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %56, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %57, i8* %58, i32 %59)
  br label %61

61:                                               ; preds = %50, %44
  %62 = load i32, i32* @EACCES, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %65

64:                                               ; preds = %35, %32
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %61
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.bpf_reg_state* @reg_state(%struct.bpf_verifier_env*, i32) #1

declare dso_local i64 @tnum_is_const(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, ...) #1

declare dso_local i32 @tnum_strn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
