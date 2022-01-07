; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_reg_sane_offset.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_reg_sane_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BPF_MAX_VAR_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"math between %s pointer and %lld is not allowed\0A\00", align 1
@reg_type_str = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"%s pointer offset %d is not allowed\0A\00", align 1
@S64_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"math between %s pointer and register with unbounded min value is not allowed\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"value %lld makes %s pointer be out of bounds\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32)* @check_reg_sane_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_reg_sane_offset(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %12 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @tnum_is_const(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %17 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %21 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @BPF_MAX_VAR_OFF, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @BPF_MAX_VAR_OFF, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp sle i32 %30, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %29, %25
  %35 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %36 = load i32*, i32** @reg_type_str, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  store i32 0, i32* %4, align 4
  br label %98

43:                                               ; preds = %29, %3
  %44 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %45 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BPF_MAX_VAR_OFF, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %51 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @BPF_MAX_VAR_OFF, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp sle i32 %52, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %49, %43
  %57 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %58 = load i32*, i32** @reg_type_str, align 8
  %59 = load i32, i32* %7, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %64 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  store i32 0, i32* %4, align 4
  br label %98

67:                                               ; preds = %49
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @S64_MIN, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %73 = load i32*, i32** @reg_type_str, align 8
  %74 = load i32, i32* %7, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %72, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  store i32 0, i32* %4, align 4
  br label %98

79:                                               ; preds = %67
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @BPF_MAX_VAR_OFF, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @BPF_MAX_VAR_OFF, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp sle i32 %84, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %83, %79
  %89 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32*, i32** @reg_type_str, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (%struct.bpf_verifier_env*, i8*, i32, ...) @verbose(%struct.bpf_verifier_env* %89, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %95)
  store i32 0, i32* %4, align 4
  br label %98

97:                                               ; preds = %83
  store i32 1, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %88, %71, %56, %34
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @tnum_is_const(i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
