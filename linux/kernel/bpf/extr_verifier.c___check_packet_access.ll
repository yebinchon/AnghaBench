; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___check_packet_access.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c___check_packet_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i64, i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"invalid access to packet, off=%d size=%d, R%d(id=%d,off=%d,r=%d)\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i64, i32, i32, i32)* @__check_packet_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__check_packet_access(%struct.bpf_verifier_env* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_verifier_env*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bpf_reg_state*, align 8
  %13 = alloca %struct.bpf_reg_state*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %15 = call %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env* %14)
  store %struct.bpf_reg_state* %15, %struct.bpf_reg_state** %12, align 8
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %12, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %16, i64 %17
  store %struct.bpf_reg_state* %18, %struct.bpf_reg_state** %13, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %37 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %30, %27, %21, %5
  %41 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %46 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %49 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %13, align 8
  %52 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @verbose(%struct.bpf_verifier_env* %41, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i64 %44, i32 %47, i32 %50, i64 %53)
  %55 = load i32, i32* @EACCES, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %58

57:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %40
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.bpf_reg_state* @cur_regs(%struct.bpf_verifier_env*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i32, i32, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
