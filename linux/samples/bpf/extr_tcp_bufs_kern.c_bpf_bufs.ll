; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_bufs_kern.c_bpf_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_bufs_kern.c_bpf_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_ops = type { i32, i32, i64, i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_bufs(%struct.bpf_sock_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bpf_sock_ops* %0, %struct.bpf_sock_ops** %3, align 8
  store i32 1500000, i32* %4, align 4
  store i32 40, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bpf_ntohl(i32 %10)
  %12 = icmp ne i32 %11, 55601
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 55601
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %19, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  store i32 1, i32* %2, align 4
  br label %57

21:                                               ; preds = %13, %1
  %22 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %23 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %52 [
    i32 129, label %27
    i32 128, label %29
    i32 131, label %40
    i32 130, label %41
  ]

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %6, align 4
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %31 = load i32, i32* @SOL_SOCKET, align 4
  %32 = load i32, i32* @SO_SNDBUF, align 4
  %33 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %30, i32 %31, i32 %32, i32* %4, i32 4)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %35 = load i32, i32* @SOL_SOCKET, align 4
  %36 = load i32, i32* @SO_RCVBUF, align 4
  %37 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %34, i32 %35, i32 %36, i32* %4, i32 4)
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %53

40:                                               ; preds = %21
  br label %53

41:                                               ; preds = %21
  %42 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %43 = load i32, i32* @SOL_SOCKET, align 4
  %44 = load i32, i32* @SO_SNDBUF, align 4
  %45 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %42, i32 %43, i32 %44, i32* %4, i32 4)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %47 = load i32, i32* @SOL_SOCKET, align 4
  %48 = load i32, i32* @SO_RCVBUF, align 4
  %49 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %46, i32 %47, i32 %48, i32* %4, i32 4)
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %53

52:                                               ; preds = %21
  store i32 -1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %41, %40, %29, %27
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %56 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %18
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @bpf_ntohl(i32) #1

declare dso_local i32 @bpf_setsockopt(%struct.bpf_sock_ops*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
