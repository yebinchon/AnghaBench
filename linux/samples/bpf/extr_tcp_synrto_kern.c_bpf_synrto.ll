; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_synrto_kern.c_bpf_synrto.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_synrto_kern.c_bpf_synrto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_ops = type { i64, i32, i32, i64, i64*, i64*, i64 }

@BPF_SOCK_OPS_TIMEOUT_INIT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_synrto(%struct.bpf_sock_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bpf_sock_ops* %0, %struct.bpf_sock_ops** %3, align 8
  store i32 -1, i32* %4, align 4
  %6 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %7 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @bpf_ntohl(i64 %8)
  %10 = icmp ne i32 %9, 55601
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 55601
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %18 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %17, i32 0, i32 2
  store i32 -1, i32* %18, align 4
  store i32 1, i32* %2, align 4
  br label %67

19:                                               ; preds = %11, %1
  %20 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %21 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @BPF_SOCK_OPS_TIMEOUT_INIT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %19
  %28 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %29 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %27
  %34 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %35 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %34, i32 0, i32 4
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %40 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %39, i32 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %38, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %33
  %46 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %47 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %46, i32 0, i32 4
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @bpf_ntohl(i64 %50)
  %52 = and i32 %51, -1048576
  %53 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %54 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %53, i32 0, i32 5
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @bpf_ntohl(i64 %57)
  %59 = and i32 %58, -1048576
  %60 = icmp eq i32 %52, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %45
  store i32 10, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %45, %33
  br label %63

63:                                               ; preds = %62, %27, %19
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %66 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  store i32 1, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @bpf_ntohl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
