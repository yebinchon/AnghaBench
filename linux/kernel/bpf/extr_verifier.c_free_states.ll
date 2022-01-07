; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_free_states.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_free_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { %struct.bpf_verifier_state_list**, %struct.bpf_verifier_state_list* }
%struct.bpf_verifier_state_list = type { i32, %struct.bpf_verifier_state_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*)* @free_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_states(%struct.bpf_verifier_env* %0) #0 {
  %2 = alloca %struct.bpf_verifier_env*, align 8
  %3 = alloca %struct.bpf_verifier_state_list*, align 8
  %4 = alloca %struct.bpf_verifier_state_list*, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %2, align 8
  %6 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %7 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %6, i32 0, i32 1
  %8 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  store %struct.bpf_verifier_state_list* %8, %struct.bpf_verifier_state_list** %3, align 8
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %3, align 8
  %11 = icmp ne %struct.bpf_verifier_state_list* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  %13 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %3, align 8
  %14 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %13, i32 0, i32 1
  %15 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %14, align 8
  store %struct.bpf_verifier_state_list* %15, %struct.bpf_verifier_state_list** %4, align 8
  %16 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %3, align 8
  %17 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %16, i32 0, i32 0
  %18 = call i32 @free_verifier_state(i32* %17, i32 0)
  %19 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %3, align 8
  %20 = call i32 @kfree(%struct.bpf_verifier_state_list* %19)
  %21 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %4, align 8
  store %struct.bpf_verifier_state_list* %21, %struct.bpf_verifier_state_list** %3, align 8
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %24 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %23, i32 0, i32 0
  %25 = load %struct.bpf_verifier_state_list**, %struct.bpf_verifier_state_list*** %24, align 8
  %26 = icmp ne %struct.bpf_verifier_state_list** %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %64

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %56, %28
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %32 = call i32 @state_htab_size(%struct.bpf_verifier_env* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %36 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %35, i32 0, i32 0
  %37 = load %struct.bpf_verifier_state_list**, %struct.bpf_verifier_state_list*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %37, i64 %39
  %41 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %40, align 8
  store %struct.bpf_verifier_state_list* %41, %struct.bpf_verifier_state_list** %3, align 8
  br label %42

42:                                               ; preds = %45, %34
  %43 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %3, align 8
  %44 = icmp ne %struct.bpf_verifier_state_list* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %3, align 8
  %47 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %46, i32 0, i32 1
  %48 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %47, align 8
  store %struct.bpf_verifier_state_list* %48, %struct.bpf_verifier_state_list** %4, align 8
  %49 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %3, align 8
  %50 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %49, i32 0, i32 0
  %51 = call i32 @free_verifier_state(i32* %50, i32 0)
  %52 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %3, align 8
  %53 = call i32 @kfree(%struct.bpf_verifier_state_list* %52)
  %54 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %4, align 8
  store %struct.bpf_verifier_state_list* %54, %struct.bpf_verifier_state_list** %3, align 8
  br label %42

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %29

59:                                               ; preds = %29
  %60 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %2, align 8
  %61 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %60, i32 0, i32 0
  %62 = load %struct.bpf_verifier_state_list**, %struct.bpf_verifier_state_list*** %61, align 8
  %63 = call i32 @kvfree(%struct.bpf_verifier_state_list** %62)
  br label %64

64:                                               ; preds = %59, %27
  ret void
}

declare dso_local i32 @free_verifier_state(i32*, i32) #1

declare dso_local i32 @kfree(%struct.bpf_verifier_state_list*) #1

declare dso_local i32 @state_htab_size(%struct.bpf_verifier_env*) #1

declare dso_local i32 @kvfree(%struct.bpf_verifier_state_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
