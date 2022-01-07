; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_clamp_kern.c_bpf_clamp.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_clamp_kern.c_bpf_clamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_ops = type { i64, i32, i32, i64, i64*, i64*, i64 }

@AF_INET6 = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@SOL_TCP = common dso_local global i32 0, align 4
@TCP_BPF_SNDCWND_CLAMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_clamp(%struct.bpf_sock_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bpf_sock_ops* %0, %struct.bpf_sock_ops** %3, align 8
  store i32 150000, i32* %4, align 4
  store i32 10, i32* %5, align 4
  store i32 100, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @bpf_ntohl(i64 %11)
  %13 = icmp ne i32 %12, 55601
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %16 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 55601
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %20, i32 0, i32 2
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %2, align 4
  br label %104

22:                                               ; preds = %14, %1
  %23 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %24 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %28 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @AF_INET6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %99

32:                                               ; preds = %22
  %33 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %34 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %33, i32 0, i32 4
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %39 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %38, i32 0, i32 5
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %99

44:                                               ; preds = %32
  %45 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %46 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %45, i32 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @bpf_ntohl(i64 %49)
  %51 = and i32 %50, -1048576
  %52 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %53 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %52, i32 0, i32 5
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @bpf_ntohl(i64 %56)
  %58 = and i32 %57, -1048576
  %59 = icmp eq i32 %51, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %44
  %61 = load i32, i32* %8, align 4
  switch i32 %61, label %97 [
    i32 128, label %62
    i32 129, label %64
    i32 131, label %75
    i32 130, label %80
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %7, align 4
  br label %98

64:                                               ; preds = %60
  %65 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %66 = load i32, i32* @SOL_SOCKET, align 4
  %67 = load i32, i32* @SO_SNDBUF, align 4
  %68 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %65, i32 %66, i32 %67, i32* %4, i32 4)
  store i32 %68, i32* %7, align 4
  %69 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %70 = load i32, i32* @SOL_SOCKET, align 4
  %71 = load i32, i32* @SO_RCVBUF, align 4
  %72 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %69, i32 %70, i32 %71, i32* %4, i32 4)
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %98

75:                                               ; preds = %60
  %76 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %77 = load i32, i32* @SOL_TCP, align 4
  %78 = load i32, i32* @TCP_BPF_SNDCWND_CLAMP, align 4
  %79 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %76, i32 %77, i32 %78, i32* %6, i32 4)
  store i32 %79, i32* %7, align 4
  br label %98

80:                                               ; preds = %60
  %81 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %82 = load i32, i32* @SOL_TCP, align 4
  %83 = load i32, i32* @TCP_BPF_SNDCWND_CLAMP, align 4
  %84 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %81, i32 %82, i32 %83, i32* %6, i32 4)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %86 = load i32, i32* @SOL_SOCKET, align 4
  %87 = load i32, i32* @SO_SNDBUF, align 4
  %88 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %85, i32 %86, i32 %87, i32* %4, i32 4)
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %92 = load i32, i32* @SOL_SOCKET, align 4
  %93 = load i32, i32* @SO_RCVBUF, align 4
  %94 = call i32 @bpf_setsockopt(%struct.bpf_sock_ops* %91, i32 %92, i32 %93, i32* %4, i32 4)
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  br label %98

97:                                               ; preds = %60
  store i32 -1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %80, %75, %64, %62
  br label %100

99:                                               ; preds = %44, %32, %22
  store i32 -1, i32* %7, align 4
  br label %100

100:                                              ; preds = %99, %98
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %103 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  store i32 1, i32* %2, align 4
  br label %104

104:                                              ; preds = %100, %19
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @bpf_ntohl(i64) #1

declare dso_local i32 @bpf_setsockopt(%struct.bpf_sock_ops*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
