; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.ndmsg = type { i32, i32, i64 }
%struct.nlattr = type { i32 }
%struct.neigh_table = type { i32, i64 }
%struct.neighbour = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NDA_DST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Network address not specified\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid network address\00", align 1
@NTF_PROXY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NUD_FAILED = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @neigh_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_delete(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ndmsg*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.neigh_table*, align 8
  %12 = alloca %struct.neighbour*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %8, align 8
  store %struct.net_device* null, %struct.net_device** %13, align 8
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  %22 = call i32 (...) @ASSERT_RTNL()
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %24 = call i32 @nlmsg_len(%struct.nlmsghdr* %23)
  %25 = sext i32 %24 to i64
  %26 = icmp ult i64 %25, 16
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %130

28:                                               ; preds = %3
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %30 = load i32, i32* @NDA_DST, align 4
  %31 = call %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr* %29, i32 16, i32 %30)
  store %struct.nlattr* %31, %struct.nlattr** %10, align 8
  %32 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %130

37:                                               ; preds = %28
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %39 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.ndmsg* %39, %struct.ndmsg** %9, align 8
  %40 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %41 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.net*, %struct.net** %8, align 8
  %46 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %47 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.net_device* @__dev_get_by_index(%struct.net* %45, i64 %48)
  store %struct.net_device* %49, %struct.net_device** %13, align 8
  %50 = load %struct.net_device*, %struct.net_device** %13, align 8
  %51 = icmp eq %struct.net_device* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %14, align 4
  br label %130

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %37
  %57 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %58 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.neigh_table* @neigh_find_table(i32 %59)
  store %struct.neigh_table* %60, %struct.neigh_table** %11, align 8
  %61 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %62 = icmp eq %struct.neigh_table* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* @EAFNOSUPPORT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %132

66:                                               ; preds = %56
  %67 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %68 = call i32 @nla_len(%struct.nlattr* %67)
  %69 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %70 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = icmp slt i32 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %76 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %130

77:                                               ; preds = %66
  %78 = load %struct.ndmsg*, %struct.ndmsg** %9, align 8
  %79 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @NTF_PROXY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %86 = load %struct.net*, %struct.net** %8, align 8
  %87 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %88 = call i32 @nla_data(%struct.nlattr* %87)
  %89 = load %struct.net_device*, %struct.net_device** %13, align 8
  %90 = call i32 @pneigh_delete(%struct.neigh_table* %85, %struct.net* %86, i32 %88, %struct.net_device* %89)
  store i32 %90, i32* %14, align 4
  br label %130

91:                                               ; preds = %77
  %92 = load %struct.net_device*, %struct.net_device** %13, align 8
  %93 = icmp eq %struct.net_device* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %130

95:                                               ; preds = %91
  %96 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %97 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %98 = call i32 @nla_data(%struct.nlattr* %97)
  %99 = load %struct.net_device*, %struct.net_device** %13, align 8
  %100 = call %struct.neighbour* @neigh_lookup(%struct.neigh_table* %96, i32 %98, %struct.net_device* %99)
  store %struct.neighbour* %100, %struct.neighbour** %12, align 8
  %101 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %102 = icmp eq %struct.neighbour* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* @ENOENT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %14, align 4
  br label %130

106:                                              ; preds = %95
  %107 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %108 = load i32, i32* @NUD_FAILED, align 4
  %109 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %110 = load i32, i32* @NEIGH_UPDATE_F_ADMIN, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = call i32 @NETLINK_CB(%struct.sk_buff* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %118 = call i32 @__neigh_update(%struct.neighbour* %107, i32* null, i32 %108, i32 %111, i32 %116, %struct.netlink_ext_ack* %117)
  store i32 %118, i32* %14, align 4
  %119 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %120 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %119, i32 0, i32 0
  %121 = call i32 @write_lock_bh(i32* %120)
  %122 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %123 = call i32 @neigh_release(%struct.neighbour* %122)
  %124 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %125 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %126 = call i32 @neigh_remove_one(%struct.neighbour* %124, %struct.neigh_table* %125)
  %127 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %128 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %127, i32 0, i32 0
  %129 = call i32 @write_unlock_bh(i32* %128)
  br label %130

130:                                              ; preds = %106, %103, %94, %84, %74, %52, %34, %27
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %130, %63
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @nlmsg_len(%struct.nlmsghdr*) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr*, i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i64) #1

declare dso_local %struct.neigh_table* @neigh_find_table(i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @pneigh_delete(%struct.neigh_table*, %struct.net*, i32, %struct.net_device*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.neighbour* @neigh_lookup(%struct.neigh_table*, i32, %struct.net_device*) #1

declare dso_local i32 @__neigh_update(%struct.neighbour*, i32*, i32, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @neigh_remove_one(%struct.neighbour*, %struct.neigh_table*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
