; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_setlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netlink.c_br_setlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@IFLA_BRPORT_MAX = common dso_local global i32 0, align 4
@IFLA_PROTINFO = common dso_local global i32 0, align 4
@IFLA_AF_SPEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NLA_F_NESTED = common dso_local global i32 0, align 4
@br_port_policy = common dso_local global i32 0, align 4
@RTM_SETLINK = common dso_local global i32 0, align 4
@RTM_NEWLINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_setlink(%struct.net_device* %0, %struct.nlmsghdr* %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.net_bridge*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.net_bridge_port*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = call i64 @netdev_priv(%struct.net_device* %19)
  %21 = inttoptr i64 %20 to %struct.net_bridge*
  store %struct.net_bridge* %21, %struct.net_bridge** %10, align 8
  %22 = load i32, i32* @IFLA_BRPORT_MAX, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %11, align 8
  %26 = alloca %struct.nlattr*, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %28 = load i32, i32* @IFLA_PROTINFO, align 4
  %29 = call %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr* %27, i32 4, i32 %28)
  store %struct.nlattr* %29, %struct.nlattr** %14, align 8
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %31 = load i32, i32* @IFLA_AF_SPEC, align 4
  %32 = call %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr* %30, i32 4, i32 %31)
  store %struct.nlattr* %32, %struct.nlattr** %15, align 8
  %33 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %4
  %36 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %134

39:                                               ; preds = %35, %4
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device* %40)
  store %struct.net_bridge_port* %41, %struct.net_bridge_port** %13, align 8
  %42 = load %struct.net_bridge_port*, %struct.net_bridge_port** %13, align 8
  %43 = icmp ne %struct.net_bridge_port* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %46 = icmp ne %struct.nlattr* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %134

50:                                               ; preds = %44, %39
  %51 = load %struct.net_bridge_port*, %struct.net_bridge_port** %13, align 8
  %52 = icmp ne %struct.net_bridge_port* %51, null
  br i1 %52, label %53, label %113

53:                                               ; preds = %50
  %54 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %113

56:                                               ; preds = %53
  %57 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %58 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @NLA_F_NESTED, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %56
  %64 = load i32, i32* @IFLA_BRPORT_MAX, align 4
  %65 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %66 = load i32, i32* @br_port_policy, align 4
  %67 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %26, i32 %64, %struct.nlattr* %65, i32 %66, i32* null)
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %17, align 4
  store i32 %71, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %134

72:                                               ; preds = %63
  %73 = load %struct.net_bridge_port*, %struct.net_bridge_port** %13, align 8
  %74 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @spin_lock_bh(i32* %76)
  %78 = load %struct.net_bridge_port*, %struct.net_bridge_port** %13, align 8
  %79 = call i32 @br_setport(%struct.net_bridge_port* %78, %struct.nlattr** %26)
  store i32 %79, i32* %17, align 4
  %80 = load %struct.net_bridge_port*, %struct.net_bridge_port** %13, align 8
  %81 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock_bh(i32* %83)
  br label %108

85:                                               ; preds = %56
  %86 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %87 = call i32 @nla_len(%struct.nlattr* %86)
  %88 = sext i32 %87 to i64
  %89 = icmp ult i64 %88, 4
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %134

93:                                               ; preds = %85
  %94 = load %struct.net_bridge_port*, %struct.net_bridge_port** %13, align 8
  %95 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = call i32 @spin_lock_bh(i32* %97)
  %99 = load %struct.net_bridge_port*, %struct.net_bridge_port** %13, align 8
  %100 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %101 = call i32 @nla_get_u8(%struct.nlattr* %100)
  %102 = call i32 @br_set_port_state(%struct.net_bridge_port* %99, i32 %101)
  store i32 %102, i32* %17, align 4
  %103 = load %struct.net_bridge_port*, %struct.net_bridge_port** %13, align 8
  %104 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock_bh(i32* %106)
  br label %108

108:                                              ; preds = %93, %72
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  br label %132

112:                                              ; preds = %108
  store i32 1, i32* %16, align 4
  br label %113

113:                                              ; preds = %112, %53, %50
  %114 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %115 = icmp ne %struct.nlattr* %114, null
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %118 = load %struct.net_bridge_port*, %struct.net_bridge_port** %13, align 8
  %119 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %120 = load i32, i32* @RTM_SETLINK, align 4
  %121 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %122 = call i32 @br_afspec(%struct.net_bridge* %117, %struct.net_bridge_port* %118, %struct.nlattr* %119, i32 %120, i32* %16, %struct.netlink_ext_ack* %121)
  store i32 %122, i32* %17, align 4
  br label %123

123:                                              ; preds = %116, %113
  %124 = load i32, i32* %16, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i32, i32* @RTM_NEWLINK, align 4
  %128 = load %struct.net_bridge*, %struct.net_bridge** %10, align 8
  %129 = load %struct.net_bridge_port*, %struct.net_bridge_port** %13, align 8
  %130 = call i32 @br_ifinfo_notify(i32 %127, %struct.net_bridge* %128, %struct.net_bridge_port* %129)
  br label %131

131:                                              ; preds = %126, %123
  br label %132

132:                                              ; preds = %131, %111
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %134

134:                                              ; preds = %132, %90, %70, %47, %38
  %135 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local i64 @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.nlmsghdr*, i32, i32) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rtnl(%struct.net_device*) #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @br_setport(%struct.net_bridge_port*, %struct.nlattr**) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @br_set_port_state(%struct.net_bridge_port*, i32) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @br_afspec(%struct.net_bridge*, %struct.net_bridge_port*, %struct.nlattr*, i32, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @br_ifinfo_notify(i32, %struct.net_bridge*, %struct.net_bridge_port*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
