; ModuleID = '/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_fill_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/phonet/extr_pn_netlink.c_fill_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.rtmsg = type { i32, i64, i32, i32, i32, i32, i64, i64, i32 }
%struct.nlmsghdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_PHONET = common dso_local global i32 0, align 4
@RT_TABLE_MAIN = common dso_local global i32 0, align 4
@RTPROT_STATIC = common dso_local global i32 0, align 4
@RT_SCOPE_UNIVERSE = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i32 0, align 4
@RTA_DST = common dso_local global i32 0, align 4
@RTA_OIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32, i32, i32, i32)* @fill_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_route(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtmsg*, align 8
  %15 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %16, i32 %17, i32 %18, i32 %19, i32 56, i32 0)
  store %struct.nlmsghdr* %20, %struct.nlmsghdr** %15, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %22 = icmp eq %struct.nlmsghdr* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EMSGSIZE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %76

26:                                               ; preds = %6
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %28 = call %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr* %27)
  store %struct.rtmsg* %28, %struct.rtmsg** %14, align 8
  %29 = load i32, i32* @AF_PHONET, align 4
  %30 = load %struct.rtmsg*, %struct.rtmsg** %14, align 8
  %31 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  %32 = load %struct.rtmsg*, %struct.rtmsg** %14, align 8
  %33 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %32, i32 0, i32 0
  store i32 6, i32* %33, align 8
  %34 = load %struct.rtmsg*, %struct.rtmsg** %14, align 8
  %35 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %34, i32 0, i32 7
  store i64 0, i64* %35, align 8
  %36 = load %struct.rtmsg*, %struct.rtmsg** %14, align 8
  %37 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %36, i32 0, i32 6
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @RT_TABLE_MAIN, align 4
  %39 = load %struct.rtmsg*, %struct.rtmsg** %14, align 8
  %40 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @RTPROT_STATIC, align 4
  %42 = load %struct.rtmsg*, %struct.rtmsg** %14, align 8
  %43 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @RT_SCOPE_UNIVERSE, align 4
  %45 = load %struct.rtmsg*, %struct.rtmsg** %14, align 8
  %46 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @RTN_UNICAST, align 4
  %48 = load %struct.rtmsg*, %struct.rtmsg** %14, align 8
  %49 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.rtmsg*, %struct.rtmsg** %14, align 8
  %51 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load i32, i32* @RTA_DST, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i64 @nla_put_u8(%struct.sk_buff* %52, i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %26
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = load i32, i32* @RTA_OIF, align 4
  %60 = load %struct.net_device*, %struct.net_device** %9, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @nla_put_u32(%struct.sk_buff* %58, i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %26
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %69 = call i32 @nlmsg_end(%struct.sk_buff* %67, %struct.nlmsghdr* %68)
  store i32 0, i32* %7, align 4
  br label %76

70:                                               ; preds = %65
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %73 = call i32 @nlmsg_cancel(%struct.sk_buff* %71, %struct.nlmsghdr* %72)
  %74 = load i32, i32* @EMSGSIZE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %70, %66, %23
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.rtmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
