; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_free_verifier_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_free_verifier_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_state = type { i32, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_state*, i32)* @free_verifier_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_verifier_state(%struct.bpf_verifier_state* %0, i32 %1) #0 {
  %3 = alloca %struct.bpf_verifier_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bpf_verifier_state* %0, %struct.bpf_verifier_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sle i32 %7, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %6
  %13 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %3, align 8
  %14 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %13, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @free_func_state(i32* %19)
  %21 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %3, align 8
  %22 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %12
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  %31 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %3, align 8
  %32 = call i32 @clear_jmp_history(%struct.bpf_verifier_state* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %3, align 8
  %37 = call i32 @kfree(%struct.bpf_verifier_state* %36)
  br label %38

38:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @free_func_state(i32*) #1

declare dso_local i32 @clear_jmp_history(%struct.bpf_verifier_state*) #1

declare dso_local i32 @kfree(%struct.bpf_verifier_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
