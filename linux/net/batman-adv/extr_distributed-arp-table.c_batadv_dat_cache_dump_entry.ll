; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_cache_dump_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_distributed-arp-table.c_batadv_dat_cache_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_dat_entry = type { i32, i32, i32, i64 }

@batadv_netlink_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@BATADV_CMD_GET_DAT_CACHE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BATADV_ATTR_DAT_CACHE_IP4ADDRESS = common dso_local global i32 0, align 4
@BATADV_ATTR_DAT_CACHE_HWADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_ATTR_DAT_CACHE_VID = common dso_local global i32 0, align 4
@BATADV_ATTR_LAST_SEEN_MSECS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_dat_entry*)* @batadv_dat_cache_dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_dat_cache_dump_entry(%struct.sk_buff* %0, i32 %1, %struct.netlink_callback* %2, %struct.batadv_dat_entry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.batadv_dat_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.netlink_callback* %2, %struct.netlink_callback** %8, align 8
  store %struct.batadv_dat_entry* %3, %struct.batadv_dat_entry** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NLM_F_MULTI, align 4
  %20 = load i32, i32* @BATADV_CMD_GET_DAT_CACHE, align 4
  %21 = call i8* @genlmsg_put(%struct.sk_buff* %12, i32 %13, i32 %18, i32* @batadv_netlink_family, i32 %19, i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @ENOBUFS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %77

27:                                               ; preds = %4
  %28 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %28, i8* %29)
  %31 = load i64, i64* @jiffies, align 8
  %32 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %33 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = call i32 @jiffies_to_msecs(i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load i32, i32* @BATADV_ATTR_DAT_CACHE_IP4ADDRESS, align 4
  %39 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %40 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @nla_put_in_addr(%struct.sk_buff* %37, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %27
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* @BATADV_ATTR_DAT_CACHE_HWADDRESS, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %49 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nla_put(%struct.sk_buff* %45, i32 %46, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %44
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load i32, i32* @BATADV_ATTR_DAT_CACHE_VID, align 4
  %56 = load %struct.batadv_dat_entry*, %struct.batadv_dat_entry** %9, align 8
  %57 = getelementptr inbounds %struct.batadv_dat_entry, %struct.batadv_dat_entry* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @nla_put_u16(%struct.sk_buff* %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load i32, i32* @BATADV_ATTR_LAST_SEEN_MSECS, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @nla_put_u32(%struct.sk_buff* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61, %53, %44, %27
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @genlmsg_cancel(%struct.sk_buff* %68, i8* %69)
  %71 = load i32, i32* @EMSGSIZE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %77

73:                                               ; preds = %61
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = call i32 @genlmsg_end(%struct.sk_buff* %74, i8* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %67, %24
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i64 @nla_put_in_addr(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
