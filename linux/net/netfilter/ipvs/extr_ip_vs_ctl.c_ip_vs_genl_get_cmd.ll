; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_get_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_get_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net = type { i32 }
%struct.netns_ipvs = type { i32 }
%struct.ip_vs_service = type { i32 }
%struct.ip_vs_timeout_user = type { i32, i32, i32 }

@IPVS_CMD_NEW_SERVICE = common dso_local global i32 0, align 4
@IPVS_CMD_SET_INFO = common dso_local global i32 0, align 4
@IPVS_CMD_SET_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unknown Generic Netlink command\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__ip_vs_mutex = common dso_local global i32 0, align 4
@ip_vs_genl_family = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_SERVICE = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@IPVS_INFO_ATTR_VERSION = common dso_local global i32 0, align 4
@IP_VS_VERSION_CODE = common dso_local global i32 0, align 4
@IPVS_INFO_ATTR_CONN_TAB_SIZE = common dso_local global i32 0, align 4
@ip_vs_conn_tab_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"not enough space in Netlink message\0A\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_TIMEOUT_TCP = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_TIMEOUT_TCP_FIN = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_TIMEOUT_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ip_vs_genl_get_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_get_cmd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.netns_ipvs*, align 8
  %13 = alloca %struct.ip_vs_service*, align 8
  %14 = alloca %struct.ip_vs_timeout_user, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net* @sock_net(i32 %17)
  store %struct.net* %18, %struct.net** %11, align 8
  %19 = load %struct.net*, %struct.net** %11, align 8
  %20 = call %struct.netns_ipvs* @net_ipvs(%struct.net* %19)
  store %struct.netns_ipvs* %20, %struct.netns_ipvs** %12, align 8
  %21 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IPVS_CMD_NEW_SERVICE, align 4
  store i32 %29, i32* %10, align 4
  br label %46

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 129
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @IPVS_CMD_SET_INFO, align 4
  store i32 %34, i32* %10, align 4
  br label %45

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 130
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* @IPVS_CMD_SET_CONFIG, align 4
  store i32 %39, i32* %10, align 4
  br label %44

40:                                               ; preds = %35
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %131

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %28
  %47 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.sk_buff* @nlmsg_new(i32 %47, i32 %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %6, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %131

55:                                               ; preds = %46
  %56 = call i32 @mutex_lock(i32* @__ip_vs_mutex)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i8* @genlmsg_put_reply(%struct.sk_buff* %57, %struct.genl_info* %58, i32* @ip_vs_genl_family, i32 0, i32 %59)
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %121

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %114 [
    i32 128, label %66
    i32 130, label %97
    i32 129, label %100
  ]

66:                                               ; preds = %64
  %67 = load %struct.netns_ipvs*, %struct.netns_ipvs** %12, align 8
  %68 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %69 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @IPVS_CMD_ATTR_SERVICE, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.ip_vs_service* @ip_vs_genl_find_service(%struct.netns_ipvs* %67, i32 %73)
  store %struct.ip_vs_service* %74, %struct.ip_vs_service** %13, align 8
  %75 = load %struct.ip_vs_service*, %struct.ip_vs_service** %13, align 8
  %76 = call i32 @IS_ERR(%struct.ip_vs_service* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.ip_vs_service*, %struct.ip_vs_service** %13, align 8
  %80 = call i32 @PTR_ERR(%struct.ip_vs_service* %79)
  store i32 %80, i32* %8, align 4
  br label %125

81:                                               ; preds = %66
  %82 = load %struct.ip_vs_service*, %struct.ip_vs_service** %13, align 8
  %83 = icmp ne %struct.ip_vs_service* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load %struct.ip_vs_service*, %struct.ip_vs_service** %13, align 8
  %87 = call i32 @ip_vs_genl_fill_service(%struct.sk_buff* %85, %struct.ip_vs_service* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %121

91:                                               ; preds = %84
  br label %95

92:                                               ; preds = %81
  %93 = load i32, i32* @ESRCH, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %125

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95
  br label %114

97:                                               ; preds = %64
  %98 = load %struct.netns_ipvs*, %struct.netns_ipvs** %12, align 8
  %99 = call i32 @__ip_vs_get_timeouts(%struct.netns_ipvs* %98, %struct.ip_vs_timeout_user* %14)
  br label %114

100:                                              ; preds = %64
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = load i32, i32* @IPVS_INFO_ATTR_VERSION, align 4
  %103 = load i32, i32* @IP_VS_VERSION_CODE, align 4
  %104 = call i32 @nla_put_u32(%struct.sk_buff* %101, i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = load i32, i32* @IPVS_INFO_ATTR_CONN_TAB_SIZE, align 4
  %109 = load i32, i32* @ip_vs_conn_tab_size, align 4
  %110 = call i32 @nla_put_u32(%struct.sk_buff* %107, i32 %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106, %100
  br label %121

113:                                              ; preds = %106
  br label %114

114:                                              ; preds = %64, %113, %97, %96
  %115 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %116 = load i8*, i8** %7, align 8
  %117 = call i32 @genlmsg_end(%struct.sk_buff* %115, i8* %116)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %120 = call i32 @genlmsg_reply(%struct.sk_buff* %118, %struct.genl_info* %119)
  store i32 %120, i32* %8, align 4
  br label %128

121:                                              ; preds = %112, %90, %63
  %122 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* @EMSGSIZE, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %121, %92, %78
  %126 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %127 = call i32 @nlmsg_free(%struct.sk_buff* %126)
  br label %128

128:                                              ; preds = %125, %114
  %129 = call i32 @mutex_unlock(i32* @__ip_vs_mutex)
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %52, %40
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.netns_ipvs* @net_ipvs(%struct.net*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @genlmsg_put_reply(%struct.sk_buff*, %struct.genl_info*, i32*, i32, i32) #1

declare dso_local %struct.ip_vs_service* @ip_vs_genl_find_service(%struct.netns_ipvs*, i32) #1

declare dso_local i32 @IS_ERR(%struct.ip_vs_service*) #1

declare dso_local i32 @PTR_ERR(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_genl_fill_service(%struct.sk_buff*, %struct.ip_vs_service*) #1

declare dso_local i32 @__ip_vs_get_timeouts(%struct.netns_ipvs*, %struct.ip_vs_timeout_user*) #1

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
