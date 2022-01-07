; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_dump_done.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_dump_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_callback = type { i64* }
%struct.ip_set_net = type { i32 }
%struct.ip_set = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ip_set*, %struct.netlink_callback*, i32)* }

@IPSET_CB_ARG0 = common dso_local global i64 0, align 8
@IPSET_CB_NET = common dso_local global i64 0, align 8
@IPSET_CB_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"release set %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netlink_callback*)* @ip_set_dump_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_dump_done(%struct.netlink_callback* %0) #0 {
  %2 = alloca %struct.netlink_callback*, align 8
  %3 = alloca %struct.ip_set_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  store %struct.netlink_callback* %0, %struct.netlink_callback** %2, align 8
  %6 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %7 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* @IPSET_CB_ARG0, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %1
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %15 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* @IPSET_CB_NET, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ip_set_net*
  store %struct.ip_set_net* %20, %struct.ip_set_net** %3, align 8
  %21 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %22 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @IPSET_CB_INDEX, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ip_set_net*, %struct.ip_set_net** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.ip_set* @ip_set_ref_netlink(%struct.ip_set_net* %28, i32 %29)
  store %struct.ip_set* %30, %struct.ip_set** %5, align 8
  %31 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %32 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.ip_set*, %struct.netlink_callback*, i32)*, i32 (%struct.ip_set*, %struct.netlink_callback*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.ip_set*, %struct.netlink_callback*, i32)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %13
  %38 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %39 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.ip_set*, %struct.netlink_callback*, i32)*, i32 (%struct.ip_set*, %struct.netlink_callback*, i32)** %41, align 8
  %43 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %44 = load %struct.netlink_callback*, %struct.netlink_callback** %2, align 8
  %45 = call i32 %42(%struct.ip_set* %43, %struct.netlink_callback* %44, i32 0)
  br label %46

46:                                               ; preds = %37, %13
  %47 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %48 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %52 = call i32 @__ip_set_put_netlink(%struct.ip_set* %51)
  br label %53

53:                                               ; preds = %46, %1
  ret i32 0
}

declare dso_local %struct.ip_set* @ip_set_ref_netlink(%struct.ip_set_net*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @__ip_set_put_netlink(%struct.ip_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
