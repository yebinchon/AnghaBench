; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_subprog_starts.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_adjust_subprog_starts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bpf_verifier_env*, i32, i32)* @adjust_subprog_starts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_subprog_starts(%struct.bpf_verifier_env* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %45

11:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %42, %11
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %12
  %19 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %20 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp sle i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %42

30:                                               ; preds = %18
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %34 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %32
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %30, %29
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %12

45:                                               ; preds = %10, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
