; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_send_router_hello.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_send_router_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dn_ifaddr = type { i32 }
%struct.dn_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.dn_neigh = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DN_RT_PKT_CNTL = common dso_local global i32 0, align 4
@DN_RT_PKT_ERTH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@DN_RT_INFO_L1RT = common dso_local global i32 0, align 4
@DN_RT_INFO_L2RT = common dso_local global i32 0, align 4
@dn_rt_all_end_mcast = common dso_local global i32 0, align 4
@dn_rt_all_rt_mcast = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.dn_ifaddr*)* @dn_send_router_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dn_send_router_hello(%struct.net_device* %0, %struct.dn_ifaddr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dn_ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_dev*, align 8
  %7 = alloca %struct.dn_neigh*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.dn_ifaddr* %1, %struct.dn_ifaddr** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.dn_dev* @rcu_dereference_raw(i32 %18)
  store %struct.dn_dev* %19, %struct.dn_dev** %6, align 8
  %20 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %21 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.dn_neigh*
  store %struct.dn_neigh* %23, %struct.dn_neigh** %7, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @mtu2blksize(%struct.net_device* %24)
  %26 = icmp slt i32 %25, 33
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %179

28:                                               ; preds = %2
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @mtu2blksize(%struct.net_device* %29)
  %31 = sub nsw i32 %30, 26
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %32, 7
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp sgt i32 %34, 32
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 32, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 7, %38
  %40 = add nsw i32 28, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.sk_buff* @dn_alloc_skb(i32* null, i64 %42, i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %8, align 8
  %45 = icmp eq %struct.sk_buff* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %179

47:                                               ; preds = %37
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 1
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i8* @skb_put(%struct.sk_buff* %51, i64 %52)
  store i8* %53, i8** %10, align 8
  %54 = load i32, i32* @DN_RT_PKT_CNTL, align 4
  %55 = load i32, i32* @DN_RT_PKT_ERTH, align 4
  %56 = or i32 %54, %55
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %10, align 8
  store i8 %57, i8* %58, align 1
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %10, align 8
  store i8 2, i8* %60, align 1
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  store i8 0, i8* %62, align 1
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %10, align 8
  store i8 0, i8* %64, align 1
  %66 = load i8*, i8** %10, align 8
  %67 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %4, align 8
  %68 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dn_dn2eth(i8* %66, i32 %69)
  %71 = load i8*, i8** %10, align 8
  store i8* %71, i8** %14, align 8
  %72 = load i32, i32* @ETH_ALEN, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %10, align 8
  %76 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %77 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %83

81:                                               ; preds = %47
  %82 = load i32, i32* @DN_RT_INFO_L1RT, align 4
  br label %85

83:                                               ; preds = %47
  %84 = load i32, i32* @DN_RT_INFO_L2RT, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %10, align 8
  store i8 %87, i8* %88, align 1
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = call i32 @mtu2blksize(%struct.net_device* %90)
  %92 = call i32 @cpu_to_le16(i32 %91)
  %93 = load i8*, i8** %10, align 8
  %94 = bitcast i8* %93 to i32*
  store i32 %92, i32* %94, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 2
  store i8* %96, i8** %10, align 8
  %97 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %98 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = trunc i32 %100 to i8
  %102 = load i8*, i8** %10, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %10, align 8
  store i8 %101, i8* %102, align 1
  %104 = load i8*, i8** %10, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %10, align 8
  store i8 0, i8* %104, align 1
  %106 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %107 = getelementptr inbounds %struct.dn_dev, %struct.dn_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i16
  %111 = zext i16 %110 to i32
  %112 = call i32 @cpu_to_le16(i32 %111)
  %113 = load i8*, i8** %10, align 8
  %114 = bitcast i8* %113 to i32*
  store i32 %112, i32* %114, align 4
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 2
  store i8* %116, i8** %10, align 8
  %117 = load i8*, i8** %10, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %10, align 8
  store i8 0, i8* %117, align 1
  %119 = load i8*, i8** %10, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %10, align 8
  store i8* %119, i8** %11, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = call i32 @memset(i8* %121, i32 0, i32 7)
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 7
  store i8* %124, i8** %10, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %10, align 8
  store i8* %125, i8** %12, align 8
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @dn_neigh_elist(%struct.net_device* %127, i8* %128, i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = mul nsw i32 7, %131
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %12, align 8
  store i8 %133, i8* %134, align 1
  %135 = load i8*, i8** %12, align 8
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = add nsw i32 8, %137
  %139 = trunc i32 %138 to i8
  %140 = load i8*, i8** %11, align 8
  store i8 %139, i8* %140, align 1
  %141 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = add nsw i32 27, %144
  %146 = call i32 @skb_trim(%struct.sk_buff* %141, i32 %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %148 = call i32* @skb_push(%struct.sk_buff* %147, i32 2)
  store i32* %148, i32** %13, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, 2
  %153 = call i32 @cpu_to_le16(i32 %152)
  %154 = load i32*, i32** %13, align 8
  store i32 %153, i32* %154, align 4
  %155 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %156 = call i32 @skb_reset_network_header(%struct.sk_buff* %155)
  %157 = load %struct.dn_neigh*, %struct.dn_neigh** %7, align 8
  %158 = load %struct.dn_dev*, %struct.dn_dev** %6, align 8
  %159 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %4, align 8
  %160 = call i64 @dn_am_i_a_router(%struct.dn_neigh* %157, %struct.dn_dev* %158, %struct.dn_ifaddr* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %85
  %163 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %164 = load i32, i32* @GFP_ATOMIC, align 4
  %165 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %163, i32 %164)
  store %struct.sk_buff* %165, %struct.sk_buff** %15, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %167 = icmp ne %struct.sk_buff* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %162
  %169 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %170 = load i32, i32* @dn_rt_all_end_mcast, align 4
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 @dn_rt_finish_output(%struct.sk_buff* %169, i32 %170, i8* %171)
  br label %173

173:                                              ; preds = %168, %162
  br label %174

174:                                              ; preds = %173, %85
  %175 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %176 = load i32, i32* @dn_rt_all_rt_mcast, align 4
  %177 = load i8*, i8** %14, align 8
  %178 = call i32 @dn_rt_finish_output(%struct.sk_buff* %175, i32 %176, i8* %177)
  br label %179

179:                                              ; preds = %174, %46, %27
  ret void
}

declare dso_local %struct.dn_dev* @rcu_dereference_raw(i32) #1

declare dso_local i32 @mtu2blksize(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dn_alloc_skb(i32*, i64, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @dn_dn2eth(i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dn_neigh_elist(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @dn_am_i_a_router(%struct.dn_neigh*, %struct.dn_dev*, %struct.dn_ifaddr*) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i32 @dn_rt_finish_output(%struct.sk_buff*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
