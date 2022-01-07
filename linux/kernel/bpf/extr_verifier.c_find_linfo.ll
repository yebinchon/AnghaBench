; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_find_linfo.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_find_linfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_line_info = type { i64 }
%struct.bpf_verifier_env = type { %struct.bpf_prog* }
%struct.bpf_prog = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.bpf_line_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bpf_line_info* (%struct.bpf_verifier_env*, i64)* @find_linfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bpf_line_info* @find_linfo(%struct.bpf_verifier_env* %0, i64 %1) #0 {
  %3 = alloca %struct.bpf_line_info*, align 8
  %4 = alloca %struct.bpf_verifier_env*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.bpf_line_info*, align 8
  %7 = alloca %struct.bpf_prog*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.bpf_verifier_env* %0, %struct.bpf_verifier_env** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %4, align 8
  %11 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %10, i32 0, i32 0
  %12 = load %struct.bpf_prog*, %struct.bpf_prog** %11, align 8
  store %struct.bpf_prog* %12, %struct.bpf_prog** %7, align 8
  %13 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %14 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %23 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %2
  store %struct.bpf_line_info* null, %struct.bpf_line_info** %3, align 8
  br label %55

27:                                               ; preds = %20
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %7, align 8
  %29 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.bpf_line_info*, %struct.bpf_line_info** %31, align 8
  store %struct.bpf_line_info* %32, %struct.bpf_line_info** %6, align 8
  store i64 1, i64* %8, align 8
  br label %33

33:                                               ; preds = %47, %27
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.bpf_line_info*, %struct.bpf_line_info** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %39, i64 %40
  %42 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %38, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %50

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %33

50:                                               ; preds = %45, %33
  %51 = load %struct.bpf_line_info*, %struct.bpf_line_info** %6, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %52, 1
  %54 = getelementptr inbounds %struct.bpf_line_info, %struct.bpf_line_info* %51, i64 %53
  store %struct.bpf_line_info* %54, %struct.bpf_line_info** %3, align 8
  br label %55

55:                                               ; preds = %50, %26
  %56 = load %struct.bpf_line_info*, %struct.bpf_line_info** %3, align 8
  ret %struct.bpf_line_info* %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
