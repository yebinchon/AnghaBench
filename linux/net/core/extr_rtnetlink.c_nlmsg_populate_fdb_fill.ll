; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_nlmsg_populate_fdb_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_nlmsg_populate_fdb_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.ndmsg = type { i32, i64, i32, i64, i64, i64, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NDA_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i64*, i64, i32, i32, i32, i32, i32, i64)* @nlmsg_populate_fdb_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmsg_populate_fdb_fill(%struct.sk_buff* %0, %struct.net_device* %1, i64* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca %struct.nlmsghdr*, align 8
  %23 = alloca %struct.ndmsg*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %12, align 8
  store %struct.net_device* %1, %struct.net_device** %13, align 8
  store i64* %2, i64** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i64 %9, i64* %21, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* %20, align 4
  %29 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %24, i32 %25, i32 %26, i32 %27, i32 56, i32 %28)
  store %struct.nlmsghdr* %29, %struct.nlmsghdr** %22, align 8
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %22, align 8
  %31 = icmp ne %struct.nlmsghdr* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %10
  %33 = load i32, i32* @EMSGSIZE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  br label %85

35:                                               ; preds = %10
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %22, align 8
  %37 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %36)
  store %struct.ndmsg* %37, %struct.ndmsg** %23, align 8
  %38 = load i32, i32* @AF_BRIDGE, align 4
  %39 = load %struct.ndmsg*, %struct.ndmsg** %23, align 8
  %40 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 8
  %41 = load %struct.ndmsg*, %struct.ndmsg** %23, align 8
  %42 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %41, i32 0, i32 5
  store i64 0, i64* %42, align 8
  %43 = load %struct.ndmsg*, %struct.ndmsg** %23, align 8
  %44 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %19, align 4
  %46 = load %struct.ndmsg*, %struct.ndmsg** %23, align 8
  %47 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ndmsg*, %struct.ndmsg** %23, align 8
  %49 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %13, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ndmsg*, %struct.ndmsg** %23, align 8
  %54 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load i64, i64* %21, align 8
  %56 = load %struct.ndmsg*, %struct.ndmsg** %23, align 8
  %57 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %59 = load i32, i32* @NDA_LLADDR, align 4
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = load i64*, i64** %14, align 8
  %62 = call i64 @nla_put(%struct.sk_buff* %58, i32 %59, i32 %60, i64* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %35
  br label %79

65:                                               ; preds = %35
  %66 = load i64, i64* %15, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = load i32, i32* @NDA_VLAN, align 4
  %71 = call i64 @nla_put(%struct.sk_buff* %69, i32 %70, i32 8, i64* %15)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %79

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %65
  %76 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %77 = load %struct.nlmsghdr*, %struct.nlmsghdr** %22, align 8
  %78 = call i32 @nlmsg_end(%struct.sk_buff* %76, %struct.nlmsghdr* %77)
  store i32 0, i32* %11, align 4
  br label %85

79:                                               ; preds = %73, %64
  %80 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %81 = load %struct.nlmsghdr*, %struct.nlmsghdr** %22, align 8
  %82 = call i32 @nlmsg_cancel(%struct.sk_buff* %80, %struct.nlmsghdr* %81)
  %83 = load i32, i32* @EMSGSIZE, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %85

85:                                               ; preds = %79, %75, %32
  %86 = load i32, i32* %11, align 4
  ret i32 %86
}

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i64*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
