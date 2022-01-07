; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_dumpstats_kern.c__sockops.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_tcp_dumpstats_kern.c__sockops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_sock_ops = type { i32, %struct.bpf_sock* }
%struct.bpf_sock = type { i32 }
%struct.bpf_tcp_sock = type { i32, i32, i32, i32 }

@BPF_SOCK_OPS_RTT_CB_FLAG = common dso_local global i32 0, align 4
@bpf_next_dump = common dso_local global i32 0, align 4
@BPF_SK_STORAGE_GET_F_CREATE = common dso_local global i32 0, align 4
@INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"dsack_dups=%u delivered=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"delivered_ce=%u icsk_retransmits=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_sockops(%struct.bpf_sock_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_ops*, align 8
  %4 = alloca %struct.bpf_tcp_sock*, align 8
  %5 = alloca %struct.bpf_sock*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.bpf_sock_ops* %0, %struct.bpf_sock_ops** %3, align 8
  %8 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %9 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %16 [
    i32 128, label %11
    i32 129, label %15
  ]

11:                                               ; preds = %1
  %12 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %13 = load i32, i32* @BPF_SOCK_OPS_RTT_CB_FLAG, align 4
  %14 = call i32 @bpf_sock_ops_cb_flags_set(%struct.bpf_sock_ops* %12, i32 %13)
  store i32 1, i32* %2, align 4
  br label %63

15:                                               ; preds = %1
  br label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %63

17:                                               ; preds = %15
  %18 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %19 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %18, i32 0, i32 1
  %20 = load %struct.bpf_sock*, %struct.bpf_sock** %19, align 8
  store %struct.bpf_sock* %20, %struct.bpf_sock** %5, align 8
  %21 = load %struct.bpf_sock*, %struct.bpf_sock** %5, align 8
  %22 = icmp ne %struct.bpf_sock* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %63

24:                                               ; preds = %17
  %25 = load %struct.bpf_sock*, %struct.bpf_sock** %5, align 8
  %26 = load i32, i32* @BPF_SK_STORAGE_GET_F_CREATE, align 4
  %27 = call i64* @bpf_sk_storage_get(i32* @bpf_next_dump, %struct.bpf_sock* %25, i32 0, i32 %26)
  store i64* %27, i64** %6, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %63

31:                                               ; preds = %24
  %32 = call i64 (...) @bpf_ktime_get_ns()
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %63

38:                                               ; preds = %31
  %39 = load %struct.bpf_sock*, %struct.bpf_sock** %5, align 8
  %40 = call %struct.bpf_tcp_sock* @bpf_tcp_sock(%struct.bpf_sock* %39)
  store %struct.bpf_tcp_sock* %40, %struct.bpf_tcp_sock** %4, align 8
  %41 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %4, align 8
  %42 = icmp ne %struct.bpf_tcp_sock* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %63

44:                                               ; preds = %38
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @INTERVAL, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64*, i64** %6, align 8
  store i64 %47, i64* %48, align 8
  %49 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %4, align 8
  %50 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %4, align 8
  %53 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bpf_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %54)
  %56 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %4, align 8
  %57 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.bpf_tcp_sock*, %struct.bpf_tcp_sock** %4, align 8
  %60 = getelementptr inbounds %struct.bpf_tcp_sock, %struct.bpf_tcp_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bpf_printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %61)
  store i32 1, i32* %2, align 4
  br label %63

63:                                               ; preds = %44, %43, %37, %30, %23, %16, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @bpf_sock_ops_cb_flags_set(%struct.bpf_sock_ops*, i32) #1

declare dso_local i64* @bpf_sk_storage_get(i32*, %struct.bpf_sock*, i32, i32) #1

declare dso_local i64 @bpf_ktime_get_ns(...) #1

declare dso_local %struct.bpf_tcp_sock* @bpf_tcp_sock(%struct.bpf_sock*) #1

declare dso_local i32 @bpf_printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
