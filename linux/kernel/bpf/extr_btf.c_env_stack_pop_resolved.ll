; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_env_stack_pop_resolved.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_btf.c_env_stack_pop_resolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_verifier_env = type { i64, i32*, %struct.btf*, %struct.TYPE_2__* }
%struct.btf = type { i64*, i64* }
%struct.TYPE_2__ = type { i64 }

@RESOLVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btf_verifier_env*, i64, i64)* @env_stack_pop_resolved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @env_stack_pop_resolved(%struct.btf_verifier_env* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.btf_verifier_env*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.btf*, align 8
  store %struct.btf_verifier_env* %0, %struct.btf_verifier_env** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %10 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %13 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %20 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %19, i32 0, i32 2
  %21 = load %struct.btf*, %struct.btf** %20, align 8
  store %struct.btf* %21, %struct.btf** %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.btf*, %struct.btf** %8, align 8
  %24 = getelementptr inbounds %struct.btf, %struct.btf* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 %22, i64* %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.btf*, %struct.btf** %8, align 8
  %30 = getelementptr inbounds %struct.btf, %struct.btf* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 %28, i64* %33, align 8
  %34 = load i32, i32* @RESOLVED, align 4
  %35 = load %struct.btf_verifier_env*, %struct.btf_verifier_env** %4, align 8
  %36 = getelementptr inbounds %struct.btf_verifier_env, %struct.btf_verifier_env* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
