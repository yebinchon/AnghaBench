; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_table_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_table_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nft_table = type { i32, i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i32, i32, i32 }

@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@NFTA_TABLE_NAME = common dso_local global i32 0, align 4
@NFTA_TABLE_FLAGS = common dso_local global i32 0, align 4
@NFTA_TABLE_USE = common dso_local global i32 0, align 4
@NFTA_TABLE_HANDLE = common dso_local global i32 0, align 4
@NFTA_TABLE_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net*, i32, i32, i32, i32, i32, %struct.nft_table*)* @nf_tables_fill_table_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_fill_table_info(%struct.sk_buff* %0, %struct.net* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.nft_table* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nft_table*, align 8
  %18 = alloca %struct.nlmsghdr*, align 8
  %19 = alloca %struct.nfgenmsg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.net* %1, %struct.net** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.nft_table* %7, %struct.nft_table** %17, align 8
  %20 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @nfnl_msg_type(i32 %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %23, i32 %24, i32 %25, i32 %26, i32 12, i32 %27)
  store %struct.nlmsghdr* %28, %struct.nlmsghdr** %18, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %30 = icmp eq %struct.nlmsghdr* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %8
  br label %89

32:                                               ; preds = %8
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %34 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.nfgenmsg* %34, %struct.nfgenmsg** %19, align 8
  %35 = load i32, i32* %16, align 4
  %36 = load %struct.nfgenmsg*, %struct.nfgenmsg** %19, align 8
  %37 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @NFNETLINK_V0, align 4
  %39 = load %struct.nfgenmsg*, %struct.nfgenmsg** %19, align 8
  %40 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.net*, %struct.net** %11, align 8
  %42 = getelementptr inbounds %struct.net, %struct.net* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 65535
  %46 = call i32 @htons(i32 %45)
  %47 = load %struct.nfgenmsg*, %struct.nfgenmsg** %19, align 8
  %48 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %50 = load i32, i32* @NFTA_TABLE_NAME, align 4
  %51 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %52 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @nla_put_string(%struct.sk_buff* %49, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %84, label %56

56:                                               ; preds = %32
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = load i32, i32* @NFTA_TABLE_FLAGS, align 4
  %59 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %60 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @htonl(i32 %61)
  %63 = call i64 @nla_put_be32(%struct.sk_buff* %57, i32 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %56
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = load i32, i32* @NFTA_TABLE_USE, align 4
  %68 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %69 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @htonl(i32 %70)
  %72 = call i64 @nla_put_be32(%struct.sk_buff* %66, i32 %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %65
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = load i32, i32* @NFTA_TABLE_HANDLE, align 4
  %77 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %78 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @cpu_to_be64(i32 %79)
  %81 = load i32, i32* @NFTA_TABLE_PAD, align 4
  %82 = call i64 @nla_put_be64(%struct.sk_buff* %75, i32 %76, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74, %65, %56, %32
  br label %89

85:                                               ; preds = %74
  %86 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %87 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %88 = call i32 @nlmsg_end(%struct.sk_buff* %86, %struct.nlmsghdr* %87)
  store i32 0, i32* %9, align 4
  br label %93

89:                                               ; preds = %84, %31
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %92 = call i32 @nlmsg_trim(%struct.sk_buff* %90, %struct.nlmsghdr* %91)
  store i32 -1, i32* %9, align 4
  br label %93

93:                                               ; preds = %89, %85
  %94 = load i32, i32* %9, align 4
  ret i32 %94
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
