; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_nl_newaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_dev.c_dn_nl_newaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.dn_dev = type { i32 }
%struct.ifaddrmsg = type { i32, i32, i32 }
%struct.dn_ifaddr = type { i32, %struct.dn_dev*, i32, i32, i8*, i8* }
%struct.nlattr = type { i32 }

@IFA_MAX = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@dn_ifa_policy = common dso_local global i32 0, align 4
@IFA_LOCAL = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@IFA_ADDRESS = common dso_local global i64 0, align 8
@IFA_FLAGS = common dso_local global i64 0, align 8
@IFA_LABEL = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @dn_nl_newaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_nl_newaddr(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.dn_dev*, align 8
  %13 = alloca %struct.ifaddrmsg*, align 8
  %14 = alloca %struct.dn_ifaddr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %8, align 8
  %21 = load i32, i32* @IFA_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = load i32, i32* @CAP_NET_ADMIN, align 4
  %28 = call i32 @netlink_capable(%struct.sk_buff* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %171

33:                                               ; preds = %3
  %34 = load %struct.net*, %struct.net** %8, align 8
  %35 = call i32 @net_eq(%struct.net* %34, i32* @init_net)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %171

40:                                               ; preds = %33
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %42 = load i32, i32* @IFA_MAX, align 4
  %43 = load i32, i32* @dn_ifa_policy, align 4
  %44 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %45 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %41, i32 12, %struct.nlattr** %25, i32 %42, i32 %43, %struct.netlink_ext_ack* %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %171

50:                                               ; preds = %40
  %51 = load i64, i64* @IFA_LOCAL, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp eq %struct.nlattr* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %171

58:                                               ; preds = %50
  %59 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %60 = call %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr* %59)
  store %struct.ifaddrmsg* %60, %struct.ifaddrmsg** %13, align 8
  %61 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %13, align 8
  %62 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.net_device* @__dev_get_by_index(i32* @init_net, i32 %63)
  store %struct.net_device* %64, %struct.net_device** %11, align 8
  %65 = icmp eq %struct.net_device* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %171

69:                                               ; preds = %58
  %70 = load %struct.net_device*, %struct.net_device** %11, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.dn_dev* @rtnl_dereference(i32 %72)
  store %struct.dn_dev* %73, %struct.dn_dev** %12, align 8
  %74 = icmp eq %struct.dn_dev* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %69
  %76 = load %struct.net_device*, %struct.net_device** %11, align 8
  %77 = call %struct.dn_dev* @dn_dev_create(%struct.net_device* %76, i32* %15)
  store %struct.dn_dev* %77, %struct.dn_dev** %12, align 8
  %78 = load %struct.dn_dev*, %struct.dn_dev** %12, align 8
  %79 = icmp ne %struct.dn_dev* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %15, align 4
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %171

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %69
  %84 = call %struct.dn_ifaddr* (...) @dn_dev_alloc_ifa()
  store %struct.dn_ifaddr* %84, %struct.dn_ifaddr** %14, align 8
  %85 = icmp eq %struct.dn_ifaddr* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @ENOBUFS, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %171

89:                                               ; preds = %83
  %90 = load i64, i64* @IFA_ADDRESS, align 8
  %91 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %90
  %92 = load %struct.nlattr*, %struct.nlattr** %91, align 8
  %93 = icmp eq %struct.nlattr* %92, null
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i64, i64* @IFA_LOCAL, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = load i64, i64* @IFA_ADDRESS, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %98
  store %struct.nlattr* %97, %struct.nlattr** %99, align 8
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i64, i64* @IFA_LOCAL, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = call i8* @nla_get_le16(%struct.nlattr* %103)
  %105 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %106 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load i64, i64* @IFA_ADDRESS, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = call i8* @nla_get_le16(%struct.nlattr* %109)
  %111 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %112 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load i64, i64* @IFA_FLAGS, align 8
  %114 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %113
  %115 = load %struct.nlattr*, %struct.nlattr** %114, align 8
  %116 = icmp ne %struct.nlattr* %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %100
  %118 = load i64, i64* @IFA_FLAGS, align 8
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = call i32 @nla_get_u32(%struct.nlattr* %120)
  br label %126

122:                                              ; preds = %100
  %123 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %13, align 8
  %124 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = phi i32 [ %121, %117 ], [ %125, %122 ]
  %128 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %129 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %13, align 8
  %131 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %134 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 8
  %135 = load %struct.dn_dev*, %struct.dn_dev** %12, align 8
  %136 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %137 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %136, i32 0, i32 1
  store %struct.dn_dev* %135, %struct.dn_dev** %137, align 8
  %138 = load i64, i64* @IFA_LABEL, align 8
  %139 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %138
  %140 = load %struct.nlattr*, %struct.nlattr** %139, align 8
  %141 = icmp ne %struct.nlattr* %140, null
  br i1 %141, label %142, label %151

142:                                              ; preds = %126
  %143 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %144 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i64, i64* @IFA_LABEL, align 8
  %147 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %146
  %148 = load %struct.nlattr*, %struct.nlattr** %147, align 8
  %149 = load i32, i32* @IFNAMSIZ, align 4
  %150 = call i32 @nla_strlcpy(i32 %145, %struct.nlattr* %148, i32 %149)
  br label %160

151:                                              ; preds = %126
  %152 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %153 = getelementptr inbounds %struct.dn_ifaddr, %struct.dn_ifaddr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.net_device*, %struct.net_device** %11, align 8
  %156 = getelementptr inbounds %struct.net_device, %struct.net_device* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @IFNAMSIZ, align 4
  %159 = call i32 @memcpy(i32 %154, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %151, %142
  %161 = load %struct.dn_dev*, %struct.dn_dev** %12, align 8
  %162 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %163 = call i32 @dn_dev_insert_ifa(%struct.dn_dev* %161, %struct.dn_ifaddr* %162)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load %struct.dn_ifaddr*, %struct.dn_ifaddr** %14, align 8
  %168 = call i32 @dn_dev_free_ifa(%struct.dn_ifaddr* %167)
  br label %169

169:                                              ; preds = %166, %160
  %170 = load i32, i32* %15, align 4
  store i32 %170, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %171

171:                                              ; preds = %169, %86, %80, %66, %55, %48, %37, %30
  %172 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netlink_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.ifaddrmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32*, i32) #1

declare dso_local %struct.dn_dev* @rtnl_dereference(i32) #1

declare dso_local %struct.dn_dev* @dn_dev_create(%struct.net_device*, i32*) #1

declare dso_local %struct.dn_ifaddr* @dn_dev_alloc_ifa(...) #1

declare dso_local i8* @nla_get_le16(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_strlcpy(i32, %struct.nlattr*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dn_dev_insert_ifa(%struct.dn_dev*, %struct.dn_ifaddr*) #1

declare dso_local i32 @dn_dev_free_ifa(%struct.dn_ifaddr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
