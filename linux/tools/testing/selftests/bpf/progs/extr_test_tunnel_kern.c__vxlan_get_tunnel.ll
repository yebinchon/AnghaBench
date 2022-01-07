; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tunnel_kern.c__vxlan_get_tunnel.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_test_tunnel_kern.c__vxlan_get_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__sk_buff = type { i32 }
%struct.bpf_tunnel_key = type { i32, i32 }
%struct.vxlan_metadata = type { i32 }

@__const._vxlan_get_tunnel.fmt = private unnamed_addr constant [38 x i8] c"key %d remote ip 0x%x vxlan gbp 0x%x\0A\00", align 16
@TC_ACT_SHOT = common dso_local global i32 0, align 4
@TC_ACT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_vxlan_get_tunnel(%struct.__sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_tunnel_key, align 4
  %6 = alloca %struct.vxlan_metadata, align 4
  %7 = alloca [38 x i8], align 16
  store %struct.__sk_buff* %0, %struct.__sk_buff** %3, align 8
  %8 = bitcast [38 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([38 x i8], [38 x i8]* @__const._vxlan_get_tunnel.fmt, i32 0, i32 0), i64 38, i1 false)
  %9 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %10 = call i32 @bpf_skb_get_tunnel_key(%struct.__sk_buff* %9, %struct.bpf_tunnel_key* %5, i32 8, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ERROR(i32 %14)
  %16 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %16, i32* %2, align 4
  br label %36

17:                                               ; preds = %1
  %18 = load %struct.__sk_buff*, %struct.__sk_buff** %3, align 8
  %19 = call i32 @bpf_skb_get_tunnel_opt(%struct.__sk_buff* %18, %struct.vxlan_metadata* %6, i32 4)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @ERROR(i32 %23)
  %25 = load i32, i32* @TC_ACT_SHOT, align 4
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %17
  %27 = getelementptr inbounds [38 x i8], [38 x i8]* %7, i64 0, i64 0
  %28 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %5, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.bpf_tunnel_key, %struct.bpf_tunnel_key* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.vxlan_metadata, %struct.vxlan_metadata* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bpf_trace_printk(i8* %27, i32 38, i32 %29, i32 %31, i32 %33)
  %35 = load i32, i32* @TC_ACT_OK, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %26, %22, %13
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bpf_skb_get_tunnel_key(%struct.__sk_buff*, %struct.bpf_tunnel_key*, i32, i32) #2

declare dso_local i32 @ERROR(i32) #2

declare dso_local i32 @bpf_skb_get_tunnel_opt(%struct.__sk_buff*, %struct.vxlan_metadata*, i32) #2

declare dso_local i32 @bpf_trace_printk(i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
