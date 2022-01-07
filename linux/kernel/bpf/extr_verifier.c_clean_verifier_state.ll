; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_clean_verifier_state.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_clean_verifier_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32 }
%struct.bpf_verifier_state = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@REG_LIVE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, %struct.bpf_verifier_state*)* @clean_verifier_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_verifier_state(%struct.bpf_verifier_env* %0, %struct.bpf_verifier_state* %1) #0 {
  %3 = alloca %struct.bpf_verifier_env*, align 8
  %4 = alloca %struct.bpf_verifier_state*, align 8
  %5 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %3, align 8
  store %struct.bpf_verifier_state* %1, %struct.bpf_verifier_state** %4, align 8
  %6 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %7 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %8, i64 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @REG_LIVE_DONE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %40

20:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %24 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %3, align 8
  %29 = load %struct.bpf_verifier_state*, %struct.bpf_verifier_state** %4, align 8
  %30 = getelementptr inbounds %struct.bpf_verifier_state, %struct.bpf_verifier_state* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @clean_func_state(%struct.bpf_verifier_env* %28, %struct.TYPE_4__* %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %21

40:                                               ; preds = %19, %21
  ret void
}

declare dso_local i32 @clean_func_state(%struct.bpf_verifier_env*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
