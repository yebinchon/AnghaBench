; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_ip6_err_gen_icmpv6_unreach.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_icmp.c_ip6_err_gen_icmpv6_unreach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64 }
%struct.in6_addr = type { i32 }
%struct.rt6_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ICMP_TIME_EXCEEDED = common dso_local global i32 0, align 4
@ICMPV6_TIME_EXCEED = common dso_local global i32 0, align 4
@ICMPV6_EXC_HOPLIMIT = common dso_local global i32 0, align 4
@ICMPV6_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMPV6_ADDR_UNREACH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_err_gen_icmpv6_unreach(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.in6_addr, align 4
  %11 = alloca %struct.rt6_info*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 %16, 4
  %18 = add i64 %17, 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @pskb_may_pull(%struct.sk_buff* %14, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %151

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ult i32 %24, 128
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = and i32 %27, 7
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %26, %23
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %36, %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %41, i32 %42)
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi %struct.sk_buff* [ %43, %40 ], [ %47, %44 ]
  store %struct.sk_buff* %49, %struct.sk_buff** %12, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %151

53:                                               ; preds = %48
  %54 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %55 = call i32 @skb_dst_drop(%struct.sk_buff* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @skb_pull(%struct.sk_buff* %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = call i32 @skb_reset_network_header(%struct.sk_buff* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @dev_net(i64 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %66 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call %struct.rt6_info* @rt6_lookup(i32 %64, i32* %67, i32* null, i32 0, %struct.sk_buff* %68, i32 0)
  store %struct.rt6_info* %69, %struct.rt6_info** %11, align 8
  %70 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %71 = icmp ne %struct.rt6_info* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %53
  %73 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %74 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %80 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %78, %72, %53
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ipv6_addr_set_v4mapped(i32 %89, %struct.in6_addr* %10)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %126

93:                                               ; preds = %85
  %94 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @__skb_push(%struct.sk_buff* %94, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %98 = call i32 @skb_reset_network_header(%struct.sk_buff* %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = sub i32 %108, %109
  %111 = call i32 @memmove(i64 %101, i64 %107, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = zext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = sub nsw i64 %117, %119
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @memset(i64 %120, i32 0, i32 %121)
  %123 = load i32, i32* %9, align 4
  %124 = udiv i32 %123, 8
  %125 = shl i32 %124, 24
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %93, %85
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @ICMP_TIME_EXCEEDED, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %132 = load i32, i32* @ICMPV6_TIME_EXCEED, align 4
  %133 = load i32, i32* @ICMPV6_EXC_HOPLIMIT, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @icmp6_send(%struct.sk_buff* %131, i32 %132, i32 %133, i32 %134, %struct.in6_addr* %10)
  br label %142

136:                                              ; preds = %126
  %137 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %138 = load i32, i32* @ICMPV6_DEST_UNREACH, align 4
  %139 = load i32, i32* @ICMPV6_ADDR_UNREACH, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @icmp6_send(%struct.sk_buff* %137, i32 %138, i32 %139, i32 %140, %struct.in6_addr* %10)
  br label %142

142:                                              ; preds = %136, %130
  %143 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %144 = icmp ne %struct.rt6_info* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load %struct.rt6_info*, %struct.rt6_info** %11, align 8
  %147 = call i32 @ip6_rt_put(%struct.rt6_info* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %150 = call i32 @kfree_skb(%struct.sk_buff* %149)
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %148, %52, %22
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.rt6_info* @rt6_lookup(i32, i32*, i32*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_net(i64) #1

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_set_v4mapped(i32, %struct.in6_addr*) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @icmp6_send(%struct.sk_buff*, i32, i32, i32, %struct.in6_addr*) #1

declare dso_local i32 @ip6_rt_put(%struct.rt6_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
