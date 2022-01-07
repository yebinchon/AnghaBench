; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tcpnotify_kern.c_bpf_testcb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tcpnotify_kern.c_bpf_testcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_notifier = type { i32, i32, i32, i32 }
%struct.bpf_sock_ops = type { i32, i32, i32, i64 }
%struct.tcpnotify_globals = type { i32, i32 }

@TESTPORT = common dso_local global i64 0, align 8
@BPF_SOCK_OPS_RETRANS_CB_FLAG = common dso_local global i32 0, align 4
@BPF_SOCK_OPS_RTO_CB_FLAG = common dso_local global i32 0, align 4
@__const.bpf_testcb.msg = private unnamed_addr constant %struct.tcp_notifier { i32 222, i32 173, i32 190, i32 239 }, align 4
@global_map = common dso_local global i32 0, align 4
@BPF_ANY = common dso_local global i32 0, align 4
@perf_event_map = common dso_local global i32 0, align 4
@BPF_F_CURRENT_CPU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_testcb(%struct.bpf_sock_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_sock_ops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcpnotify_globals, align 4
  %8 = alloca %struct.tcpnotify_globals*, align 8
  %9 = alloca %struct.tcp_notifier, align 4
  store %struct.bpf_sock_ops* %0, %struct.bpf_sock_ops** %3, align 8
  store i32 -1, i32* %4, align 4
  %10 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %11 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %15 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @bpf_ntohl(i32 %16)
  %18 = load i64, i64* @TESTPORT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %22 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %21, i32 0, i32 0
  store i32 -1, i32* %22, align 8
  store i32 0, i32* %2, align 4
  br label %59

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %54 [
    i32 128, label %25
    i32 131, label %25
    i32 135, label %25
    i32 136, label %25
    i32 132, label %25
    i32 130, label %26
    i32 129, label %26
    i32 137, label %26
    i32 134, label %26
    i32 133, label %32
  ]

25:                                               ; preds = %23, %23, %23, %23, %23
  store i32 1, i32* %4, align 4
  br label %55

26:                                               ; preds = %23, %23, %23, %23
  %27 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %28 = load i32, i32* @BPF_SOCK_OPS_RETRANS_CB_FLAG, align 4
  %29 = load i32, i32* @BPF_SOCK_OPS_RTO_CB_FLAG, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @bpf_sock_ops_cb_flags_set(%struct.bpf_sock_ops* %27, i32 %30)
  store i32 1, i32* %4, align 4
  br label %55

32:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  %33 = bitcast %struct.tcp_notifier* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 bitcast (%struct.tcp_notifier* @__const.bpf_testcb.msg to i8*), i64 16, i1 false)
  store i32 1, i32* %4, align 4
  %34 = call %struct.tcpnotify_globals* @bpf_map_lookup_elem(i32* @global_map, i32* %6)
  store %struct.tcpnotify_globals* %34, %struct.tcpnotify_globals** %8, align 8
  %35 = load %struct.tcpnotify_globals*, %struct.tcpnotify_globals** %8, align 8
  %36 = icmp ne %struct.tcpnotify_globals* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %55

38:                                               ; preds = %32
  %39 = load %struct.tcpnotify_globals*, %struct.tcpnotify_globals** %8, align 8
  %40 = bitcast %struct.tcpnotify_globals* %7 to i8*
  %41 = bitcast %struct.tcpnotify_globals* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 8, i1 false)
  %42 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %43 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.tcpnotify_globals, %struct.tcpnotify_globals* %7, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.tcpnotify_globals, %struct.tcpnotify_globals* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* @BPF_ANY, align 4
  %50 = call i32 @bpf_map_update_elem(i32* @global_map, i32* %6, %struct.tcpnotify_globals* %7, i32 %49)
  %51 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %52 = load i32, i32* @BPF_F_CURRENT_CPU, align 4
  %53 = call i32 @bpf_perf_event_output(%struct.bpf_sock_ops* %51, i32* @perf_event_map, i32 %52, %struct.tcp_notifier* %9, i32 16)
  br label %55

54:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %38, %37, %26, %25
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.bpf_sock_ops*, %struct.bpf_sock_ops** %3, align 8
  %58 = getelementptr inbounds %struct.bpf_sock_ops, %struct.bpf_sock_ops* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %20
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @bpf_ntohl(i32) #1

declare dso_local i32 @bpf_sock_ops_cb_flags_set(%struct.bpf_sock_ops*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.tcpnotify_globals* @bpf_map_lookup_elem(i32*, i32*) #1

declare dso_local i32 @bpf_map_update_elem(i32*, i32*, %struct.tcpnotify_globals*, i32) #1

declare dso_local i32 @bpf_perf_event_output(%struct.bpf_sock_ops*, i32*, i32, %struct.tcp_notifier*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
