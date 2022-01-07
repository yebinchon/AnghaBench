; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_ifinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_ifinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_dev = type { %struct.net_device* }
%struct.net_device = type { i64, i64, i32, i32, i64, i32, i32 }
%struct.ifinfomsg = type { i64, i64, i32, i32, i64, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IFLA_IFNAME = common dso_local global i32 0, align 4
@IFLA_ADDRESS = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i32 0, align 4
@IFLA_LINK = common dso_local global i32 0, align 4
@IFLA_OPERSTATE = common dso_local global i32 0, align 4
@IF_OPER_DOWN = common dso_local global i32 0, align 4
@IFLA_PROTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_dev*, i32, i32, i32, i32)* @inet6_fill_ifinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_fill_ifinfo(%struct.sk_buff* %0, %struct.inet6_dev* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.inet6_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca %struct.ifinfomsg*, align 8
  %16 = alloca %struct.nlmsghdr*, align 8
  %17 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.inet6_dev* %1, %struct.inet6_dev** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %19 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %21, i32 %22, i32 %23, i32 %24, i32 40, i32 %25)
  store %struct.nlmsghdr* %26, %struct.nlmsghdr** %16, align 8
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %28 = icmp ne %struct.nlmsghdr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %6
  %30 = load i32, i32* @EMSGSIZE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %144

32:                                               ; preds = %6
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %34 = call %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr* %33)
  store %struct.ifinfomsg* %34, %struct.ifinfomsg** %15, align 8
  %35 = load i32, i32* @AF_INET6, align 4
  %36 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %37 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %39 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.net_device*, %struct.net_device** %14, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %44 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.net_device*, %struct.net_device** %14, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %49 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %14, align 8
  %51 = call i32 @dev_get_flags(%struct.net_device* %50)
  %52 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %53 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ifinfomsg*, %struct.ifinfomsg** %15, align 8
  %55 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %57 = load i32, i32* @IFLA_IFNAME, align 4
  %58 = load %struct.net_device*, %struct.net_device** %14, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @nla_put_string(%struct.sk_buff* %56, i32 %57, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %117, label %63

63:                                               ; preds = %32
  %64 = load %struct.net_device*, %struct.net_device** %14, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = load i32, i32* @IFLA_ADDRESS, align 4
  %71 = load %struct.net_device*, %struct.net_device** %14, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.net_device*, %struct.net_device** %14, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @nla_put(%struct.sk_buff* %69, i32 %70, i64 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %117, label %79

79:                                               ; preds = %68, %63
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = load i32, i32* @IFLA_MTU, align 4
  %82 = load %struct.net_device*, %struct.net_device** %14, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @nla_put_u32(%struct.sk_buff* %80, i32 %81, i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %117, label %87

87:                                               ; preds = %79
  %88 = load %struct.net_device*, %struct.net_device** %14, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %14, align 8
  %92 = call i64 @dev_get_iflink(%struct.net_device* %91)
  %93 = icmp ne i64 %90, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = load i32, i32* @IFLA_LINK, align 4
  %97 = load %struct.net_device*, %struct.net_device** %14, align 8
  %98 = call i64 @dev_get_iflink(%struct.net_device* %97)
  %99 = call i64 @nla_put_u32(%struct.sk_buff* %95, i32 %96, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %117, label %101

101:                                              ; preds = %94, %87
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = load i32, i32* @IFLA_OPERSTATE, align 4
  %104 = load %struct.net_device*, %struct.net_device** %14, align 8
  %105 = call i64 @netif_running(%struct.net_device* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.net_device*, %struct.net_device** %14, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  br label %113

111:                                              ; preds = %101
  %112 = load i32, i32* @IF_OPER_DOWN, align 4
  br label %113

113:                                              ; preds = %111, %107
  %114 = phi i32 [ %110, %107 ], [ %112, %111 ]
  %115 = call i64 @nla_put_u8(%struct.sk_buff* %102, i32 %103, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %94, %79, %68, %32
  br label %138

118:                                              ; preds = %113
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load i32, i32* @IFLA_PROTINFO, align 4
  %121 = call i8* @nla_nest_start_noflag(%struct.sk_buff* %119, i32 %120)
  store i8* %121, i8** %17, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %118
  br label %138

125:                                              ; preds = %118
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = load %struct.inet6_dev*, %struct.inet6_dev** %9, align 8
  %128 = call i64 @inet6_fill_ifla6_attrs(%struct.sk_buff* %126, %struct.inet6_dev* %127, i32 0)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %138

131:                                              ; preds = %125
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = load i8*, i8** %17, align 8
  %134 = call i32 @nla_nest_end(%struct.sk_buff* %132, i8* %133)
  %135 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %136 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %137 = call i32 @nlmsg_end(%struct.sk_buff* %135, %struct.nlmsghdr* %136)
  store i32 0, i32* %7, align 4
  br label %144

138:                                              ; preds = %130, %124, %117
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = load %struct.nlmsghdr*, %struct.nlmsghdr** %16, align 8
  %141 = call i32 @nlmsg_cancel(%struct.sk_buff* %139, %struct.nlmsghdr* %140)
  %142 = load i32, i32* @EMSGSIZE, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %138, %131, %29
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ifinfomsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @dev_get_flags(%struct.net_device*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i64) #1

declare dso_local i64 @dev_get_iflink(%struct.net_device*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i8* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @inet6_fill_ifla6_attrs(%struct.sk_buff*, %struct.inet6_dev*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
