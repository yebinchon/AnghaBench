; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nfnl_compat_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nfnl_compat_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NFNL_SUBSYS_NFT_COMPAT = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@NFTA_COMPAT_NAME = common dso_local global i32 0, align 4
@NFTA_COMPAT_REV = common dso_local global i32 0, align 4
@NFTA_COMPAT_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i64, i32, i32, i8*, i32, i32)* @nfnl_compat_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfnl_compat_fill_info(%struct.sk_buff* %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nlmsghdr*, align 8
  %21 = alloca %struct.nfgenmsg*, align 8
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %23 = load i64, i64* %12, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %9
  %26 = load i32, i32* @NLM_F_MULTI, align 4
  br label %28

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  store i32 %29, i32* %22, align 4
  %30 = load i32, i32* @NFNL_SUBSYS_NFT_COMPAT, align 4
  %31 = load i32, i32* %15, align 4
  %32 = call i32 @nfnl_msg_type(i32 %30, i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %22, align 4
  %38 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %33, i64 %34, i64 %35, i32 %36, i32 16, i32 %37)
  store %struct.nlmsghdr* %38, %struct.nlmsghdr** %20, align 8
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %40 = icmp eq %struct.nlmsghdr* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %80

42:                                               ; preds = %28
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %44 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %43)
  store %struct.nfgenmsg* %44, %struct.nfgenmsg** %21, align 8
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.nfgenmsg*, %struct.nfgenmsg** %21, align 8
  %47 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @NFNETLINK_V0, align 4
  %49 = load %struct.nfgenmsg*, %struct.nfgenmsg** %21, align 8
  %50 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.nfgenmsg*, %struct.nfgenmsg** %21, align 8
  %52 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = load i32, i32* @NFTA_COMPAT_NAME, align 4
  %55 = load i8*, i8** %17, align 8
  %56 = call i64 @nla_put_string(%struct.sk_buff* %53, i32 %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %42
  %59 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %60 = load i32, i32* @NFTA_COMPAT_REV, align 4
  %61 = load i32, i32* %18, align 4
  %62 = call i32 @htonl(i32 %61)
  %63 = call i64 @nla_put_be32(%struct.sk_buff* %59, i32 %60, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %67 = load i32, i32* @NFTA_COMPAT_TYPE, align 4
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @htonl(i32 %68)
  %70 = call i64 @nla_put_be32(%struct.sk_buff* %66, i32 %67, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65, %58, %42
  br label %81

73:                                               ; preds = %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %75 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %76 = call i32 @nlmsg_end(%struct.sk_buff* %74, %struct.nlmsghdr* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  br label %85

80:                                               ; preds = %41
  br label %81

81:                                               ; preds = %80, %72
  %82 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %83 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %84 = call i32 @nlmsg_cancel(%struct.sk_buff* %82, %struct.nlmsghdr* %83)
  store i32 -1, i32* %10, align 4
  br label %85

85:                                               ; preds = %81, %73
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i8*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
