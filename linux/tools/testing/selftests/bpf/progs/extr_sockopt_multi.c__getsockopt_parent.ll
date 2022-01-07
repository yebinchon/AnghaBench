; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockopt_multi.c__getsockopt_parent.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockopt_multi.c__getsockopt_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sockopt = type { i32*, i32*, i64, i64, i32, i64 }

@SOL_IP = common dso_local global i64 0, align 8
@IP_TOS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_getsockopt_parent(%struct.bpf_sockopt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sockopt*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.bpf_sockopt* %0, %struct.bpf_sockopt** %3, align 8
  %6 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %4, align 8
  %9 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOL_IP, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IP_TOS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  store i32 1, i32* %2, align 4
  br label %43

24:                                               ; preds = %17
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32*, i32** %4, align 8
  %28 = icmp ugt i32* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %43

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 144
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %43

36:                                               ; preds = %30
  %37 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %38 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 160, i32* %40, align 4
  %41 = load %struct.bpf_sockopt*, %struct.bpf_sockopt** %3, align 8
  %42 = getelementptr inbounds %struct.bpf_sockopt, %struct.bpf_sockopt* %41, i32 0, i32 4
  store i32 1, i32* %42, align 8
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %36, %35, %29, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
