; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_flags_dump_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_flags_dump_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.batadv_orig_node = type { i32, i32, i32 }

@batadv_netlink_family = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@BATADV_CMD_GET_MCAST_FLAGS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BATADV_ATTR_ORIG_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@BATADV_ORIG_CAPA_HAS_MCAST = common dso_local global i32 0, align 4
@BATADV_ATTR_MCAST_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.netlink_callback*, %struct.batadv_orig_node*)* @batadv_mcast_flags_dump_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_mcast_flags_dump_entry(%struct.sk_buff* %0, i32 %1, %struct.netlink_callback* %2, %struct.batadv_orig_node* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.batadv_orig_node*, align 8
  %10 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.netlink_callback* %2, %struct.netlink_callback** %8, align 8
  store %struct.batadv_orig_node* %3, %struct.batadv_orig_node** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %14 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NLM_F_MULTI, align 4
  %19 = load i32, i32* @BATADV_CMD_GET_MCAST_FLAGS, align 4
  %20 = call i8* @genlmsg_put(%struct.sk_buff* %11, i32 %12, i32 %17, i32* @batadv_netlink_family, i32 %18, i32 %19)
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOBUFS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %69

26:                                               ; preds = %4
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %27, i8* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = load i32, i32* @BATADV_ATTR_ORIG_ADDRESS, align 4
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %34 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nla_put(%struct.sk_buff* %30, i32 %31, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %26
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @genlmsg_cancel(%struct.sk_buff* %39, i8* %40)
  %42 = load i32, i32* @EMSGSIZE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %69

44:                                               ; preds = %26
  %45 = load i32, i32* @BATADV_ORIG_CAPA_HAS_MCAST, align 4
  %46 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %47 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %46, i32 0, i32 1
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = load i32, i32* @BATADV_ATTR_MCAST_FLAGS, align 4
  %53 = load %struct.batadv_orig_node*, %struct.batadv_orig_node** %9, align 8
  %54 = getelementptr inbounds %struct.batadv_orig_node, %struct.batadv_orig_node* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @nla_put_u32(%struct.sk_buff* %51, i32 %52, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @genlmsg_cancel(%struct.sk_buff* %59, i8* %60)
  %62 = load i32, i32* @EMSGSIZE, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %69

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @genlmsg_end(%struct.sk_buff* %66, i8* %67)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %65, %58, %38, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
