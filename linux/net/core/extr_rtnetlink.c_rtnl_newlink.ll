; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_rtnl_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nlattr = type { i32 }

@RTNL_MAX_TYPE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @rtnl_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtnl_newlink(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load i64, i64* @RTNL_MAX_TYPE, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.nlattr** @kmalloc_array(i64 %11, i32 8, i32 %12)
  store %struct.nlattr** %13, %struct.nlattr*** %8, align 8
  %14 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %15 = icmp ne %struct.nlattr** %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %23 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %24 = call i32 @__rtnl_newlink(%struct.sk_buff* %20, %struct.nlmsghdr* %21, %struct.nlattr** %22, %struct.netlink_ext_ack* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %26 = call i32 @kfree(%struct.nlattr** %25)
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.nlattr** @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @__rtnl_newlink(%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @kfree(%struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
