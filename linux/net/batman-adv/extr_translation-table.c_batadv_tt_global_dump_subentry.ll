; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_dump_subentry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_translation-table.c_batadv_tt_global_dump_subentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_tt_common_entry = type { i32, i32, i32 }
%struct.batadv_tt_orig_list_entry = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.batadv_orig_node_vlan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BATADV_TT_SYNC_MASK = common dso_local global i32 0, align 4
@batadv_netlink_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@BATADV_CMD_GET_TRANSTABLE_GLOBAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BATADV_ATTR_TT_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_ATTR_ORIG_ADDRESS = common dso_local global i32 0, align 4
@BATADV_ATTR_TT_TTVN = common dso_local global i32 0, align 4
@BATADV_ATTR_TT_LAST_TTVN = common dso_local global i32 0, align 4
@BATADV_ATTR_TT_CRC32 = common dso_local global i32 0, align 4
@BATADV_ATTR_TT_VID = common dso_local global i32 0, align 4
@BATADV_ATTR_TT_FLAGS = common dso_local global i32 0, align 4
@BATADV_ATTR_FLAG_BEST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.batadv_tt_common_entry*, %struct.batadv_tt_orig_list_entry*, i32)* @batadv_tt_global_dump_subentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_tt_global_dump_subentry(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.batadv_tt_common_entry* %3, %struct.batadv_tt_orig_list_entry* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.batadv_tt_common_entry*, align 8
  %12 = alloca %struct.batadv_tt_orig_list_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.batadv_orig_node_vlan*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.batadv_tt_common_entry* %3, %struct.batadv_tt_common_entry** %11, align 8
  store %struct.batadv_tt_orig_list_entry* %4, %struct.batadv_tt_orig_list_entry** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %11, align 8
  %20 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BATADV_TT_SYNC_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %12, align 8
  %26 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %24, %27
  store i32 %28, i32* %14, align 4
  %29 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %12, align 8
  %30 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %11, align 8
  %33 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.batadv_orig_node_vlan* @batadv_orig_node_vlan_get(%struct.TYPE_4__* %31, i32 %34)
  store %struct.batadv_orig_node_vlan* %35, %struct.batadv_orig_node_vlan** %16, align 8
  %36 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %16, align 8
  %37 = icmp ne %struct.batadv_orig_node_vlan* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %136

39:                                               ; preds = %6
  %40 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %16, align 8
  %41 = getelementptr inbounds %struct.batadv_orig_node_vlan, %struct.batadv_orig_node_vlan* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %18, align 4
  %44 = load %struct.batadv_orig_node_vlan*, %struct.batadv_orig_node_vlan** %16, align 8
  %45 = call i32 @batadv_orig_node_vlan_put(%struct.batadv_orig_node_vlan* %44)
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @NLM_F_MULTI, align 4
  %50 = load i32, i32* @BATADV_CMD_GET_TRANSTABLE_GLOBAL, align 4
  %51 = call i8* @genlmsg_put(%struct.sk_buff* %46, i32 %47, i32 %48, i32* @batadv_netlink_family, i32 %49, i32 %50)
  store i8* %51, i8** %15, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %39
  %55 = load i32, i32* @ENOBUFS, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %136

57:                                               ; preds = %39
  %58 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %12, align 8
  %59 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = call i32 @atomic_read(i32* %61)
  store i32 %62, i32* %17, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load i32, i32* @BATADV_ATTR_TT_ADDRESS, align 4
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %11, align 8
  %67 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @nla_put(%struct.sk_buff* %63, i32 %64, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %116, label %71

71:                                               ; preds = %57
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = load i32, i32* @BATADV_ATTR_ORIG_ADDRESS, align 4
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %12, align 8
  %76 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @nla_put(%struct.sk_buff* %72, i32 %73, i32 %74, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %116, label %82

82:                                               ; preds = %71
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = load i32, i32* @BATADV_ATTR_TT_TTVN, align 4
  %85 = load %struct.batadv_tt_orig_list_entry*, %struct.batadv_tt_orig_list_entry** %12, align 8
  %86 = getelementptr inbounds %struct.batadv_tt_orig_list_entry, %struct.batadv_tt_orig_list_entry* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @nla_put_u8(%struct.sk_buff* %83, i32 %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %116, label %90

90:                                               ; preds = %82
  %91 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %92 = load i32, i32* @BATADV_ATTR_TT_LAST_TTVN, align 4
  %93 = load i32, i32* %17, align 4
  %94 = call i64 @nla_put_u8(%struct.sk_buff* %91, i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %116, label %96

96:                                               ; preds = %90
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = load i32, i32* @BATADV_ATTR_TT_CRC32, align 4
  %99 = load i32, i32* %18, align 4
  %100 = call i64 @nla_put_u32(%struct.sk_buff* %97, i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %116, label %102

102:                                              ; preds = %96
  %103 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %104 = load i32, i32* @BATADV_ATTR_TT_VID, align 4
  %105 = load %struct.batadv_tt_common_entry*, %struct.batadv_tt_common_entry** %11, align 8
  %106 = getelementptr inbounds %struct.batadv_tt_common_entry, %struct.batadv_tt_common_entry* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @nla_put_u16(%struct.sk_buff* %103, i32 %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %102
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = load i32, i32* @BATADV_ATTR_TT_FLAGS, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i64 @nla_put_u32(%struct.sk_buff* %111, i32 %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110, %102, %96, %90, %82, %71, %57
  br label %130

117:                                              ; preds = %110
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = load i32, i32* @BATADV_ATTR_FLAG_BEST, align 4
  %123 = call i64 @nla_put_flag(%struct.sk_buff* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %130

126:                                              ; preds = %120, %117
  %127 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %128 = load i8*, i8** %15, align 8
  %129 = call i32 @genlmsg_end(%struct.sk_buff* %127, i8* %128)
  store i32 0, i32* %7, align 4
  br label %136

130:                                              ; preds = %125, %116
  %131 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %132 = load i8*, i8** %15, align 8
  %133 = call i32 @genlmsg_cancel(%struct.sk_buff* %131, i8* %132)
  %134 = load i32, i32* @EMSGSIZE, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %130, %126, %54, %38
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local %struct.batadv_orig_node_vlan* @batadv_orig_node_vlan_get(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @batadv_orig_node_vlan_put(%struct.batadv_orig_node_vlan*) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
