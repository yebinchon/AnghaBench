; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_ctx_init_from_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_ctx_init_from_setattr.c"
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

@NFTA_SET_TABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*, i32)* @nft_ctx_init_from_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_ctx_init_from_setattr(%struct.nft_ctx* %0, %struct.net* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5, i32 %6) #0 {
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
  store %struct.nft_table* null, %struct.nft_table** %18, align 8
  %24 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %25 = load i64, i64* @NFTA_SET_TABLE, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %7
  %30 = load %struct.net*, %struct.net** %10, align 8
  %31 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %32 = load i64, i64* @NFTA_SET_TABLE, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call %struct.nft_table* @nft_table_lookup(%struct.net* %30, %struct.nlattr* %34, i32 %35, i32 %36)
  store %struct.nft_table* %37, %struct.nft_table** %18, align 8
  %38 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %39 = call i64 @IS_ERR(%struct.nft_table* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %29
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %14, align 8
  %43 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %44 = load i64, i64* @NFTA_SET_TABLE, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %42, %struct.nlattr* %46)
  %48 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %49 = call i32 @PTR_ERR(%struct.nft_table* %48)
  store i32 %49, i32* %8, align 4
  br label %60

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50, %7
  %52 = load %struct.nft_ctx*, %struct.nft_ctx** %9, align 8
  %53 = load %struct.net*, %struct.net** %10, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %55 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %58 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %59 = call i32 @nft_ctx_init(%struct.nft_ctx* %52, %struct.net* %53, %struct.sk_buff* %54, %struct.nlmsghdr* %55, i32 %56, %struct.nft_table* %57, i32* null, %struct.nlattr** %58)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %51, %41
  %61 = load i32, i32* %8, align 4
  ret i32 %61
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
