; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_deltable.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_deltable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nft_table = type { i64 }
%struct.nft_ctx = type { i32, %struct.nft_table* }

@AF_UNSPEC = common dso_local global i32 0, align 4
@NFTA_TABLE_NAME = common dso_local global i64 0, align 8
@NFTA_TABLE_HANDLE = common dso_local global i64 0, align 8
@NLM_F_NONREC = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_deltable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_deltable(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nfgenmsg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.nft_table*, align 8
  %19 = alloca %struct.nft_ctx, align 8
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %21 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %20)
  store %struct.nfgenmsg* %21, %struct.nfgenmsg** %14, align 8
  %22 = load %struct.net*, %struct.net** %8, align 8
  %23 = call i32 @nft_genmask_next(%struct.net* %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %25 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.net*, %struct.net** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %30 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %31 = call i32 @nft_ctx_init(%struct.nft_ctx* %19, %struct.net* %27, %struct.sk_buff* %28, %struct.nlmsghdr* %29, i32 0, i32* null, i32* null, %struct.nlattr** %30)
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @AF_UNSPEC, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %6
  %36 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %37 = load i64, i64* @NFTA_TABLE_NAME, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp ne %struct.nlattr* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %43 = load i64, i64* @NFTA_TABLE_HANDLE, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41, %6
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @nft_flush(%struct.nft_ctx* %19, i32 %48)
  store i32 %49, i32* %7, align 4
  br label %106

50:                                               ; preds = %41, %35
  %51 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %52 = load i64, i64* @NFTA_TABLE_HANDLE, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %58 = load i64, i64* @NFTA_TABLE_HANDLE, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  store %struct.nlattr* %60, %struct.nlattr** %17, align 8
  %61 = load %struct.net*, %struct.net** %8, align 8
  %62 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call %struct.nft_table* @nft_table_lookup_byhandle(%struct.net* %61, %struct.nlattr* %62, i32 %63)
  store %struct.nft_table* %64, %struct.nft_table** %18, align 8
  br label %75

65:                                               ; preds = %50
  %66 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %67 = load i64, i64* @NFTA_TABLE_NAME, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  store %struct.nlattr* %69, %struct.nlattr** %17, align 8
  %70 = load %struct.net*, %struct.net** %8, align 8
  %71 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call %struct.nft_table* @nft_table_lookup(%struct.net* %70, %struct.nlattr* %71, i32 %72, i32 %73)
  store %struct.nft_table* %74, %struct.nft_table** %18, align 8
  br label %75

75:                                               ; preds = %65, %56
  %76 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %77 = call i64 @IS_ERR(%struct.nft_table* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %82 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %80, %struct.nlattr* %81)
  %83 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %84 = call i32 @PTR_ERR(%struct.nft_table* %83)
  store i32 %84, i32* %7, align 4
  br label %106

85:                                               ; preds = %75
  %86 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %87 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NLM_F_NONREC, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %94 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* @EBUSY, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %106

100:                                              ; preds = %92, %85
  %101 = load i32, i32* %16, align 4
  %102 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %19, i32 0, i32 0
  store i32 %101, i32* %102, align 8
  %103 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %104 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %19, i32 0, i32 1
  store %struct.nft_table* %103, %struct.nft_table** %104, align 8
  %105 = call i32 @nft_flush_table(%struct.nft_ctx* %19)
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %100, %97, %79, %47
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_next(%struct.net*) #1

declare dso_local i32 @nft_ctx_init(%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, i32*, i32*, %struct.nlattr**) #1

declare dso_local i32 @nft_flush(%struct.nft_ctx*, i32) #1

declare dso_local %struct.nft_table* @nft_table_lookup_byhandle(%struct.net*, %struct.nlattr*, i32) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local i32 @nft_flush_table(%struct.nft_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
