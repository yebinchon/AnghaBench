; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_obj_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_obj_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nft_table = type { i32 }
%struct.nft_object = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.nfgenmsg = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32 }

@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@NFTA_OBJ_TABLE = common dso_local global i32 0, align 4
@NFTA_OBJ_NAME = common dso_local global i32 0, align 4
@NFTA_OBJ_TYPE = common dso_local global i32 0, align 4
@NFTA_OBJ_USE = common dso_local global i32 0, align 4
@NFTA_OBJ_DATA = common dso_local global i32 0, align 4
@NFTA_OBJ_HANDLE = common dso_local global i32 0, align 4
@NFTA_OBJ_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net*, i32, i32, i32, i32, i32, %struct.nft_table*, %struct.nft_object*, i32)* @nf_tables_fill_obj_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_fill_obj_info(%struct.sk_buff* %0, %struct.net* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.nft_table* %7, %struct.nft_object* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.net*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.nft_table*, align 8
  %20 = alloca %struct.nft_object*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.nfgenmsg*, align 8
  %23 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %12, align 8
  store %struct.net* %1, %struct.net** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store %struct.nft_table* %7, %struct.nft_table** %19, align 8
  store %struct.nft_object* %8, %struct.nft_object** %20, align 8
  store i32 %9, i32* %21, align 4
  %24 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call i32 @nfnl_msg_type(i32 %24, i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %27, i32 %28, i32 %29, i32 %30, i32 12, i32 %31)
  store %struct.nlmsghdr* %32, %struct.nlmsghdr** %23, align 8
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %23, align 8
  %34 = icmp eq %struct.nlmsghdr* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %10
  br label %113

36:                                               ; preds = %10
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %23, align 8
  %38 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %37)
  store %struct.nfgenmsg* %38, %struct.nfgenmsg** %22, align 8
  %39 = load i32, i32* %18, align 4
  %40 = load %struct.nfgenmsg*, %struct.nfgenmsg** %22, align 8
  %41 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @NFNETLINK_V0, align 4
  %43 = load %struct.nfgenmsg*, %struct.nfgenmsg** %22, align 8
  %44 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.net*, %struct.net** %13, align 8
  %46 = getelementptr inbounds %struct.net, %struct.net* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 65535
  %50 = call i32 @htons(i32 %49)
  %51 = load %struct.nfgenmsg*, %struct.nfgenmsg** %22, align 8
  %52 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %54 = load i32, i32* @NFTA_OBJ_TABLE, align 4
  %55 = load %struct.nft_table*, %struct.nft_table** %19, align 8
  %56 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @nla_put_string(%struct.sk_buff* %53, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %108, label %60

60:                                               ; preds = %36
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = load i32, i32* @NFTA_OBJ_NAME, align 4
  %63 = load %struct.nft_object*, %struct.nft_object** %20, align 8
  %64 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @nla_put_string(%struct.sk_buff* %61, i32 %62, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %108, label %69

69:                                               ; preds = %60
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = load i32, i32* @NFTA_OBJ_TYPE, align 4
  %72 = load %struct.nft_object*, %struct.nft_object** %20, align 8
  %73 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @htonl(i32 %78)
  %80 = call i64 @nla_put_be32(%struct.sk_buff* %70, i32 %71, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %69
  %83 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %84 = load i32, i32* @NFTA_OBJ_USE, align 4
  %85 = load %struct.nft_object*, %struct.nft_object** %20, align 8
  %86 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @htonl(i32 %87)
  %89 = call i64 @nla_put_be32(%struct.sk_buff* %83, i32 %84, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %82
  %92 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %93 = load i32, i32* @NFTA_OBJ_DATA, align 4
  %94 = load %struct.nft_object*, %struct.nft_object** %20, align 8
  %95 = load i32, i32* %21, align 4
  %96 = call i64 @nft_object_dump(%struct.sk_buff* %92, i32 %93, %struct.nft_object* %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %91
  %99 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %100 = load i32, i32* @NFTA_OBJ_HANDLE, align 4
  %101 = load %struct.nft_object*, %struct.nft_object** %20, align 8
  %102 = getelementptr inbounds %struct.nft_object, %struct.nft_object* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @cpu_to_be64(i32 %103)
  %105 = load i32, i32* @NFTA_OBJ_PAD, align 4
  %106 = call i64 @nla_put_be64(%struct.sk_buff* %99, i32 %100, i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %98, %91, %82, %69, %60, %36
  br label %113

109:                                              ; preds = %98
  %110 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %111 = load %struct.nlmsghdr*, %struct.nlmsghdr** %23, align 8
  %112 = call i32 @nlmsg_end(%struct.sk_buff* %110, %struct.nlmsghdr* %111)
  store i32 0, i32* %11, align 4
  br label %117

113:                                              ; preds = %108, %35
  %114 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %115 = load %struct.nlmsghdr*, %struct.nlmsghdr** %23, align 8
  %116 = call i32 @nlmsg_trim(%struct.sk_buff* %114, %struct.nlmsghdr* %115)
  store i32 -1, i32* %11, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = load i32, i32* %11, align 4
  ret i32 %118
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nft_object_dump(%struct.sk_buff*, i32, %struct.nft_object*, i32) #1

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
