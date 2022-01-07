; ModuleID = '/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcb_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/dcb/extr_dcbnl.c_dcb_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reply_func = type { i32 (%struct.net_device.0*, %struct.nlmsghdr.1*, i32, %struct.nlattr.2**, %struct.sk_buff*)*, i32 }
%struct.net_device.0 = type opaque
%struct.nlmsghdr.1 = type opaque
%struct.nlattr.2 = type opaque
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i64, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.dcbmsg = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@DCB_ATTR_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTM_SETDCB = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@dcbnl_rtnl_policy = common dso_local global i32 0, align 4
@DCB_CMD_MAX = common dso_local global i64 0, align 8
@reply_funcs = common dso_local global %struct.reply_func* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DCB_ATTR_IFNAME = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @dcb_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcb_doit(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.dcbmsg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca %struct.reply_func*, align 8
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.net* @sock_net(i32 %22)
  store %struct.net* %23, %struct.net** %8, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %25 = call %struct.dcbmsg* @nlmsg_data(%struct.nlmsghdr* %24)
  store %struct.dcbmsg* %25, %struct.dcbmsg** %10, align 8
  %26 = load i32, i32* @DCB_ATTR_MAX, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %11, align 8
  %30 = alloca %struct.nlattr*, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i32 @NETLINK_CB(%struct.sk_buff* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %33
  %41 = phi i32 [ %38, %33 ], [ 0, %39 ]
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %15, align 4
  store %struct.nlmsghdr* null, %struct.nlmsghdr** %17, align 8
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %45 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RTM_SETDCB, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %40
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = load i32, i32* @CAP_NET_ADMIN, align 4
  %52 = call i32 @netlink_capable(%struct.sk_buff* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EPERM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %166

57:                                               ; preds = %49, %40
  %58 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %59 = load i32, i32* @DCB_ATTR_MAX, align 4
  %60 = load i32, i32* @dcbnl_rtnl_policy, align 4
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %62 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %58, i32 8, %struct.nlattr** %30, i32 %59, i32 %60, %struct.netlink_ext_ack* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %166

67:                                               ; preds = %57
  %68 = load %struct.dcbmsg*, %struct.dcbmsg** %10, align 8
  %69 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DCB_CMD_MAX, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %166

76:                                               ; preds = %67
  %77 = load %struct.reply_func*, %struct.reply_func** @reply_funcs, align 8
  %78 = load %struct.dcbmsg*, %struct.dcbmsg** %10, align 8
  %79 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.reply_func, %struct.reply_func* %77, i64 %80
  store %struct.reply_func* %81, %struct.reply_func** %18, align 8
  %82 = load %struct.reply_func*, %struct.reply_func** %18, align 8
  %83 = getelementptr inbounds %struct.reply_func, %struct.reply_func* %82, i32 0, i32 0
  %84 = load i32 (%struct.net_device.0*, %struct.nlmsghdr.1*, i32, %struct.nlattr.2**, %struct.sk_buff*)*, i32 (%struct.net_device.0*, %struct.nlmsghdr.1*, i32, %struct.nlattr.2**, %struct.sk_buff*)** %83, align 8
  %85 = icmp ne i32 (%struct.net_device.0*, %struct.nlmsghdr.1*, i32, %struct.nlattr.2**, %struct.sk_buff*)* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %76
  %87 = load i32, i32* @EOPNOTSUPP, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %166

89:                                               ; preds = %76
  %90 = load i64, i64* @DCB_ATTR_IFNAME, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp ne %struct.nlattr* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %166

97:                                               ; preds = %89
  %98 = load %struct.net*, %struct.net** %8, align 8
  %99 = load i64, i64* @DCB_ATTR_IFNAME, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = call i32 @nla_data(%struct.nlattr* %101)
  %103 = call %struct.net_device* @__dev_get_by_name(%struct.net* %98, i32 %102)
  store %struct.net_device* %103, %struct.net_device** %9, align 8
  %104 = load %struct.net_device*, %struct.net_device** %9, align 8
  %105 = icmp ne %struct.net_device* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %97
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %166

109:                                              ; preds = %97
  %110 = load %struct.net_device*, %struct.net_device** %9, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* @EOPNOTSUPP, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %166

117:                                              ; preds = %109
  %118 = load %struct.reply_func*, %struct.reply_func** %18, align 8
  %119 = getelementptr inbounds %struct.reply_func, %struct.reply_func* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.dcbmsg*, %struct.dcbmsg** %10, align 8
  %122 = getelementptr inbounds %struct.dcbmsg, %struct.dcbmsg* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %126 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %129 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.sk_buff* @dcbnl_newmsg(i32 %120, i64 %123, i32 %124, i32 %127, i32 %130, %struct.nlmsghdr** %17)
  store %struct.sk_buff* %131, %struct.sk_buff** %16, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %137, label %134

134:                                              ; preds = %117
  %135 = load i32, i32* @ENOBUFS, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %166

137:                                              ; preds = %117
  %138 = load %struct.reply_func*, %struct.reply_func** %18, align 8
  %139 = getelementptr inbounds %struct.reply_func, %struct.reply_func* %138, i32 0, i32 0
  %140 = load i32 (%struct.net_device.0*, %struct.nlmsghdr.1*, i32, %struct.nlattr.2**, %struct.sk_buff*)*, i32 (%struct.net_device.0*, %struct.nlmsghdr.1*, i32, %struct.nlattr.2**, %struct.sk_buff*)** %139, align 8
  %141 = load %struct.net_device*, %struct.net_device** %9, align 8
  %142 = bitcast %struct.net_device* %141 to %struct.net_device.0*
  %143 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %144 = bitcast %struct.nlmsghdr* %143 to %struct.nlmsghdr.1*
  %145 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %146 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = bitcast %struct.nlattr** %30 to %struct.nlattr.2**
  %149 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %150 = call i32 %140(%struct.net_device.0* %142, %struct.nlmsghdr.1* %144, i32 %147, %struct.nlattr.2** %148, %struct.sk_buff* %149)
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %137
  %154 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %155 = call i32 @nlmsg_free(%struct.sk_buff* %154)
  br label %164

156:                                              ; preds = %137
  %157 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %158 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %159 = call i32 @nlmsg_end(%struct.sk_buff* %157, %struct.nlmsghdr* %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %161 = load %struct.net*, %struct.net** %8, align 8
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @rtnl_unicast(%struct.sk_buff* %160, %struct.net* %161, i32 %162)
  store i32 %163, i32* %15, align 4
  br label %164

164:                                              ; preds = %156, %153
  %165 = load i32, i32* %15, align 4
  store i32 %165, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %166

166:                                              ; preds = %164, %134, %114, %106, %94, %86, %73, %65, %54
  %167 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.dcbmsg* @nlmsg_data(%struct.nlmsghdr*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @netlink_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.net_device* @__dev_get_by_name(%struct.net*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @dcbnl_newmsg(i32, i64, i32, i32, i32, %struct.nlmsghdr**) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
