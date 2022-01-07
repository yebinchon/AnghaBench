; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_iw_kern.c_bpf_iw.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_iw_kern.c_bpf_iw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_ops = type { i32, i32, i64, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_BPF_IW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_iw(%struct.bpf_sock_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_sock_ops* %0, %struct.bpf_sock_ops** %3, align 8
  store i32 1500000, i32* %4, align 4
  store i32 40, i32* %5, align 4
  store i32 40, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @bpf_ntohl(i32 %11)
  %13 = icmp ne i32 %12, 55601
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %16 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 55601
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %20, i32 0, i32 1
  store i32 -1, i32* %21, align 4
  store i32 1, i32* %2, align 4
  br label %62

22:                                               ; preds = %14, %1
  %23 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %24 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %57 [
    i32 129, label %28
    i32 128, label %30
    i32 131, label %41
    i32 130, label %46
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %7, align 4
  br label %58

30:                                               ; preds = %22
  %31 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %32 = load i32, i32* @SOL_SOCKET, align 4
  %33 = load i32, i32* @SO_SNDBUF, align 4
  %34 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %31, i32 %32, i32 %33, i32* %4, i32 4)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %36 = load i32, i32* @SOL_SOCKET, align 4
  %37 = load i32, i32* @SO_RCVBUF, align 4
  %38 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %35, i32 %36, i32 %37, i32* %4, i32 4)
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %58

41:                                               ; preds = %22
  %42 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %43 = load i32, i32* @SOL_TCP, align 4
  %44 = load i32, i32* @TCP_BPF_IW, align 4
  %45 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %42, i32 %43, i32 %44, i32* %6, i32 4)
  store i32 %45, i32* %7, align 4
  br label %58

46:                                               ; preds = %22
  %47 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %48 = load i32, i32* @SOL_SOCKET, align 4
  %49 = load i32, i32* @SO_SNDBUF, align 4
  %50 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %47, i32 %48, i32 %49, i32* %4, i32 4)
  store i32 %50, i32* %7, align 4
  %51 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %52 = load i32, i32* @SOL_SOCKET, align 4
  %53 = load i32, i32* @SO_RCVBUF, align 4
  %54 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %51, i32 %52, i32 %53, i32* %4, i32 4)
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %58

57:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %46, %41, %30, %28
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %61 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %19
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @bpf_ntohl(i32) #1

declare dso_local i32 @bpf_setsockopt(%struct.bpf_sock_ops*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
