; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_clean_live_states.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_clean_live_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_verifier_state = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }
%struct.bpf_verifier_state_list = type { %struct.bpf_verifier_state_list*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__**, i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, i32, %struct.bpf_verifier_state*)* @clean_live_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_live_states(%struct.bpf_verifier_env* %0, i32 %1, %struct.bpf_verifier_state* %2) #0 {
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bpf_verifier_state*, align 8
  %7 = alloca %struct.bpf_verifier_state_list*, align 8
  %8 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.bpf_verifier_state* %2, %struct.bpf_verifier_state** %6, align 8
  %9 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.bpf_verifier_state_list** @explored_state(%struct.bpf_verifier_env* %9, i32 %10)
  %12 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %11, align 8
  store %struct.bpf_verifier_state_list* %12, %struct.bpf_verifier_state_list** %7, align 8
  br label %13

13:                                               ; preds = %78, %3
  %14 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %15 = icmp ne %struct.bpf_verifier_state_list* %14, null
  br i1 %15, label %16, label %82

16:                                               ; preds = %13
  %17 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %18 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %78

23:                                               ; preds = %16
  %24 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %25 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %39, label %30

30:                                               ; preds = %23
  %31 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %32 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %36 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %30, %23
  br label %78

40:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %70, %40
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %44 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %42, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %41
  %48 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %49 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %51, i64 %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %6, align 8
  %59 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %60, i64 %62
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %57, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %47
  br label %78

69:                                               ; preds = %47
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %41

73:                                               ; preds = %41
  %74 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %75 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %76 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %75, i32 0, i32 1
  %77 = call i32 @clean_verifier_state(%struct.bpf_verifier_env* %74, %struct.TYPE_6__* %76)
  br label %78

78:                                               ; preds = %73, %68, %39, %22
  %79 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %7, align 8
  %80 = getelementptr inbounds %struct.bpf_verifier_state_list, %struct.bpf_verifier_state_list* %79, i32 0, i32 0
  %81 = load %struct.bpf_verifier_state_list*, %struct.bpf_verifier_state_list** %80, align 8
  store %struct.bpf_verifier_state_list* %81, %struct.bpf_verifier_state_list** %7, align 8
  br label %13

82:                                               ; preds = %13
  ret void
}

declare dso_local %struct.bpf_verifier_state_list** @explored_state(%struct.bpf_verifier_env*, i32) #1

declare dso_local i32 @clean_verifier_state(%struct.bpf_verifier_env*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
