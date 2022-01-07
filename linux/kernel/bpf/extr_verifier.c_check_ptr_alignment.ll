; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ptr_alignment.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ptr_alignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i64 }
%struct.bpf_reg_state = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"flow keys \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"value \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"context \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"stack \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"sock \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"sock_common \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"tcp_sock \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"xdp_sock \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32, i32, i32)* @check_ptr_alignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ptr_alignment(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca %struct.bpf_reg_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i1 [ true, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %12, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %24 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %25 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %42 [
    i32 134, label %27
    i32 133, label %27
    i32 136, label %34
    i32 135, label %35
    i32 137, label %36
    i32 130, label %37
    i32 132, label %38
    i32 131, label %39
    i32 129, label %40
    i32 128, label %41
  ]

27:                                               ; preds = %21, %21
  %28 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %29 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @check_pkt_ptr_alignment(%struct.bpf_verifier_env* %28, %struct.bpf_reg_state* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  br label %51

34:                                               ; preds = %21
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %43

35:                                               ; preds = %21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %43

36:                                               ; preds = %21
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %43

37:                                               ; preds = %21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  store i32 1, i32* %12, align 4
  br label %43

38:                                               ; preds = %21
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %43

39:                                               ; preds = %21
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %13, align 8
  br label %43

40:                                               ; preds = %21
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %13, align 8
  br label %43

41:                                               ; preds = %21
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8** %13, align 8
  br label %43

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %41, %40, %39, %38, %37, %36, %35, %34
  %44 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %8, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @check_generic_ptr_alignment(%struct.bpf_verifier_env* %44, %struct.bpf_reg_state* %45, i8* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %43, %27
  %52 = load i32, i32* %6, align 4
  ret i32 %52
}

declare dso_local i32 @check_pkt_ptr_alignment(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i32, i32, i32) #1

declare dso_local i32 @check_generic_ptr_alignment(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
