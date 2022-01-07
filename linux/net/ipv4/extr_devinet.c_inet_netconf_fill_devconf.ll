; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_netconf_fill_devconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_devinet.c_inet_netconf_fill_devconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ipv4_devconf = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netconfmsg = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@NETCONFA_ALL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@NETCONFA_IFINDEX = common dso_local global i32 0, align 4
@NETCONFA_FORWARDING = common dso_local global i32 0, align 4
@FORWARDING = common dso_local global i32 0, align 4
@NETCONFA_RP_FILTER = common dso_local global i32 0, align 4
@RP_FILTER = common dso_local global i32 0, align 4
@NETCONFA_MC_FORWARDING = common dso_local global i32 0, align 4
@MC_FORWARDING = common dso_local global i32 0, align 4
@NETCONFA_BC_FORWARDING = common dso_local global i32 0, align 4
@BC_FORWARDING = common dso_local global i32 0, align 4
@NETCONFA_PROXY_NEIGH = common dso_local global i32 0, align 4
@PROXY_ARP = common dso_local global i32 0, align 4
@NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN = common dso_local global i32 0, align 4
@IGNORE_ROUTES_WITH_LINKDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.ipv4_devconf*, i32, i32, i32, i32, i32)* @inet_netconf_fill_devconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_netconf_fill_devconf(%struct.sk_buff* %0, i32 %1, %struct.ipv4_devconf* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipv4_devconf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nlmsghdr*, align 8
  %19 = alloca %struct.netconfmsg*, align 8
  %20 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store i32 %1, i32* %11, align 4
  store %struct.ipv4_devconf* %2, %struct.ipv4_devconf** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 4, i32 %25)
  store %struct.nlmsghdr* %26, %struct.nlmsghdr** %18, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %28 = icmp ne %struct.nlmsghdr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %8
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %172

32:                                               ; preds = %8
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* @NETCONFA_ALL, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %20, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %39 = call %struct.netconfmsg* @nlmsg_data(%struct.nlmsghdr* %38)
  store %struct.netconfmsg* %39, %struct.netconfmsg** %19, align 8
  %40 = load i32, i32* @AF_INET, align 4
  %41 = load %struct.netconfmsg*, %struct.netconfmsg** %19, align 8
  %42 = getelementptr inbounds %struct.netconfmsg, %struct.netconfmsg* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = load i32, i32* @NETCONFA_IFINDEX, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i64 @nla_put_s32(%struct.sk_buff* %43, i32 %44, i32 %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %166

49:                                               ; preds = %37
  %50 = load %struct.ipv4_devconf*, %struct.ipv4_devconf** %12, align 8
  %51 = icmp ne %struct.ipv4_devconf* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %162

53:                                               ; preds = %49
  %54 = load i32, i32* %20, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @NETCONFA_FORWARDING, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56, %53
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load i32, i32* @NETCONFA_FORWARDING, align 4
  %63 = load %struct.ipv4_devconf*, %struct.ipv4_devconf** %12, align 8
  %64 = load i32, i32* @FORWARDING, align 4
  %65 = getelementptr inbounds %struct.ipv4_devconf, %struct.ipv4_devconf* %63, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @IPV4_DEVCONF(i32 %66, i32 %64)
  %68 = call i64 @nla_put_s32(%struct.sk_buff* %61, i32 %62, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %166

71:                                               ; preds = %60, %56
  %72 = load i32, i32* %20, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* @NETCONFA_RP_FILTER, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74, %71
  %79 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %80 = load i32, i32* @NETCONFA_RP_FILTER, align 4
  %81 = load %struct.ipv4_devconf*, %struct.ipv4_devconf** %12, align 8
  %82 = load i32, i32* @RP_FILTER, align 4
  %83 = getelementptr inbounds %struct.ipv4_devconf, %struct.ipv4_devconf* %81, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @IPV4_DEVCONF(i32 %84, i32 %82)
  %86 = call i64 @nla_put_s32(%struct.sk_buff* %79, i32 %80, i32 %85)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %166

89:                                               ; preds = %78, %74
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @NETCONFA_MC_FORWARDING, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92, %89
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = load i32, i32* @NETCONFA_MC_FORWARDING, align 4
  %99 = load %struct.ipv4_devconf*, %struct.ipv4_devconf** %12, align 8
  %100 = load i32, i32* @MC_FORWARDING, align 4
  %101 = getelementptr inbounds %struct.ipv4_devconf, %struct.ipv4_devconf* %99, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @IPV4_DEVCONF(i32 %102, i32 %100)
  %104 = call i64 @nla_put_s32(%struct.sk_buff* %97, i32 %98, i32 %103)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %166

107:                                              ; preds = %96, %92
  %108 = load i32, i32* %20, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @NETCONFA_BC_FORWARDING, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %110, %107
  %115 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %116 = load i32, i32* @NETCONFA_BC_FORWARDING, align 4
  %117 = load %struct.ipv4_devconf*, %struct.ipv4_devconf** %12, align 8
  %118 = load i32, i32* @BC_FORWARDING, align 4
  %119 = getelementptr inbounds %struct.ipv4_devconf, %struct.ipv4_devconf* %117, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @IPV4_DEVCONF(i32 %120, i32 %118)
  %122 = call i64 @nla_put_s32(%struct.sk_buff* %115, i32 %116, i32 %121)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %166

125:                                              ; preds = %114, %110
  %126 = load i32, i32* %20, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* @NETCONFA_PROXY_NEIGH, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %128, %125
  %133 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %134 = load i32, i32* @NETCONFA_PROXY_NEIGH, align 4
  %135 = load %struct.ipv4_devconf*, %struct.ipv4_devconf** %12, align 8
  %136 = load i32, i32* @PROXY_ARP, align 4
  %137 = getelementptr inbounds %struct.ipv4_devconf, %struct.ipv4_devconf* %135, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @IPV4_DEVCONF(i32 %138, i32 %136)
  %140 = call i64 @nla_put_s32(%struct.sk_buff* %133, i32 %134, i32 %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %166

143:                                              ; preds = %132, %128
  %144 = load i32, i32* %20, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* @NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %161

150:                                              ; preds = %146, %143
  %151 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %152 = load i32, i32* @NETCONFA_IGNORE_ROUTES_WITH_LINKDOWN, align 4
  %153 = load %struct.ipv4_devconf*, %struct.ipv4_devconf** %12, align 8
  %154 = load i32, i32* @IGNORE_ROUTES_WITH_LINKDOWN, align 4
  %155 = getelementptr inbounds %struct.ipv4_devconf, %struct.ipv4_devconf* %153, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @IPV4_DEVCONF(i32 %156, i32 %154)
  %158 = call i64 @nla_put_s32(%struct.sk_buff* %151, i32 %152, i32 %157)
  %159 = icmp slt i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %150
  br label %166

161:                                              ; preds = %150, %146
  br label %162

162:                                              ; preds = %161, %52
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %165 = call i32 @nlmsg_end(%struct.sk_buff* %163, %struct.nlmsghdr* %164)
  store i32 0, i32* %9, align 4
  br label %172

166:                                              ; preds = %160, %142, %124, %106, %88, %70, %48
  %167 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %168 = load %struct.nlmsghdr*, %struct.nlmsghdr** %18, align 8
  %169 = call i32 @nlmsg_cancel(%struct.sk_buff* %167, %struct.nlmsghdr* %168)
  %170 = load i32, i32* @EMSGSIZE, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %166, %162, %29
  %173 = load i32, i32* %9, align 4
  ret i32 %173
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.netconfmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_s32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @IPV4_DEVCONF(i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
