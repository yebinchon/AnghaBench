; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_propagate_liveness_reg.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_propagate_liveness_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_reg_state = type { i64 }

@REG_LIVE_READ = common dso_local global i64 0, align 8
@REG_LIVE_READ64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_reg_state*, %struct.bpf_reg_state*)* @propagate_liveness_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @propagate_liveness_reg(%struct.bpf_verifier_env* %0, %struct.bpf_reg_state* %1, %struct.bpf_reg_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_reg_state*, align 8
  %7 = alloca %struct.bpf_reg_state*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_reg_state* %1, %struct.bpf_reg_state** %6, align 8
  store %struct.bpf_reg_state* %2, %struct.bpf_reg_state** %7, align 8
  %11 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %12 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REG_LIVE_READ, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %8, align 8
  %16 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %17 = getelementptr inbounds %struct.bpf_reg_state, %struct.bpf_reg_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @REG_LIVE_READ, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @REG_LIVE_READ64, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %24, %3
  store i32 0, i32* %4, align 4
  br label %45

32:                                               ; preds = %27
  %33 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %34 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %6, align 8
  %35 = load %struct.bpf_reg_state*, %struct.bpf_reg_state** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @mark_reg_read(%struct.bpf_verifier_env* %33, %struct.bpf_reg_state* %34, %struct.bpf_reg_state* %35, i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %32
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %42, %40, %31
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @mark_reg_read(%struct.bpf_verifier_env*, %struct.bpf_reg_state*, %struct.bpf_reg_state*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
