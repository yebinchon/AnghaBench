; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_prefix.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_inet6_fill_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.inet6_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.prefix_info = type { i32, i32, %struct.prefix_cacheinfo, i64, i64, i32, i32 }
%struct.prefix_cacheinfo = type { i8*, i8* }
%struct.prefixmsg = type { i32, i64, i32, i32, i32, i64, i64, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IF_PREFIX_ONLINK = common dso_local global i32 0, align 4
@IF_PREFIX_AUTOCONF = common dso_local global i32 0, align 4
@PREFIX_ADDRESS = common dso_local global i32 0, align 4
@PREFIX_CACHEINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.inet6_dev*, %struct.prefix_info*, i32, i32, i32, i32)* @inet6_fill_prefix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_fill_prefix(%struct.sk_buff* %0, %struct.inet6_dev* %1, %struct.prefix_info* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.inet6_dev*, align 8
  %11 = alloca %struct.prefix_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.prefixmsg*, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca %struct.prefix_cacheinfo, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store %struct.inet6_dev* %1, %struct.inet6_dev** %10, align 8
  store %struct.prefix_info* %2, %struct.prefix_info** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %15, align 4
  %24 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %19, i32 %20, i32 %21, i32 %22, i32 56, i32 %23)
  store %struct.nlmsghdr* %24, %struct.nlmsghdr** %17, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %26 = icmp ne %struct.nlmsghdr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %7
  %28 = load i32, i32* @EMSGSIZE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %116

30:                                               ; preds = %7
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %32 = call %struct.prefixmsg* @nlmsg_data(%struct.nlmsghdr* %31)
  store %struct.prefixmsg* %32, %struct.prefixmsg** %16, align 8
  %33 = load i32, i32* @AF_INET6, align 4
  %34 = load %struct.prefixmsg*, %struct.prefixmsg** %16, align 8
  %35 = getelementptr inbounds %struct.prefixmsg, %struct.prefixmsg* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.prefixmsg*, %struct.prefixmsg** %16, align 8
  %37 = getelementptr inbounds %struct.prefixmsg, %struct.prefixmsg* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load %struct.prefixmsg*, %struct.prefixmsg** %16, align 8
  %39 = getelementptr inbounds %struct.prefixmsg, %struct.prefixmsg* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.inet6_dev*, %struct.inet6_dev** %10, align 8
  %41 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.prefixmsg*, %struct.prefixmsg** %16, align 8
  %46 = getelementptr inbounds %struct.prefixmsg, %struct.prefixmsg* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.prefix_info*, %struct.prefix_info** %11, align 8
  %48 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.prefixmsg*, %struct.prefixmsg** %16, align 8
  %51 = getelementptr inbounds %struct.prefixmsg, %struct.prefixmsg* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.prefix_info*, %struct.prefix_info** %11, align 8
  %53 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.prefixmsg*, %struct.prefixmsg** %16, align 8
  %56 = getelementptr inbounds %struct.prefixmsg, %struct.prefixmsg* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.prefixmsg*, %struct.prefixmsg** %16, align 8
  %58 = getelementptr inbounds %struct.prefixmsg, %struct.prefixmsg* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.prefixmsg*, %struct.prefixmsg** %16, align 8
  %60 = getelementptr inbounds %struct.prefixmsg, %struct.prefixmsg* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.prefix_info*, %struct.prefix_info** %11, align 8
  %62 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %30
  %66 = load i32, i32* @IF_PREFIX_ONLINK, align 4
  %67 = load %struct.prefixmsg*, %struct.prefixmsg** %16, align 8
  %68 = getelementptr inbounds %struct.prefixmsg, %struct.prefixmsg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %30
  %72 = load %struct.prefix_info*, %struct.prefix_info** %11, align 8
  %73 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @IF_PREFIX_AUTOCONF, align 4
  %78 = load %struct.prefixmsg*, %struct.prefixmsg** %16, align 8
  %79 = getelementptr inbounds %struct.prefixmsg, %struct.prefixmsg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = load i32, i32* @PREFIX_ADDRESS, align 4
  %85 = load %struct.prefix_info*, %struct.prefix_info** %11, align 8
  %86 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %85, i32 0, i32 2
  %87 = call i64 @nla_put(%struct.sk_buff* %83, i32 %84, i32 16, %struct.prefix_cacheinfo* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %110

90:                                               ; preds = %82
  %91 = load %struct.prefix_info*, %struct.prefix_info** %11, align 8
  %92 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @ntohl(i32 %93)
  %95 = getelementptr inbounds %struct.prefix_cacheinfo, %struct.prefix_cacheinfo* %18, i32 0, i32 1
  store i8* %94, i8** %95, align 8
  %96 = load %struct.prefix_info*, %struct.prefix_info** %11, align 8
  %97 = getelementptr inbounds %struct.prefix_info, %struct.prefix_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @ntohl(i32 %98)
  %100 = getelementptr inbounds %struct.prefix_cacheinfo, %struct.prefix_cacheinfo* %18, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = load i32, i32* @PREFIX_CACHEINFO, align 4
  %103 = call i64 @nla_put(%struct.sk_buff* %101, i32 %102, i32 16, %struct.prefix_cacheinfo* %18)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %90
  br label %110

106:                                              ; preds = %90
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %109 = call i32 @nlmsg_end(%struct.sk_buff* %107, %struct.nlmsghdr* %108)
  store i32 0, i32* %8, align 4
  br label %116

110:                                              ; preds = %105, %89
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8
  %113 = call i32 @nlmsg_cancel(%struct.sk_buff* %111, %struct.nlmsghdr* %112)
  %114 = load i32, i32* @EMSGSIZE, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %8, align 4
  br label %116

116:                                              ; preds = %110, %106, %27
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.prefixmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.prefix_cacheinfo*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
