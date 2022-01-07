; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_mip6.c_mip6_destopt_reject.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_mip6.c_mip6_destopt_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.sk_buff = type { i64 }
%struct.flowi = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.flowi6 }
%struct.flowi6 = type { i64, i64, i32, i32 }
%struct.net = type { i32 }
%struct.inet6_skb_parm = type { i32, i32 }
%struct.ipv6_destopt_hao = type { i32 }
%struct.xfrm_selector = type { i32, i32, i64, i32, i8*, i64, i8*, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@IPPROTO_MH = common dso_local global i64 0, align 8
@IP6_MH_TYPE_MAX = common dso_local global i64 0, align 8
@IPV6_TLV_HAO = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPPROTO_DSTOPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*, %struct.flowi*)* @mip6_destopt_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mip6_destopt_reject(%struct.xfrm_state* %0, %struct.sk_buff* %1, %struct.flowi* %2) #0 {
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.inet6_skb_parm*, align 8
  %9 = alloca %struct.flowi6*, align 8
  %10 = alloca %struct.ipv6_destopt_hao*, align 8
  %11 = alloca %struct.xfrm_selector, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.flowi* %2, %struct.flowi** %6, align 8
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %16 = call %struct.net* @xs_net(%struct.xfrm_state* %15)
  store %struct.net* %16, %struct.net** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.inet6_skb_parm*
  store %struct.inet6_skb_parm* %20, %struct.inet6_skb_parm** %8, align 8
  %21 = load %struct.flowi*, %struct.flowi** %6, align 8
  %22 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.flowi6* %23, %struct.flowi6** %9, align 8
  store %struct.ipv6_destopt_hao* null, %struct.ipv6_destopt_hao** %10, align 8
  store i32 0, i32* %14, align 4
  %24 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %25 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPPROTO_MH, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %31 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IP6_MH_TYPE_MAX, align 8
  %34 = icmp sle i64 %32, %33
  br label %35

35:                                               ; preds = %29, %3
  %36 = phi i1 [ false, %3 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %150

41:                                               ; preds = %35
  %42 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %8, align 8
  %43 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %8, align 8
  %50 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IPV6_TLV_HAO, align 4
  %53 = call i32 @ipv6_find_tlv(%struct.sk_buff* %48, i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp sge i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %47
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i64 @skb_network_header(%struct.sk_buff* %60)
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = inttoptr i64 %64 to %struct.ipv6_destopt_hao*
  store %struct.ipv6_destopt_hao* %65, %struct.ipv6_destopt_hao** %10, align 8
  br label %66

66:                                               ; preds = %59, %47
  br label %67

67:                                               ; preds = %66, %41
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @skb_get_ktime(%struct.sk_buff* %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %10, align 8
  %75 = icmp ne %struct.ipv6_destopt_hao* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %10, align 8
  %78 = getelementptr inbounds %struct.ipv6_destopt_hao, %struct.ipv6_destopt_hao* %77, i32 0, i32 0
  br label %83

79:                                               ; preds = %67
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  br label %83

83:                                               ; preds = %79, %76
  %84 = phi i32* [ %78, %76 ], [ %82, %79 ]
  %85 = load %struct.inet6_skb_parm*, %struct.inet6_skb_parm** %8, align 8
  %86 = getelementptr inbounds %struct.inet6_skb_parm, %struct.inet6_skb_parm* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mip6_report_rl_allow(i32 %70, i32* %73, i32* %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %150

91:                                               ; preds = %83
  %92 = call i32 @memset(%struct.xfrm_selector* %11, i32 0, i32 72)
  %93 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 10
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = call i32 @memcpy(i32* %93, i32* %96, i32 4)
  %98 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 0
  store i32 128, i32* %98, align 8
  %99 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 9
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = call %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff* %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = call i32 @memcpy(i32* %99, i32* %102, i32 4)
  %104 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 1
  store i32 128, i32* %104, align 4
  %105 = load i32, i32* @AF_INET6, align 4
  %106 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 8
  store i32 %105, i32* %106, align 8
  %107 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %108 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 2
  store i64 %109, i64* %110, align 8
  %111 = load %struct.flowi*, %struct.flowi** %6, align 8
  %112 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %113 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %112, i32 0, i32 3
  %114 = call i64 @xfrm_flowi_dport(%struct.flowi* %111, i32* %113)
  %115 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 7
  store i64 %114, i64* %115, align 8
  %116 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %91
  %120 = call i8* @htons(i32 -1)
  %121 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 6
  store i8* %120, i8** %121, align 8
  br label %122

122:                                              ; preds = %119, %91
  %123 = load %struct.flowi*, %struct.flowi** %6, align 8
  %124 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %125 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %124, i32 0, i32 3
  %126 = call i64 @xfrm_flowi_sport(%struct.flowi* %123, i32* %125)
  %127 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 5
  store i64 %126, i64* %127, align 8
  %128 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 5
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = call i8* @htons(i32 -1)
  %133 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 4
  store i8* %132, i8** %133, align 8
  br label %134

134:                                              ; preds = %131, %122
  %135 = load %struct.flowi6*, %struct.flowi6** %9, align 8
  %136 = getelementptr inbounds %struct.flowi6, %struct.flowi6* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %11, i32 0, i32 3
  store i32 %137, i32* %138, align 8
  %139 = load %struct.net*, %struct.net** %7, align 8
  %140 = load i32, i32* @IPPROTO_DSTOPTS, align 4
  %141 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %10, align 8
  %142 = icmp ne %struct.ipv6_destopt_hao* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %134
  %144 = load %struct.ipv6_destopt_hao*, %struct.ipv6_destopt_hao** %10, align 8
  %145 = getelementptr inbounds %struct.ipv6_destopt_hao, %struct.ipv6_destopt_hao* %144, i32 0, i32 0
  br label %147

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi i32* [ %145, %143 ], [ null, %146 ]
  %149 = call i32 @km_report(%struct.net* %139, i32 %140, %struct.xfrm_selector* %11, i32* %148)
  store i32 %149, i32* %14, align 4
  br label %150

150:                                              ; preds = %147, %90, %40
  %151 = load i32, i32* %14, align 4
  ret i32 %151
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ipv6_find_tlv(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_ktime(%struct.sk_buff*) #1

declare dso_local i32 @mip6_report_rl_allow(i32, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.xfrm_selector*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @xfrm_flowi_dport(%struct.flowi*, i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i64 @xfrm_flowi_sport(%struct.flowi*, i32*) #1

declare dso_local i32 @km_report(%struct.net*, i32, %struct.xfrm_selector*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
