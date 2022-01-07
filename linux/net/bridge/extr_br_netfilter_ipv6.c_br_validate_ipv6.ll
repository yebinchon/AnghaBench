; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_ipv6.c_br_validate_ipv6.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_ipv6.c_br_validate_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.ipv6hdr = type { i32, i64, i32 }
%struct.inet6_dev = type { i32 }

@NEXTHDR_HOP = common dso_local global i64 0, align 8
@IPSTATS_MIB_INTRUNCATEDPKTS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INDISCARDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_INHDRERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_validate_ipv6(%struct.net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.inet6_dev* @__in6_dev_get(i32 %12)
  store %struct.inet6_dev* %13, %struct.inet6_dev** %7, align 8
  store i64 24, i64* %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @pskb_may_pull(%struct.sk_buff* %14, i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %90

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %95

26:                                               ; preds = %19
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %27)
  store %struct.ipv6hdr* %28, %struct.ipv6hdr** %6, align 8
  %29 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %30 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 6
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %90

34:                                               ; preds = %26
  %35 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %36 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ntohs(i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %43 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NEXTHDR_HOP, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %41, %34
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %48, %49
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.net*, %struct.net** %4, align 8
  %57 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %58 = load i32, i32* @IPSTATS_MIB_INTRUNCATEDPKTS, align 4
  %59 = call i32 @__IP6_INC_STATS(%struct.net* %56, %struct.inet6_dev* %57, i32 %58)
  br label %95

60:                                               ; preds = %47
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i64 @pskb_trim_rcsum(%struct.sk_buff* %61, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.net*, %struct.net** %4, align 8
  %69 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %70 = load i32, i32* @IPSTATS_MIB_INDISCARDS, align 4
  %71 = call i32 @__IP6_INC_STATS(%struct.net* %68, %struct.inet6_dev* %69, i32 %70)
  br label %95

72:                                               ; preds = %60
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %73)
  store %struct.ipv6hdr* %74, %struct.ipv6hdr** %6, align 8
  br label %75

75:                                               ; preds = %72, %41
  %76 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %77 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NEXTHDR_HOP, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i64 @br_nf_check_hbh_len(%struct.sk_buff* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %95

86:                                               ; preds = %81, %75
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @IP6CB(%struct.sk_buff* %87)
  %89 = call i32 @memset(i32 %88, i32 0, i32 4)
  store i32 0, i32* %3, align 4
  br label %96

90:                                               ; preds = %33, %18
  %91 = load %struct.net*, %struct.net** %4, align 8
  %92 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %93 = load i32, i32* @IPSTATS_MIB_INHDRERRORS, align 4
  %94 = call i32 @__IP6_INC_STATS(%struct.net* %91, %struct.inet6_dev* %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %85, %67, %55, %25
  store i32 -1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.inet6_dev* @__in6_dev_get(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @__IP6_INC_STATS(%struct.net*, %struct.inet6_dev*, i32) #1

declare dso_local i64 @pskb_trim_rcsum(%struct.sk_buff*, i64) #1

declare dso_local i64 @br_nf_check_hbh_len(%struct.sk_buff*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @IP6CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
