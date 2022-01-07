; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_sockglue.c_ip_icmp_error.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_sockglue.c_ip_icmp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sock_exterr_skb = type { i32, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iphdr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_ICMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_icmp_error(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sock_exterr_skb*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %8, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %6
  br label %92

20:                                               ; preds = %6
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %21)
  store %struct.sock_exterr_skb* %22, %struct.sock_exterr_skb** %13, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %13, align 8
  %25 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @SO_EE_ORIGIN_ICMP, align 4
  %28 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %13, align 8
  %29 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 6
  store i32 %27, i32* %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %13, align 8
  %36 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32 %34, i32* %37, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %13, align 8
  %43 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  store i32 %41, i32* %44, align 8
  %45 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %13, align 8
  %46 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %13, align 8
  %50 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %13, align 8
  %53 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = call %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 1
  %58 = bitcast %struct.TYPE_4__* %57 to %struct.iphdr*
  %59 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %58, i32 0, i32 0
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call i32 @skb_network_header(%struct.sk_buff* %60)
  %62 = sext i32 %61 to i64
  %63 = sub i64 0, %62
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %13, align 8
  %66 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %13, align 8
  %69 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i32, i32* %71, i64 %76
  %78 = call i64 @skb_pull(%struct.sk_buff* %70, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %20
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call i32 @skb_reset_transport_header(%struct.sk_buff* %81)
  %83 = load %struct.sock*, %struct.sock** %7, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = call i64 @sock_queue_err_skb(%struct.sock* %83, %struct.sk_buff* %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %92

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88, %20
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  br label %92

92:                                               ; preds = %89, %87, %19
  ret void
}

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @icmp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_pull(%struct.sk_buff*, i32*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @sock_queue_err_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
