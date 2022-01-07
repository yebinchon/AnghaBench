; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_release_reference.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_release_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.bpf_verifier_state* }
%struct.bpf_verifier_state = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32)* @release_reference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @release_reference(%struct.bpf_verifier_env* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %10 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %9, i32 0, i32 0
  %11 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  store %struct.bpf_verifier_state* %11, %struct.bpf_verifier_state** %6, align 8
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %13 = call i32 @cur_func(%struct.bpf_verifier_env* %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @release_reference_state(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %24 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %29 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %30 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @release_reg_references(%struct.bpf_verifier_env* %28, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %21

41:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @release_reference_state(i32, i32) #1

declare dso_local i32 @cur_func(%struct.bpf_verifier_env*) #1

declare dso_local i32 @release_reg_references(%struct.bpf_verifier_env*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
