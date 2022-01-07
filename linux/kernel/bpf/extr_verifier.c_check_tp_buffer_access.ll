; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_tp_buffer_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_tp_buffer_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bpf_reg_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"R%d invalid tracepoint buffer access: off=%d, size=%d\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"R%d invalid variable buffer offset: off=%d, var_off=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32, i32, i32)* @check_tp_buffer_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_tp_buffer_access(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [48 x i8], align 16
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i32 (%struct.bpf_verifier_env*, i8*, i32, i32, ...) @verbose(%struct.bpf_verifier_env* %16, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  %21 = load i32, i32* @EACCES, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %73

23:                                               ; preds = %5
  %24 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %25 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @tnum_is_const(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %23
  %31 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %32 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %30, %23
  %37 = getelementptr inbounds [48 x i8], [48 x i8]* %12, i64 0, i64 0
  %38 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %39 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @tnum_strn(i8* %37, i32 48, i64 %41)
  %43 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = getelementptr inbounds [48 x i8], [48 x i8]* %12, i64 0, i64 0
  %47 = call i32 (%struct.bpf_verifier_env*, i8*, i32, i32, ...) @verbose(%struct.bpf_verifier_env* %43, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45, i8* %46)
  %48 = load i32, i32* @EACCES, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %73

50:                                               ; preds = %30
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  %54 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %55 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %53, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %63, %64
  %66 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %67 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 %65, i32* %71, align 4
  br label %72

72:                                               ; preds = %62, %50
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %36, %15
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, i32, ...) #1

declare dso_local i32 @tnum_is_const(i64) #1

declare dso_local i32 @tnum_strn(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
