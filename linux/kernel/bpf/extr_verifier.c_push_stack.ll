; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_push_stack.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_push_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_verifier_env = type { i64, %struct.bpf_verifier_state*, %struct.bpf_verifier_stack_elem* }
%struct.bpf_verifier_stack_elem = type { i32, i32, %struct.bpf_verifier_state, %struct.bpf_verifier_stack_elem* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@BPF_COMPLEXITY_LIMIT_JMP_SEQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"The sequence of %d jumps is too complex.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_verifier_state* (%struct.bpf_verifier_env*, i32, i32, i32)* @push_stack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_verifier_state* @push_stack(%struct.bpf_verifier_env* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bpf_verifier_state*, align 8
  %6 = alloca %struct.bpf_verifier_env*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_verifier_state*, align 8
  %11 = alloca %struct.bpf_verifier_stack_elem*, align 8
  %12 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %14 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %13, i32 0, i32 1
  %15 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %14, align 8
  store %struct.bpf_verifier_state* %15, %struct.bpf_verifier_state** %10, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.bpf_verifier_stack_elem* @kzalloc(i32 32, i32 %16)
  store %struct.bpf_verifier_stack_elem* %17, %struct.bpf_verifier_stack_elem** %11, align 8
  %18 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %11, align 8
  %19 = icmp ne %struct.bpf_verifier_stack_elem* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %82

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %11, align 8
  %24 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %11, align 8
  %27 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %29 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %28, i32 0, i32 2
  %30 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %29, align 8
  %31 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %11, align 8
  %32 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %31, i32 0, i32 3
  store %struct.bpf_verifier_stack_elem* %30, %struct.bpf_verifier_stack_elem** %32, align 8
  %33 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %11, align 8
  %34 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %35 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %34, i32 0, i32 2
  store %struct.bpf_verifier_stack_elem* %33, %struct.bpf_verifier_stack_elem** %35, align 8
  %36 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %37 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %11, align 8
  %41 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %40, i32 0, i32 2
  %42 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %10, align 8
  %43 = call i32 @copy_verifier_state(%struct.bpf_verifier_state* %41, %struct.bpf_verifier_state* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %21
  br label %82

47:                                               ; preds = %21
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %11, align 8
  %50 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %48
  store i32 %53, i32* %51, align 8
  %54 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %55 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @BPF_COMPLEXITY_LIMIT_JMP_SEQ, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %61 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %62 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @verbose(%struct.bpf_verifier_env* %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %63)
  br label %82

65:                                               ; preds = %47
  %66 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %11, align 8
  %67 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = icmp ne %struct.TYPE_2__* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %11, align 8
  %73 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %71, %65
  %80 = load %struct.bpf_verifier_stack_elem*, %struct.bpf_verifier_stack_elem** %11, align 8
  %81 = getelementptr inbounds %struct.bpf_verifier_stack_elem, %struct.bpf_verifier_stack_elem* %80, i32 0, i32 2
  store %struct.bpf_verifier_state* %81, %struct.bpf_verifier_state** %5, align 8
  br label %96

82:                                               ; preds = %59, %46, %20
  %83 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %84 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %83, i32 0, i32 1
  %85 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %84, align 8
  %86 = call i32 @free_verifier_state(%struct.bpf_verifier_state* %85, i32 1)
  %87 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %88 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %87, i32 0, i32 1
  store %struct.bpf_verifier_state* null, %struct.bpf_verifier_state** %88, align 8
  br label %89

89:                                               ; preds = %94, %82
  %90 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %6, align 8
  %91 = call i32 @pop_stack(%struct.bpf_verifier_env* %90, i32* null, i32* null)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %89

95:                                               ; preds = %89
  store %struct.bpf_verifier_state* null, %struct.bpf_verifier_state** %5, align 8
  br label %96

96:                                               ; preds = %95, %79
  %97 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %5, align 8
  ret %struct.bpf_verifier_state* %97
}

declare dso_local %struct.bpf_verifier_stack_elem* @kzalloc(i32, i32) #1

declare dso_local i32 @copy_verifier_state(%struct.bpf_verifier_state*, %struct.bpf_verifier_state*) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, i64) #1

declare dso_local i32 @free_verifier_state(%struct.bpf_verifier_state*, i32) #1

declare dso_local i32 @pop_stack(%struct.bpf_verifier_env*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
