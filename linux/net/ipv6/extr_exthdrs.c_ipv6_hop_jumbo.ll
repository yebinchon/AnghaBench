; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_hop_jumbo.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_hop_jumbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.inet6_dev = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"ipv6_hop_jumbo: wrong jumbo opt length/alignment %d\0A\00", align 1
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4
@IPV6_MAXPLEN = common dso_local global i64 0, align 8
@ICMPV6_HDR_FIELD = common dso_local global i32 0, align 4
@IPSTATS_MIB_INTRUNCATEDPKTS = common dso_local global i32 0, align 4
@IP6SKB_JUMBOGRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ipv6_hop_jumbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_hop_jumbo(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i8* @skb_network_header(%struct.sk_buff* %10)
  store i8* %11, i8** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.inet6_dev* @__in6_dev_get_safely(i32 %14)
  store %struct.inet6_dev* %15, %struct.inet6_dev** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call %struct.net* @ipv6_skb_net(%struct.sk_buff* %16)
  store %struct.net* %17, %struct.net** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %24, 4
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 3
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %42

30:                                               ; preds = %26, %2
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8 zeroext %36)
  %38 = load %struct.net*, %struct.net** %8, align 8
  %39 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %40 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %41 = call i32 @__IP6_INC_STATS(%struct.net* %38, %struct.inet6_dev* %39, i32 %40)
  br label %106

42:                                               ; preds = %26
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ntohl(i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @IPV6_MAXPLEN, align 8
  %53 = icmp sle i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %42
  %55 = load %struct.net*, %struct.net** %8, align 8
  %56 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %57 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %58 = call i32 @__IP6_INC_STATS(%struct.net* %55, %struct.inet6_dev* %56, i32 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = load i32, i32* @ICMPV6_HDR_FIELD, align 4
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 2
  %63 = call i32 @icmpv6_param_prob(%struct.sk_buff* %59, i32 %60, i32 %62)
  store i32 0, i32* %3, align 4
  br label %109

64:                                               ; preds = %42
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.net*, %struct.net** %8, align 8
  %72 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %73 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %74 = call i32 @__IP6_INC_STATS(%struct.net* %71, %struct.inet6_dev* %72, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = load i32, i32* @ICMPV6_HDR_FIELD, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @icmpv6_param_prob(%struct.sk_buff* %75, i32 %76, i32 %77)
  store i32 0, i32* %3, align 4
  br label %109

79:                                               ; preds = %64
  %80 = load i64, i64* %9, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %84, 4
  %86 = icmp ugt i64 %80, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = load %struct.net*, %struct.net** %8, align 8
  %89 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %90 = load i32, i32* @IPSTATS_MIB_INTRUNCATEDPKTS, align 4
  %91 = call i32 @__IP6_INC_STATS(%struct.net* %88, %struct.inet6_dev* %89, i32 %90)
  br label %106

92:                                               ; preds = %79
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, 4
  %96 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %93, i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %106

99:                                               ; preds = %92
  %100 = load i32, i32* @IP6SKB_JUMBOGRAM, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call %struct.TYPE_4__* @IP6CB(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %100
  store i32 %105, i32* %103, align 4
  store i32 1, i32* %3, align 4
  br label %109

106:                                              ; preds = %98, %87, %30
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %106, %99, %70, %54
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i8* @skb_network_header(%struct.sk_buff*) #1

declare dso_local %struct.inet6_dev* @__in6_dev_get_safely(i32) #1

declare dso_local %struct.net* @ipv6_skb_net(%struct.sk_buff*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i8 zeroext) #1

declare dso_local i32 @__IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @icmpv6_param_prob(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i64) #1

declare dso_local %struct.TYPE_4__* @IP6CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
