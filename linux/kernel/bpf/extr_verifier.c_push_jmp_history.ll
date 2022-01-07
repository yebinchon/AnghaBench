; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_push_jmp_history.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_push_jmp_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, i32 }
%struct.bpf_verifier_state = type { i32, %struct.bpf_idx_pair* }
%struct.bpf_idx_pair = type { i32, i32 }

@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_verifier_state*)* @push_jmp_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_jmp_history(%struct.bpf_verifier_env* %0, %struct.bpf_verifier_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca %struct.bpf_verifier_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_idx_pair*, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store %struct.bpf_verifier_state* %1, %struct.bpf_verifier_state** %5, align 8
  %8 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %9 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %14 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %13, i32 0, i32 1
  %15 = load %struct.bpf_idx_pair*, %struct.bpf_idx_pair** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_USER, align 4
  %21 = call %struct.bpf_idx_pair* @krealloc(%struct.bpf_idx_pair* %15, i32 %19, i32 %20)
  store %struct.bpf_idx_pair* %21, %struct.bpf_idx_pair** %7, align 8
  %22 = load %struct.bpf_idx_pair*, %struct.bpf_idx_pair** %7, align 8
  %23 = icmp ne %struct.bpf_idx_pair* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %2
  %28 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %29 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bpf_idx_pair*, %struct.bpf_idx_pair** %7, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.bpf_idx_pair, %struct.bpf_idx_pair* %31, i64 %34
  %36 = getelementptr inbounds %struct.bpf_idx_pair, %struct.bpf_idx_pair* %35, i32 0, i32 1
  store i32 %30, i32* %36, align 4
  %37 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %38 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bpf_idx_pair*, %struct.bpf_idx_pair** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.bpf_idx_pair, %struct.bpf_idx_pair* %40, i64 %43
  %45 = getelementptr inbounds %struct.bpf_idx_pair, %struct.bpf_idx_pair* %44, i32 0, i32 0
  store i32 %39, i32* %45, align 4
  %46 = load %struct.bpf_idx_pair*, %struct.bpf_idx_pair** %7, align 8
  %47 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %48 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %47, i32 0, i32 1
  store %struct.bpf_idx_pair* %46, %struct.bpf_idx_pair** %48, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  %51 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %27, %24
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.bpf_idx_pair* @krealloc(%struct.bpf_idx_pair*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
