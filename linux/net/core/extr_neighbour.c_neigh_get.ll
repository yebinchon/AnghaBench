; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.neigh_table = type { i32 }
%struct.neighbour = type { i32 }
%struct.pneigh_entry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Unknown device ifindex\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Network address not specified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NTF_PROXY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Proxy neighbour entry not found\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"No device specified\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Neighbour entry not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @neigh_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_get(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.neigh_table*, align 8
  %11 = alloca %struct.neighbour*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pneigh_entry*, align 8
  %17 = alloca %struct.TYPE_2__, align 4
  %18 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %8, align 8
  store %struct.net_device* null, %struct.net_device** %9, align 8
  store %struct.neigh_table* null, %struct.neigh_table** %10, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %25 = call i32 @neigh_valid_get_req(%struct.nlmsghdr* %23, %struct.neigh_table** %10, i8** %12, i32* %14, i32* %13, %struct.netlink_ext_ack* %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %15, align 4
  store i32 %29, i32* %4, align 4
  br label %119

30:                                               ; preds = %3
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.net*, %struct.net** %8, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call %struct.net_device* @__dev_get_by_index(%struct.net* %34, i32 %35)
  store %struct.net_device* %36, %struct.net_device** %9, align 8
  %37 = load %struct.net_device*, %struct.net_device** %9, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %33
  %40 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %41 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %119

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %50 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %119

53:                                               ; preds = %45
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @NTF_PROXY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %53
  %59 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %60 = load %struct.net*, %struct.net** %8, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = call %struct.pneigh_entry* @pneigh_lookup(%struct.neigh_table* %59, %struct.net* %60, i8* %61, %struct.net_device* %62, i32 0)
  store %struct.pneigh_entry* %63, %struct.pneigh_entry** %16, align 8
  %64 = load %struct.pneigh_entry*, %struct.pneigh_entry** %16, align 8
  %65 = icmp ne %struct.pneigh_entry* %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %58
  %67 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %68 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @ENOENT, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %119

71:                                               ; preds = %58
  %72 = load %struct.net*, %struct.net** %8, align 8
  %73 = load %struct.pneigh_entry*, %struct.pneigh_entry** %16, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = call i32 @NETLINK_CB(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %80 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %83 = call i32 @pneigh_get_reply(%struct.net* %72, %struct.pneigh_entry* %73, i32 %78, i32 %81, %struct.neigh_table* %82)
  store i32 %83, i32* %4, align 4
  br label %119

84:                                               ; preds = %53
  %85 = load %struct.net_device*, %struct.net_device** %9, align 8
  %86 = icmp ne %struct.net_device* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %89 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %119

92:                                               ; preds = %84
  %93 = load %struct.neigh_table*, %struct.neigh_table** %10, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load %struct.net_device*, %struct.net_device** %9, align 8
  %96 = call %struct.neighbour* @neigh_lookup(%struct.neigh_table* %93, i8* %94, %struct.net_device* %95)
  store %struct.neighbour* %96, %struct.neighbour** %11, align 8
  %97 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %98 = icmp ne %struct.neighbour* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %92
  %100 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %101 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %102 = load i32, i32* @ENOENT, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %119

104:                                              ; preds = %92
  %105 = load %struct.net*, %struct.net** %8, align 8
  %106 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = call i32 @NETLINK_CB(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %113 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @neigh_get_reply(%struct.net* %105, %struct.neighbour* %106, i32 %111, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load %struct.neighbour*, %struct.neighbour** %11, align 8
  %117 = call i32 @neigh_release(%struct.neighbour* %116)
  %118 = load i32, i32* %15, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %104, %99, %87, %71, %66, %48, %39, %28
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @neigh_valid_get_req(%struct.nlmsghdr*, %struct.neigh_table**, i8**, i32*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.pneigh_entry* @pneigh_lookup(%struct.neigh_table*, %struct.net*, i8*, %struct.net_device*, i32) #1

declare dso_local i32 @pneigh_get_reply(%struct.net*, %struct.pneigh_entry*, i32, i32, %struct.neigh_table*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local %struct.neighbour* @neigh_lookup(%struct.neigh_table*, i8*, %struct.net_device*) #1

declare dso_local i32 @neigh_get_reply(%struct.net*, %struct.neighbour*, i32, i32) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
