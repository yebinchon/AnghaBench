; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c___cgroup_bpf_run_filter_sock_addr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_cgroup.c___cgroup_bpf_run_filter_sock_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.bpf_sock_addr_kern = type { i8*, %struct.sockaddr*, %struct.sock* }
%struct.sockaddr_storage = type { i32 }
%struct.cgroup = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@BPF_PROG_RUN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cgroup_bpf_run_filter_sock_addr(%struct.sock* %0, %struct.sockaddr* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.bpf_sock_addr_kern, align 8
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca %struct.cgroup*, align 8
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = getelementptr inbounds %struct.bpf_sock_addr_kern, %struct.bpf_sock_addr_kern* %10, i32 0, i32 0
  %15 = load i8*, i8** %9, align 8
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds %struct.bpf_sock_addr_kern, %struct.bpf_sock_addr_kern* %10, i32 0, i32 1
  %17 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  store %struct.sockaddr* %17, %struct.sockaddr** %16, align 8
  %18 = getelementptr inbounds %struct.bpf_sock_addr_kern, %struct.bpf_sock_addr_kern* %10, i32 0, i32 2
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  store %struct.sock* %19, %struct.sock** %18, align 8
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %4
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET6, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %62

32:                                               ; preds = %25, %4
  %33 = getelementptr inbounds %struct.bpf_sock_addr_kern, %struct.bpf_sock_addr_kern* %10, i32 0, i32 1
  %34 = load %struct.sockaddr*, %struct.sockaddr** %33, align 8
  %35 = icmp ne %struct.sockaddr* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = call i32 @memset(%struct.sockaddr_storage* %11, i32 0, i32 4)
  %38 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %39 = getelementptr inbounds %struct.bpf_sock_addr_kern, %struct.bpf_sock_addr_kern* %10, i32 0, i32 1
  store %struct.sockaddr* %38, %struct.sockaddr** %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  %43 = call %struct.cgroup* @sock_cgroup_ptr(i32* %42)
  store %struct.cgroup* %43, %struct.cgroup** %12, align 8
  %44 = load %struct.cgroup*, %struct.cgroup** %12, align 8
  %45 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BPF_PROG_RUN, align 4
  %53 = call i32 @BPF_PROG_RUN_ARRAY(i32 %51, %struct.bpf_sock_addr_kern* %10, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %40
  br label %60

57:                                               ; preds = %40
  %58 = load i32, i32* @EPERM, align 4
  %59 = sub nsw i32 0, %58
  br label %60

60:                                               ; preds = %57, %56
  %61 = phi i32 [ 0, %56 ], [ %59, %57 ]
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %31
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local %struct.cgroup* @sock_cgroup_ptr(i32*) #1

declare dso_local i32 @BPF_PROG_RUN_ARRAY(i32, %struct.bpf_sock_addr_kern*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
