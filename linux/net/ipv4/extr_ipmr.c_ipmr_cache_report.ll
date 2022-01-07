; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_cache_report.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_cache_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i8* }
%struct.sk_buff = type { i32, i32, i64, i32 }
%struct.sock = type { i32 }
%struct.igmphdr = type { i32, i64 }
%struct.igmpmsg = type { i32, i8*, i64 }
%struct.TYPE_2__ = type { i32, i8*, i64 }

@IGMPMSG_WHOLEPKT = common dso_local global i32 0, align 4
@IGMPMSG_WRVIFWHOLE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"mroute: pending queue full, dropping entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mr_table*, %struct.sk_buff*, i8*, i32)* @ipmr_cache_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmr_cache_report(%struct.mr_table* %0, %struct.sk_buff* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mr_table*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.igmphdr*, align 8
  %13 = alloca %struct.igmpmsg*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.mr_table* %0, %struct.mr_table** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call i32 @ip_hdrlen(%struct.sk_buff* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @IGMPMSG_WHOLEPKT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @IGMPMSG_WRVIFWHOLE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %26, i32 4)
  store %struct.sk_buff* %27, %struct.sk_buff** %14, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.sk_buff* @alloc_skb(i32 128, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %14, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @ENOBUFS, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %172

37:                                               ; preds = %31
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @IGMPMSG_WHOLEPKT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @IGMPMSG_WRVIFWHOLE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %91

45:                                               ; preds = %41, %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %47 = call i32 @skb_push(%struct.sk_buff* %46, i32 4)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %49 = call i32 @skb_reset_network_header(%struct.sk_buff* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %51 = call i32 @skb_reset_transport_header(%struct.sk_buff* %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %53 = call i64 @skb_network_header(%struct.sk_buff* %52)
  %54 = inttoptr i64 %53 to %struct.igmpmsg*
  store %struct.igmpmsg* %54, %struct.igmpmsg** %13, align 8
  %55 = load %struct.igmpmsg*, %struct.igmpmsg** %13, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i64 @skb_network_header(%struct.sk_buff* %56)
  %58 = call i32 @memcpy(%struct.igmpmsg* %55, i64 %57, i32 4)
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.igmpmsg*, %struct.igmpmsg** %13, align 8
  %61 = getelementptr inbounds %struct.igmpmsg, %struct.igmpmsg* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.igmpmsg*, %struct.igmpmsg** %13, align 8
  %63 = getelementptr inbounds %struct.igmpmsg, %struct.igmpmsg* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IGMPMSG_WRVIFWHOLE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %45
  %68 = load i8*, i8** %8, align 8
  %69 = load %struct.igmpmsg*, %struct.igmpmsg** %13, align 8
  %70 = getelementptr inbounds %struct.igmpmsg, %struct.igmpmsg* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %77

71:                                               ; preds = %45
  %72 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %73 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.igmpmsg*, %struct.igmpmsg** %13, align 8
  %76 = getelementptr inbounds %struct.igmpmsg, %struct.igmpmsg* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %71, %67
  %78 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %79 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = call i64 @ntohs(i8* %84)
  %86 = add i64 %85, 4
  %87 = call i8* @htons(i64 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %89 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  br label %142

91:                                               ; preds = %41
  %92 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @skb_set_network_header(%struct.sk_buff* %92, i64 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call %struct.igmphdr* @skb_put(%struct.sk_buff* %97, i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %100, i32 %103, i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %107 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %110 = call i64 @skb_network_header(%struct.sk_buff* %109)
  %111 = inttoptr i64 %110 to %struct.igmpmsg*
  store %struct.igmpmsg* %111, %struct.igmpmsg** %13, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load %struct.igmpmsg*, %struct.igmpmsg** %13, align 8
  %114 = getelementptr inbounds %struct.igmpmsg, %struct.igmpmsg* %113, i32 0, i32 1
  store i8* %112, i8** %114, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %116 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %117 = call i32 @skb_dst(%struct.sk_buff* %116)
  %118 = call i32 @dst_clone(i32 %117)
  %119 = call i32 @skb_dst_set(%struct.sk_buff* %115, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %121 = call %struct.igmphdr* @skb_put(%struct.sk_buff* %120, i32 16)
  store %struct.igmphdr* %121, %struct.igmphdr** %12, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.igmphdr*, %struct.igmphdr** %12, align 8
  %124 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.igmpmsg*, %struct.igmpmsg** %13, align 8
  %127 = getelementptr inbounds %struct.igmpmsg, %struct.igmpmsg* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.igmphdr*, %struct.igmphdr** %12, align 8
  %129 = getelementptr inbounds %struct.igmphdr, %struct.igmphdr* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i8* @htons(i64 %132)
  %134 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %135 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %134)
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i8* %133, i8** %136, align 8
  %137 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %91, %77
  %143 = call i32 (...) @rcu_read_lock()
  %144 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %145 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call %struct.sock* @rcu_dereference(i32 %146)
  store %struct.sock* %147, %struct.sock** %11, align 8
  %148 = load %struct.sock*, %struct.sock** %11, align 8
  %149 = icmp ne %struct.sock* %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %142
  %151 = call i32 (...) @rcu_read_unlock()
  %152 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %153 = call i32 @kfree_skb(%struct.sk_buff* %152)
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %5, align 4
  br label %172

156:                                              ; preds = %142
  %157 = load %struct.mr_table*, %struct.mr_table** %6, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %159 = call i32 @igmpmsg_netlink_event(%struct.mr_table* %157, %struct.sk_buff* %158)
  %160 = load %struct.sock*, %struct.sock** %11, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %162 = call i32 @sock_queue_rcv_skb(%struct.sock* %160, %struct.sk_buff* %161)
  store i32 %162, i32* %15, align 4
  %163 = call i32 (...) @rcu_read_unlock()
  %164 = load i32, i32* %15, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %156
  %167 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %168 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %169 = call i32 @kfree_skb(%struct.sk_buff* %168)
  br label %170

170:                                              ; preds = %166, %156
  %171 = load i32, i32* %15, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %170, %150, %34
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.igmpmsg*, i64, i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i64 @ntohs(i8*) #1

declare dso_local i32 @skb_set_network_header(%struct.sk_buff*, i64) #1

declare dso_local %struct.igmphdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @dst_clone(i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.sock* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @igmpmsg_netlink_event(%struct.mr_table*, %struct.sk_buff*) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @net_warn_ratelimited(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
