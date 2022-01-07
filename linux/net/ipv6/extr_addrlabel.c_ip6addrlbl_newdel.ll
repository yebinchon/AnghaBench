; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c_ip6addrlbl_newdel.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrlabel.c_ip6addrlbl_newdel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.ifaddrlblmsg = type { i64, i32, i32 }
%struct.in6_addr = type { i32 }
%struct.nlattr = type { i32 }

@IFAL_MAX = common dso_local global i32 0, align 4
@ifal_policy = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFAL_ADDRESS = common dso_local global i64 0, align 8
@IFAL_LABEL = common dso_local global i64 0, align 8
@IPV6_ADDR_LABEL_DEFAULT = common dso_local global i64 0, align 8
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @ip6addrlbl_newdel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6addrlbl_newdel(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.ifaddrlblmsg*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @sock_net(i32 %18)
  store %struct.net* %19, %struct.net** %8, align 8
  %20 = load i32, i32* @IFAL_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  store i32 0, i32* %14, align 4
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %26 = load i32, i32* @IFAL_MAX, align 4
  %27 = load i32, i32* @ifal_policy, align 4
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %29 = call i32 @nlmsg_parse_deprecated(%struct.nlmsghdr* %25, i32 16, %struct.nlattr** %24, i32 %26, i32 %27, %struct.netlink_ext_ack* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %131

34:                                               ; preds = %3
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %36 = call %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.ifaddrlblmsg* %36, %struct.ifaddrlblmsg** %9, align 8
  %37 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %38 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET6, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %44 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 128
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %34
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %131

50:                                               ; preds = %42
  %51 = load i64, i64* @IFAL_ADDRESS, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %131

58:                                               ; preds = %50
  %59 = load i64, i64* @IFAL_ADDRESS, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call %struct.in6_addr* @nla_data(%struct.nlattr* %61)
  store %struct.in6_addr* %62, %struct.in6_addr** %12, align 8
  %63 = load i64, i64* @IFAL_LABEL, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %131

70:                                               ; preds = %58
  %71 = load i64, i64* @IFAL_LABEL, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call i64 @nla_get_u32(%struct.nlattr* %73)
  store i64 %74, i64* %13, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* @IPV6_ADDR_LABEL_DEFAULT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %131

81:                                               ; preds = %70
  %82 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %83 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %126 [
    i32 128, label %85
    i32 129, label %116
  ]

85:                                               ; preds = %81
  %86 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %87 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load %struct.net*, %struct.net** %8, align 8
  %92 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %93 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @addrlbl_ifindex_exists(%struct.net* %91, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %90
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %131

100:                                              ; preds = %90, %85
  %101 = load %struct.net*, %struct.net** %8, align 8
  %102 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %103 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %104 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %107 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %13, align 8
  %110 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %111 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NLM_F_REPLACE, align 4
  %114 = and i32 %112, %113
  %115 = call i32 @ip6addrlbl_add(%struct.net* %101, %struct.in6_addr* %102, i32 %105, i32 %108, i64 %109, i32 %114)
  store i32 %115, i32* %14, align 4
  br label %129

116:                                              ; preds = %81
  %117 = load %struct.net*, %struct.net** %8, align 8
  %118 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %119 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %120 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ifaddrlblmsg*, %struct.ifaddrlblmsg** %9, align 8
  %123 = getelementptr inbounds %struct.ifaddrlblmsg, %struct.ifaddrlblmsg* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ip6addrlbl_del(%struct.net* %117, %struct.in6_addr* %118, i32 %121, i32 %124)
  store i32 %125, i32* %14, align 4
  br label %129

126:                                              ; preds = %81
  %127 = load i32, i32* @EOPNOTSUPP, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %14, align 4
  br label %129

129:                                              ; preds = %126, %116, %100
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %131

131:                                              ; preds = %129, %97, %78, %67, %55, %47, %32
  %132 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse_deprecated(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local %struct.ifaddrlblmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.in6_addr* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @addrlbl_ifindex_exists(%struct.net*, i32) #1

declare dso_local i32 @ip6addrlbl_add(%struct.net*, %struct.in6_addr*, i32, i32, i64, i32) #1

declare dso_local i32 @ip6addrlbl_del(%struct.net*, %struct.in6_addr*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
