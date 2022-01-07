; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_states_equal.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_states_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_verifier_state = type { i32, i64, %struct.TYPE_3__**, i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_verifier_env*, %struct.bpf_verifier_state*, %struct.bpf_verifier_state*)* @states_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @states_equal(%struct.bpf_verifier_env* %0, %struct.bpf_verifier_state* %1, %struct.bpf_verifier_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_verifier_env*, align 8
  %6 = alloca %struct.bpf_verifier_state*, align 8
  %7 = alloca %struct.bpf_verifier_state*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %5, align 8
  store %struct.bpf_verifier_state* %1, %struct.bpf_verifier_state** %6, align 8
  store %struct.bpf_verifier_state* %2, %struct.bpf_verifier_state** %7, align 8
  %9 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %10 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %7, align 8
  %13 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %88

17:                                               ; preds = %3
  %18 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %19 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %7, align 8
  %24 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %88

28:                                               ; preds = %22, %17
  %29 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %30 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %7, align 8
  %33 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %88

37:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %84, %37
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %41 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sle i32 %39, %42
  br i1 %43, label %44, label %87

44:                                               ; preds = %38
  %45 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %46 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %47, i64 %49
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %7, align 8
  %55 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %53, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %88

65:                                               ; preds = %44
  %66 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %67 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i64 %70
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %7, align 8
  %74 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %73, i32 0, i32 2
  %75 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %75, i64 %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 @func_states_equal(%struct.TYPE_3__* %72, %struct.TYPE_3__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %88

83:                                               ; preds = %65
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %38

87:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %82, %64, %36, %27, %16
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @func_states_equal(%struct.TYPE_3__*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
