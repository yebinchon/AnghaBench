; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_ctx_init_from_elemattr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_ctx_init_from_elemattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nft_table = type { i32 }

@NFTA_SET_ELEM_LIST_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*, i32)* @nft_ctx_init_from_elemattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_ctx_init_from_elemattr(%struct.nft_ctx* %0, %struct.net* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nft_ctx*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca %struct.nlattr**, align 8
  %14 = alloca %struct.netlink_ext_ack*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfgenmsg*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.nft_table*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %9, align 8
  store %struct.net* %1, %struct.net** %10, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %11, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %12, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %13, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %20 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %19)
  store %struct.nfgenmsg* %20, %struct.nfgenmsg** %16, align 8
  %21 = load %struct.nfgenmsg*, %struct.nfgenmsg** %16, align 8
  %22 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.net*, %struct.net** %10, align 8
  %25 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %26 = load i64, i64* @NFTA_SET_ELEM_LIST_TABLE, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %15, align 4
  %31 = call %struct.nft_table* @nft_table_lookup(%struct.net* %24, %struct.nlattr* %28, i32 %29, i32 %30)
  store %struct.nft_table* %31, %struct.nft_table** %18, align 8
  %32 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %33 = call i64 @IS_ERR(%struct.nft_table* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %7
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %14, align 8
  %37 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %38 = load i64, i64* @NFTA_SET_ELEM_LIST_TABLE, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %36, %struct.nlattr* %40)
  %42 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %43 = call i32 @PTR_ERR(%struct.nft_table* %42)
  store i32 %43, i32* %8, align 4
  br label %53

44:                                               ; preds = %7
  %45 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %46 = load %struct.net*, %struct.net** %10, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %51 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %52 = call i32 @nft_ctx_init(%struct.nft_ctx* %45, %struct.net* %46, %struct.sk_buff* %47, %struct.nlmsghdr* %48, i32 %49, %struct.nft_table* %50, i32* null, %struct.nlattr** %51)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %44, %35
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local i32 @nft_ctx_init(%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.nft_table*, i32*, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
