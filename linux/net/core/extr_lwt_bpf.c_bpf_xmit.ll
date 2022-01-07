; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_lwt_bpf.c_bpf_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32 }
%struct.bpf_lwt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CAN_REDIRECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LWTUNNEL_XMIT_CONTINUE = common dso_local global i32 0, align 4
@LWTUNNEL_XMIT_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @bpf_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_xmit(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.bpf_lwt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %8)
  store %struct.dst_entry* %9, %struct.dst_entry** %4, align 8
  %10 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %11 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.bpf_lwt* @bpf_lwt_lwtunnel(i32 %12)
  store %struct.bpf_lwt* %13, %struct.bpf_lwt** %5, align 8
  %14 = load %struct.bpf_lwt*, %struct.bpf_lwt** %5, align 8
  %15 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %58

19:                                               ; preds = %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = load %struct.bpf_lwt*, %struct.bpf_lwt** %5, align 8
  %25 = getelementptr inbounds %struct.bpf_lwt, %struct.bpf_lwt* %24, i32 0, i32 0
  %26 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %27 = load i32, i32* @CAN_REDIRECT, align 4
  %28 = call i32 @run_lwt_bpf(%struct.sk_buff* %23, %struct.TYPE_2__* %25, %struct.dst_entry* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %56 [
    i32 129, label %30
    i32 128, label %51
    i32 130, label %53
  ]

30:                                               ; preds = %19
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %60

41:                                               ; preds = %30
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 @xmit_check_hhlen(%struct.sk_buff* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @unlikely(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %60

49:                                               ; preds = %41
  %50 = load i32, i32* @LWTUNNEL_XMIT_CONTINUE, align 4
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %19
  %52 = load i32, i32* @LWTUNNEL_XMIT_DONE, align 4
  store i32 %52, i32* %2, align 4
  br label %60

53:                                               ; preds = %19
  %54 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %55 = call i32 @bpf_lwt_xmit_reroute(%struct.sk_buff* %54)
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %19
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %1
  %59 = load i32, i32* @LWTUNNEL_XMIT_CONTINUE, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %56, %53, %51, %49, %47, %36
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local %struct.bpf_lwt* @bpf_lwt_lwtunnel(i32) #1

declare dso_local i32 @run_lwt_bpf(%struct.sk_buff*, %struct.TYPE_2__*, %struct.dst_entry*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @xmit_check_hhlen(%struct.sk_buff*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @bpf_lwt_xmit_reroute(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
