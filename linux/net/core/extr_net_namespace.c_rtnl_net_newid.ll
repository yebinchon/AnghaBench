; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_net_newid.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_rtnl_net_newid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NETNSA_MAX = common dso_local global i32 0, align 4
@rtnl_net_policy = common dso_local global i32 0, align 4
@NETNSA_NSID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"nsid is missing\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NETNSA_PID = common dso_local global i64 0, align 8
@NETNSA_FD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Peer netns reference is missing\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Peer netns reference is invalid\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Peer netns already has a nsid assigned\00", align 1
@RTM_NEWNSID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"The specified nsid is already used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtnl_net_newid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_net_newid(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.net* @sock_net(i32 %19)
  store %struct.net* %20, %struct.net** %8, align 8
  %21 = load i32, i32* @NETNSA_MAX, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %9, align 8
  %25 = alloca %struct.nlattr*, i64 %23, align 16
  store i64 %23, i64* %10, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = load i32, i32* @NETNSA_MAX, align 4
  %28 = load i32, i32* @rtnl_net_policy, align 4
  %29 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %30 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %26, i32 4, %struct.nlattr** %25, i32 %27, i32 %28, %struct.netlink_ext_ack* %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %160

35:                                               ; preds = %3
  %36 = load i64, i64* @NETNSA_NSID, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %42 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %41, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %160

45:                                               ; preds = %35
  %46 = load i64, i64* @NETNSA_NSID, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i32 @nla_get_s32(%struct.nlattr* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i64, i64* @NETNSA_PID, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %45
  %55 = load i64, i64* @NETNSA_PID, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i32 @nla_get_u32(%struct.nlattr* %57)
  %59 = call %struct.net* @get_net_ns_by_pid(i32 %58)
  store %struct.net* %59, %struct.net** %12, align 8
  %60 = load i64, i64* @NETNSA_PID, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  store %struct.nlattr* %62, %struct.nlattr** %11, align 8
  br label %83

63:                                               ; preds = %45
  %64 = load i64, i64* @NETNSA_FD, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = icmp ne %struct.nlattr* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %63
  %69 = load i64, i64* @NETNSA_FD, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i32 @nla_get_u32(%struct.nlattr* %71)
  %73 = call %struct.net* @get_net_ns_by_fd(i32 %72)
  store %struct.net* %73, %struct.net** %12, align 8
  %74 = load i64, i64* @NETNSA_FD, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  store %struct.nlattr* %76, %struct.nlattr** %11, align 8
  br label %82

77:                                               ; preds = %63
  %78 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %79 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %160

82:                                               ; preds = %68
  br label %83

83:                                               ; preds = %82, %54
  %84 = load %struct.net*, %struct.net** %12, align 8
  %85 = call i64 @IS_ERR(%struct.net* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %89 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %90 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %88, %struct.nlattr* %89)
  %91 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %92 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.net*, %struct.net** %12, align 8
  %94 = call i32 @PTR_ERR(%struct.net* %93)
  store i32 %94, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %160

95:                                               ; preds = %83
  %96 = load %struct.net*, %struct.net** %8, align 8
  %97 = getelementptr inbounds %struct.net, %struct.net* %96, i32 0, i32 0
  %98 = call i32 @spin_lock_bh(i32* %97)
  %99 = load %struct.net*, %struct.net** %8, align 8
  %100 = load %struct.net*, %struct.net** %12, align 8
  %101 = call i64 @__peernet2id(%struct.net* %99, %struct.net* %100)
  %102 = icmp sge i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %95
  %104 = load %struct.net*, %struct.net** %8, align 8
  %105 = getelementptr inbounds %struct.net, %struct.net* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock_bh(i32* %105)
  %107 = load i32, i32* @EEXIST, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %14, align 4
  %109 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %110 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %111 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %109, %struct.nlattr* %110)
  %112 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %113 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %112, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %156

114:                                              ; preds = %95
  %115 = load %struct.net*, %struct.net** %8, align 8
  %116 = load %struct.net*, %struct.net** %12, align 8
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @alloc_netid(%struct.net* %115, %struct.net* %116, i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load %struct.net*, %struct.net** %8, align 8
  %120 = getelementptr inbounds %struct.net, %struct.net* %119, i32 0, i32 0
  %121 = call i32 @spin_unlock_bh(i32* %120)
  %122 = load i32, i32* %14, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %114
  %125 = load %struct.net*, %struct.net** %8, align 8
  %126 = load i32, i32* @RTM_NEWNSID, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = call i32 @NETLINK_CB(%struct.sk_buff* %128)
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i32 @rtnl_net_notifyid(%struct.net* %125, i32 %126, i32 %127, i32 %132, %struct.nlmsghdr* %133, i32 %134)
  store i32 0, i32* %14, align 4
  br label %155

136:                                              ; preds = %114
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* @ENOSPC, align 4
  %139 = sub nsw i32 0, %138
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %136
  %142 = load i32, i32* %13, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %141
  %145 = load i32, i32* @EEXIST, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %14, align 4
  %147 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %148 = load i64, i64* @NETNSA_NSID, align 8
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  %151 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %147, %struct.nlattr* %150)
  %152 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %153 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %144, %141, %136
  br label %155

155:                                              ; preds = %154, %124
  br label %156

156:                                              ; preds = %155, %103
  %157 = load %struct.net*, %struct.net** %12, align 8
  %158 = call i32 @put_net(%struct.net* %157)
  %159 = load i32, i32* %14, align 4
  store i32 %159, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %160

160:                                              ; preds = %156, %87, %77, %40, %33
  %161 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %161)
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nla_get_s32(%struct.nlattr*) #1

declare dso_local %struct.net* @get_net_ns_by_pid(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.net* @get_net_ns_by_fd(i32) #1

declare dso_local i64 @IS_ERR(%struct.net*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.net*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @__peernet2id(%struct.net*, %struct.net*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @alloc_netid(%struct.net*, %struct.net*, i32) #1

declare dso_local i32 @rtnl_net_notifyid(%struct.net*, i32, i32, i32, %struct.nlmsghdr*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @put_net(%struct.net*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
