; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_delflowtable.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_delflowtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nft_flowtable = type { i64 }
%struct.nft_table = type { i64 }
%struct.nft_ctx = type { i32 }

@NFTA_FLOWTABLE_TABLE = common dso_local global i64 0, align 8
@NFTA_FLOWTABLE_NAME = common dso_local global i64 0, align 8
@NFTA_FLOWTABLE_HANDLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_delflowtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_delflowtable(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
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
  %17 = alloca %struct.nft_flowtable*, align 8
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca %struct.nft_table*, align 8
  %20 = alloca %struct.nft_ctx, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %22 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %21)
  store %struct.nfgenmsg* %22, %struct.nfgenmsg** %14, align 8
  %23 = load %struct.net*, %struct.net** %8, align 8
  %24 = call i32 @nft_genmask_next(%struct.net* %23)
  store i32 %24, i32* %15, align 4
  %25 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %26 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  %28 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %29 = load i64, i64* @NFTA_FLOWTABLE_TABLE, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %6
  %34 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %35 = load i64, i64* @NFTA_FLOWTABLE_NAME, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %33
  %40 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %41 = load i64, i64* @NFTA_FLOWTABLE_HANDLE, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39, %6
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %129

48:                                               ; preds = %39, %33
  %49 = load %struct.net*, %struct.net** %8, align 8
  %50 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %51 = load i64, i64* @NFTA_FLOWTABLE_TABLE, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call %struct.nft_table* @nft_table_lookup(%struct.net* %49, %struct.nlattr* %53, i32 %54, i32 %55)
  store %struct.nft_table* %56, %struct.nft_table** %19, align 8
  %57 = load %struct.nft_table*, %struct.nft_table** %19, align 8
  %58 = call i64 @IS_ERR(%struct.nft_table* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %48
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %62 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %63 = load i64, i64* @NFTA_FLOWTABLE_TABLE, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %61, %struct.nlattr* %65)
  %67 = load %struct.nft_table*, %struct.nft_table** %19, align 8
  %68 = call i32 @PTR_ERR(%struct.nft_table* %67)
  store i32 %68, i32* %7, align 4
  br label %129

69:                                               ; preds = %48
  %70 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %71 = load i64, i64* @NFTA_FLOWTABLE_HANDLE, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = icmp ne %struct.nlattr* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %69
  %76 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %77 = load i64, i64* @NFTA_FLOWTABLE_HANDLE, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  store %struct.nlattr* %79, %struct.nlattr** %18, align 8
  %80 = load %struct.nft_table*, %struct.nft_table** %19, align 8
  %81 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call %struct.nft_table* @nft_flowtable_lookup_byhandle(%struct.nft_table* %80, %struct.nlattr* %81, i32 %82)
  %84 = bitcast %struct.nft_table* %83 to %struct.nft_flowtable*
  store %struct.nft_flowtable* %84, %struct.nft_flowtable** %17, align 8
  br label %95

85:                                               ; preds = %69
  %86 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %87 = load i64, i64* @NFTA_FLOWTABLE_NAME, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %86, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  store %struct.nlattr* %89, %struct.nlattr** %18, align 8
  %90 = load %struct.nft_table*, %struct.nft_table** %19, align 8
  %91 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %92 = load i32, i32* %15, align 4
  %93 = call %struct.nft_table* @nft_flowtable_lookup(%struct.nft_table* %90, %struct.nlattr* %91, i32 %92)
  %94 = bitcast %struct.nft_table* %93 to %struct.nft_flowtable*
  store %struct.nft_flowtable* %94, %struct.nft_flowtable** %17, align 8
  br label %95

95:                                               ; preds = %85, %75
  %96 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %97 = bitcast %struct.nft_flowtable* %96 to %struct.nft_table*
  %98 = call i64 @IS_ERR(%struct.nft_table* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %102 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %103 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %101, %struct.nlattr* %102)
  %104 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %105 = bitcast %struct.nft_flowtable* %104 to %struct.nft_table*
  %106 = call i32 @PTR_ERR(%struct.nft_table* %105)
  store i32 %106, i32* %7, align 4
  br label %129

107:                                              ; preds = %95
  %108 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %109 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %114 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %115 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %113, %struct.nlattr* %114)
  %116 = load i32, i32* @EBUSY, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %7, align 4
  br label %129

118:                                              ; preds = %107
  %119 = load %struct.net*, %struct.net** %8, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %121 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.nft_table*, %struct.nft_table** %19, align 8
  %124 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %125 = call i32 @nft_ctx_init(%struct.nft_ctx* %20, %struct.net* %119, %struct.sk_buff* %120, %struct.nlmsghdr* %121, i32 %122, %struct.nft_table* %123, i32* null, %struct.nlattr** %124)
  %126 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %127 = bitcast %struct.nft_flowtable* %126 to %struct.nft_table*
  %128 = call i32 @nft_delflowtable(%struct.nft_ctx* %20, %struct.nft_table* %127)
  store i32 %128, i32* %7, align 4
  br label %129

129:                                              ; preds = %118, %112, %100, %60, %45
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_next(%struct.net*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local %struct.nft_table* @nft_flowtable_lookup_byhandle(%struct.nft_table*, %struct.nlattr*, i32) #1

declare dso_local %struct.nft_table* @nft_flowtable_lookup(%struct.nft_table*, %struct.nlattr*, i32) #1

declare dso_local i32 @nft_ctx_init(%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.nft_table*, i32*, %struct.nlattr**) #1

declare dso_local i32 @nft_delflowtable(%struct.nft_ctx*, %struct.nft_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
