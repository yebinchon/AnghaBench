; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_sockglue.c_ip_local_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_sockglue.c_ip_local_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_sock = type { i32 }
%struct.sock_exterr_skb = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i64, i64, i64, i32 }
%struct.iphdr = type { i32 }
%struct.sk_buff = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_local_error(%struct.sock* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.inet_sock*, align 8
  %12 = alloca %struct.sock_exterr_skb*, align 8
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = call %struct.inet_sock* @inet_sk(%struct.sock* %15)
  store %struct.inet_sock* %16, %struct.inet_sock** %11, align 8
  %17 = load %struct.inet_sock*, %struct.inet_sock** %11, align 8
  %18 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %93

22:                                               ; preds = %5
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %14, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %93

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %30 = call i32 @skb_put(%struct.sk_buff* %29, i32 4)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %32 = call i32 @skb_reset_network_header(%struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %34 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %33)
  store %struct.iphdr* %34, %struct.iphdr** %13, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %37 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %39 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %38)
  store %struct.sock_exterr_skb* %39, %struct.sock_exterr_skb** %12, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %12, align 8
  %42 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @SO_EE_ORIGIN_LOCAL, align 4
  %45 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %12, align 8
  %46 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 6
  store i32 %44, i32* %47, align 8
  %48 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %12, align 8
  %49 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %12, align 8
  %52 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %12, align 8
  %55 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %12, align 8
  %59 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %12, align 8
  %62 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %65 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %64, i32 0, i32 0
  %66 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %67 = call i32 @skb_network_header(%struct.sk_buff* %66)
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %12, align 8
  %72 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %12, align 8
  %75 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %78 = call i64 @skb_tail_pointer(%struct.sk_buff* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = call i32 @__skb_pull(%struct.sk_buff* %76, i64 %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %85 = call i32 @skb_reset_transport_header(%struct.sk_buff* %84)
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %88 = call i64 @sock_queue_err_skb(%struct.sock* %86, %struct.sk_buff* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %28
  %91 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  br label %93

93:                                               ; preds = %21, %27, %90, %28
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_err_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
