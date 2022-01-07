; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_update_branch_counts.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_update_branch_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_verifier_state = type { %struct.bpf_verifier_state*, i64 }

@.str = private unnamed_addr constant [49 x i8] c"BUG update_branch_counts:branches_to_explore=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, %struct.bpf_verifier_state*)* @update_branch_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_branch_counts(%struct.bpf_verifier_env* %0, %struct.bpf_verifier_state* %1) #0 {
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_verifier_state*, align 8
  %5 = alloca i64, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store %struct.bpf_verifier_state* %1, %struct.bpf_verifier_state** %4, align 8
  br label %6

6:                                                ; preds = %23, %2
  %7 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %8 = icmp ne %struct.bpf_verifier_state* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %11 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = trunc i64 %14 to i32
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @WARN_ONCE(i32 %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %9
  br label %27

23:                                               ; preds = %9
  %24 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %25 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %24, i32 0, i32 0
  %26 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %25, align 8
  store %struct.bpf_verifier_state* %26, %struct.bpf_verifier_state** %4, align 8
  br label %6

27:                                               ; preds = %22, %6
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
