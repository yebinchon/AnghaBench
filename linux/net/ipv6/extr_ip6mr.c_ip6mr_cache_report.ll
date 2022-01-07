; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_cache_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_cache_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32 }
%struct.sk_buff = type { i8* }
%struct.sock = type { i32 }
%struct.mrt6msg = type { i32, i32, i32, i64, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"mroute6: pending queue full, dropping entries\0A\00", align 1
@MRT6MSG_WHOLEPKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, %struct.sk_buff*, i32, i32)* @ip6mr_cache_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6mr_cache_report(%struct.mr_table* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mr_table*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.mrt6msg*, align 8
  %13 = alloca i32, align 4
  store %struct.mr_table* %0, %struct.mr_table** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @alloc_skb(i32 44, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOBUFS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %99

21:                                               ; preds = %4
  %22 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %26 = call i32 @skb_put(%struct.sk_buff* %25, i32 4)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %28 = call i32 @skb_reset_network_header(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %30)
  %32 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %29, %struct.TYPE_3__* %31, i32 4)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %34 = call i32 @skb_put(%struct.sk_buff* %33, i32 40)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %36 = call i32 @skb_reset_transport_header(%struct.sk_buff* %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = call i64 @skb_transport_header(%struct.sk_buff* %37)
  %39 = inttoptr i64 %38 to %struct.mrt6msg*
  store %struct.mrt6msg* %39, %struct.mrt6msg** %12, align 8
  %40 = load %struct.mrt6msg*, %struct.mrt6msg** %12, align 8
  %41 = getelementptr inbounds %struct.mrt6msg, %struct.mrt6msg* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.mrt6msg*, %struct.mrt6msg** %12, align 8
  %44 = getelementptr inbounds %struct.mrt6msg, %struct.mrt6msg* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mrt6msg*, %struct.mrt6msg** %12, align 8
  %47 = getelementptr inbounds %struct.mrt6msg, %struct.mrt6msg* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.mrt6msg*, %struct.mrt6msg** %12, align 8
  %49 = getelementptr inbounds %struct.mrt6msg, %struct.mrt6msg* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mrt6msg*, %struct.mrt6msg** %12, align 8
  %55 = getelementptr inbounds %struct.mrt6msg, %struct.mrt6msg* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mrt6msg*, %struct.mrt6msg** %12, align 8
  %61 = getelementptr inbounds %struct.mrt6msg, %struct.mrt6msg* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call i32 @skb_dst(%struct.sk_buff* %63)
  %65 = call i32 @dst_clone(i32 %64)
  %66 = call i32 @skb_dst_set(%struct.sk_buff* %62, i32 %65)
  %67 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = call i32 (...) @rcu_read_lock()
  %71 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %72 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.sock* @rcu_dereference(i32 %73)
  store %struct.sock* %74, %struct.sock** %10, align 8
  %75 = load %struct.sock*, %struct.sock** %10, align 8
  %76 = icmp ne %struct.sock* %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %21
  %78 = call i32 (...) @rcu_read_unlock()
  %79 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %99

83:                                               ; preds = %21
  %84 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %86 = call i32 @mrt6msg_netlink_event(%struct.mr_table* %84, %struct.sk_buff* %85)
  %87 = load %struct.sock*, %struct.sock** %10, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %89 = call i32 @sock_queue_rcv_skb(%struct.sock* %87, %struct.sk_buff* %88)
  store i32 %89, i32* %13, align 4
  %90 = call i32 (...) @rcu_read_unlock()
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = call i32 @kfree_skb(%struct.sk_buff* %95)
  br label %97

97:                                               ; preds = %93, %83
  %98 = load i32, i32* %13, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %97, %77, %18
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.TYPE_3__*, i32) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sock* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @mrt6msg_netlink_event(%struct.mr_table*, %struct.sk_buff*) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @net_warn_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
