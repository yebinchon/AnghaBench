; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_pop_stack.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_pop_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_state* }
%struct.bpf_verifier_stack_elem = type { i32, i32, i32, %struct.bpf_verifier_stack_elem* }
%struct.bpf_verifier_state = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, i32*, i32*)* @pop_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop_stack(%struct.bpf_verifier_env* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bpf_verifier_state*, align 8
  %9 = alloca %struct.bpf_verifier_stack_elem*, align 8
  %10 = alloca %struct.bpf_verifier_stack_elem*, align 8
  %11 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %12, i32 0, i32 2
  %14 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %13, align 8
  store %struct.bpf_verifier_state* %14, %struct.bpf_verifier_state** %8, align 8
  %15 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %16 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %15, i32 0, i32 1
  %17 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %16, align 8
  store %struct.bpf_verifier_stack_elem* %17, %struct.bpf_verifier_stack_elem** %10, align 8
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %19 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %18, i32 0, i32 1
  %20 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %19, align 8
  %21 = icmp eq %struct.bpf_verifier_stack_elem* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %70

25:                                               ; preds = %3
  %26 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %27 = icmp ne %struct.bpf_verifier_state* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %8, align 8
  %30 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %10, align 8
  %31 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %30, i32 0, i32 2
  %32 = call i32 @copy_verifier_state(%struct.bpf_verifier_state* %29, i32* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %4, align 4
  br label %70

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %10, align 8
  %43 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32*, i32** %6, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %10, align 8
  %51 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %6, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %10, align 8
  %56 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %55, i32 0, i32 3
  %57 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %56, align 8
  store %struct.bpf_verifier_stack_elem* %57, %struct.bpf_verifier_stack_elem** %9, align 8
  %58 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %10, align 8
  %59 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %58, i32 0, i32 2
  %60 = call i32 @free_verifier_state(i32* %59, i32 0)
  %61 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %10, align 8
  %62 = call i32 @kfree(%struct.bpf_verifier_stack_elem* %61)
  %63 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %9, align 8
  %64 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %65 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %64, i32 0, i32 1
  store %struct.bpf_verifier_stack_elem* %63, %struct.bpf_verifier_stack_elem** %65, align 8
  %66 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %5, align 8
  %67 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %54, %35, %22
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @copy_verifier_state(%struct.bpf_verifier_state*, i32*) #1

declare dso_local i32 @free_verifier_state(i32*, i32) #1

declare dso_local i32 @kfree(%struct.bpf_verifier_stack_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
