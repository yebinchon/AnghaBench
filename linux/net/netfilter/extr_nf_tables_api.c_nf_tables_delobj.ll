; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_delobj.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_delobj.c"
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
%struct.nft_object = type { i64 }
%struct.nft_ctx = type { i32 }

@NFTA_OBJ_TYPE = common dso_local global i64 0, align 8
@NFTA_OBJ_NAME = common dso_local global i64 0, align 8
@NFTA_OBJ_HANDLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_OBJ_TABLE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_delobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_delobj(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
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
  %19 = alloca %struct.nft_object*, align 8
  %20 = alloca %struct.nft_ctx, align 4
  %21 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %23 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %22)
  store %struct.nfgenmsg* %23, %struct.nfgenmsg** %14, align 8
  %24 = load %struct.net*, %struct.net** %8, align 8
  %25 = call i32 @nft_genmask_next(%struct.net* %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %27 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %30 = load i64, i64* @NFTA_OBJ_TYPE, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %6
  %35 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %36 = load i64, i64* @NFTA_OBJ_NAME, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %42 = load i64, i64* @NFTA_OBJ_HANDLE, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40, %6
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %139

49:                                               ; preds = %40, %34
  %50 = load %struct.net*, %struct.net** %8, align 8
  %51 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %52 = load i64, i64* @NFTA_OBJ_TABLE, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %15, align 4
  %57 = call %struct.nft_table* @nft_table_lookup(%struct.net* %50, %struct.nlattr* %54, i32 %55, i32 %56)
  store %struct.nft_table* %57, %struct.nft_table** %18, align 8
  %58 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %59 = call i64 @IS_ERR(%struct.nft_table* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %49
  %62 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %63 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %64 = load i64, i64* @NFTA_OBJ_TABLE, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %62, %struct.nlattr* %66)
  %68 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %69 = call i32 @PTR_ERR(%struct.nft_table* %68)
  store i32 %69, i32* %7, align 4
  br label %139

70:                                               ; preds = %49
  %71 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %72 = load i64, i64* @NFTA_OBJ_TYPE, align 8
  %73 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %71, i64 %72
  %74 = load %struct.nlattr*, %struct.nlattr** %73, align 8
  %75 = call i32 @nla_get_be32(%struct.nlattr* %74)
  %76 = call i32 @ntohl(i32 %75)
  store i32 %76, i32* %21, align 4
  %77 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %78 = load i64, i64* @NFTA_OBJ_HANDLE, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %70
  %83 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %84 = load i64, i64* @NFTA_OBJ_HANDLE, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %83, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  store %struct.nlattr* %86, %struct.nlattr** %17, align 8
  %87 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %88 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %89 = load i32, i32* %21, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call %struct.nft_table* @nft_obj_lookup_byhandle(%struct.nft_table* %87, %struct.nlattr* %88, i32 %89, i32 %90)
  %92 = bitcast %struct.nft_table* %91 to %struct.nft_object*
  store %struct.nft_object* %92, %struct.nft_object** %19, align 8
  br label %105

93:                                               ; preds = %70
  %94 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %95 = load i64, i64* @NFTA_OBJ_NAME, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  store %struct.nlattr* %97, %struct.nlattr** %17, align 8
  %98 = load %struct.net*, %struct.net** %8, align 8
  %99 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %100 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call %struct.nft_table* @nft_obj_lookup(%struct.net* %98, %struct.nft_table* %99, %struct.nlattr* %100, i32 %101, i32 %102)
  %104 = bitcast %struct.nft_table* %103 to %struct.nft_object*
  store %struct.nft_object* %104, %struct.nft_object** %19, align 8
  br label %105

105:                                              ; preds = %93, %82
  %106 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %107 = bitcast %struct.nft_object* %106 to %struct.nft_table*
  %108 = call i64 @IS_ERR(%struct.nft_table* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %112 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %113 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %111, %struct.nlattr* %112)
  %114 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %115 = bitcast %struct.nft_object* %114 to %struct.nft_table*
  %116 = call i32 @PTR_ERR(%struct.nft_table* %115)
  store i32 %116, i32* %7, align 4
  br label %139

117:                                              ; preds = %105
  %118 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %119 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %124 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %125 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %123, %struct.nlattr* %124)
  %126 = load i32, i32* @EBUSY, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %7, align 4
  br label %139

128:                                              ; preds = %117
  %129 = load %struct.net*, %struct.net** %8, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %131 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %132 = load i32, i32* %16, align 4
  %133 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %134 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %135 = call i32 @nft_ctx_init(%struct.nft_ctx* %20, %struct.net* %129, %struct.sk_buff* %130, %struct.nlmsghdr* %131, i32 %132, %struct.nft_table* %133, i32* null, %struct.nlattr** %134)
  %136 = load %struct.nft_object*, %struct.nft_object** %19, align 8
  %137 = bitcast %struct.nft_object* %136 to %struct.nft_table*
  %138 = call i32 @nft_delobj(%struct.nft_ctx* %20, %struct.nft_table* %137)
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %128, %122, %110, %61, %46
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_next(%struct.net*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.nft_table* @nft_obj_lookup_byhandle(%struct.nft_table*, %struct.nlattr*, i32, i32) #1

declare dso_local %struct.nft_table* @nft_obj_lookup(%struct.net*, %struct.nft_table*, %struct.nlattr*, i32, i32) #1

declare dso_local i32 @nft_ctx_init(%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.nft_table*, i32*, %struct.nlattr**) #1

declare dso_local i32 @nft_delobj(%struct.nft_ctx*, %struct.nft_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
