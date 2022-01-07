; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink.c_nfnetlink_rcv_skb_batch.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink.c_nfnetlink_rcv_skb_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nfgenmsg = type { i64 }

@NFNL_BATCH_MAX = common dso_local global i32 0, align 4
@NLMSG_HDRLEN = common dso_local global i32 0, align 4
@nfnl_batch_policy = common dso_local global i32 0, align 4
@NFNL_BATCH_GENID = common dso_local global i64 0, align 8
@NFNL_SUBSYS_NFTABLES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.nlmsghdr*)* @nfnetlink_rcv_skb_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfnetlink_rcv_skb_batch(%struct.sk_buff* %0, %struct.nlmsghdr* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nlmsghdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfgenmsg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %4, align 8
  %16 = call i32 @nlmsg_total_size(i32 8)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %18 = bitcast %struct.nlmsghdr* %17 to i8*
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %18, i64 %20
  %22 = bitcast i8* %21 to %struct.nlattr*
  store %struct.nlattr* %22, %struct.nlattr** %6, align 8
  %23 = load i32, i32* @NFNL_BATCH_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %7, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %29 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %34 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @NLMSG_ALIGN(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %2
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %42, %2
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* @NLMSG_HDRLEN, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 1, i32* %15, align 4
  br label %104

56:                                               ; preds = %46
  %57 = load i32, i32* @NFNL_BATCH_MAX, align 4
  %58 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @nfnl_batch_policy, align 4
  %61 = call i32 @nla_parse_deprecated(%struct.nlattr** %27, i32 %57, %struct.nlattr* %58, i32 %59, i32 %60, i32* null)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @netlink_ack(%struct.sk_buff* %65, %struct.nlmsghdr* %66, i32 %67, i32* null)
  store i32 1, i32* %15, align 4
  br label %104

69:                                               ; preds = %56
  %70 = load i64, i64* @NFNL_BATCH_GENID, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load i64, i64* @NFNL_BATCH_GENID, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i32 @nla_get_be32(%struct.nlattr* %77)
  %79 = call i32 @ntohl(i32 %78)
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %82 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %81)
  store %struct.nfgenmsg* %82, %struct.nfgenmsg** %10, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @skb_pull(%struct.sk_buff* %83, i32 %84)
  %86 = load %struct.nfgenmsg*, %struct.nfgenmsg** %10, align 8
  %87 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NFNL_SUBSYS_NFTABLES, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %80
  %92 = load i64, i64* @NFNL_SUBSYS_NFTABLES, align 8
  store i64 %92, i64* %14, align 8
  br label %98

93:                                               ; preds = %80
  %94 = load %struct.nfgenmsg*, %struct.nfgenmsg** %10, align 8
  %95 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @ntohs(i64 %96)
  store i64 %97, i64* %14, align 8
  br label %98

98:                                               ; preds = %93, %91
  %99 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %100 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @nfnetlink_rcv_batch(%struct.sk_buff* %99, %struct.nlmsghdr* %100, i64 %101, i32 %102)
  store i32 0, i32* %15, align 4
  br label %104

104:                                              ; preds = %98, %64, %55
  %105 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %15, align 4
  switch i32 %106, label %108 [
    i32 0, label %107
    i32 1, label %107
  ]

107:                                              ; preds = %104, %104
  ret void

108:                                              ; preds = %104
  unreachable
}

declare dso_local i32 @nlmsg_total_size(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32, i32*) #1

declare dso_local i32 @netlink_ack(%struct.sk_buff*, %struct.nlmsghdr*, i32, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @nfnetlink_rcv_batch(%struct.sk_buff*, %struct.nlmsghdr*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
