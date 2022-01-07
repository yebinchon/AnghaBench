; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_func_states_equal.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_func_states_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_state = type { i32* }
%struct.idpair = type { i32 }

@ID_MAP_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@MAX_BPF_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_func_state*, %struct.bpf_func_state*)* @func_states_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_states_equal(%struct.bpf_func_state* %0, %struct.bpf_func_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_func_state*, align 8
  %5 = alloca %struct.bpf_func_state*, align 8
  %6 = alloca %struct.idpair*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_func_state* %0, %struct.bpf_func_state** %4, align 8
  store %struct.bpf_func_state* %1, %struct.bpf_func_state** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* @ID_MAP_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.idpair* @kcalloc(i32 %9, i32 4, i32 %10)
  store %struct.idpair* %11, %struct.idpair** %6, align 8
  %12 = load %struct.idpair*, %struct.idpair** %6, align 8
  %13 = icmp ne %struct.idpair* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

15:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @MAX_BPF_REG, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %22 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %28 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load %struct.idpair*, %struct.idpair** %6, align 8
  %34 = call i32 @regsafe(i32* %26, i32* %32, %struct.idpair* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %20
  br label %55

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %16

41:                                               ; preds = %16
  %42 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %43 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %44 = load %struct.idpair*, %struct.idpair** %6, align 8
  %45 = call i32 @stacksafe(%struct.bpf_func_state* %42, %struct.bpf_func_state* %43, %struct.idpair* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41
  br label %55

48:                                               ; preds = %41
  %49 = load %struct.bpf_func_state*, %struct.bpf_func_state** %4, align 8
  %50 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %51 = call i32 @refsafe(%struct.bpf_func_state* %49, %struct.bpf_func_state* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %55

54:                                               ; preds = %48
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %54, %53, %47, %36
  %56 = load %struct.idpair*, %struct.idpair** %6, align 8
  %57 = call i32 @kfree(%struct.idpair* %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %14
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.idpair* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @regsafe(i32*, i32*, %struct.idpair*) #1

declare dso_local i32 @stacksafe(%struct.bpf_func_state*, %struct.bpf_func_state*, %struct.idpair*) #1

declare dso_local i32 @refsafe(%struct.bpf_func_state*, %struct.bpf_func_state*) #1

declare dso_local i32 @kfree(%struct.idpair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
