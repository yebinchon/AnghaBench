; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_replace_nexthop_single.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_nexthop.c_replace_nexthop_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nexthop = type { i32, i32, i32, i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.nh_info = type { %struct.nexthop* }

@.str = private unnamed_addr constant [48 x i8] c"Can not replace a nexthop with a nexthop group.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nexthop*, %struct.nexthop*, %struct.netlink_ext_ack*)* @replace_nexthop_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @replace_nexthop_single(%struct.net* %0, %struct.nexthop* %1, %struct.nexthop* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nexthop*, align 8
  %8 = alloca %struct.nexthop*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.nh_info*, align 8
  %11 = alloca %struct.nh_info*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nexthop* %1, %struct.nexthop** %7, align 8
  store %struct.nexthop* %2, %struct.nexthop** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %12 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %13 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %18 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %17, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %56

21:                                               ; preds = %4
  %22 = load %struct.nexthop*, %struct.nexthop** %7, align 8
  %23 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.nh_info* @rtnl_dereference(i32 %24)
  store %struct.nh_info* %25, %struct.nh_info** %10, align 8
  %26 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %27 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.nh_info* @rtnl_dereference(i32 %28)
  store %struct.nh_info* %29, %struct.nh_info** %11, align 8
  %30 = load %struct.nexthop*, %struct.nexthop** %7, align 8
  %31 = load %struct.nh_info*, %struct.nh_info** %11, align 8
  %32 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %31, i32 0, i32 0
  store %struct.nexthop* %30, %struct.nexthop** %32, align 8
  %33 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %34 = load %struct.nh_info*, %struct.nh_info** %10, align 8
  %35 = getelementptr inbounds %struct.nh_info, %struct.nh_info* %34, i32 0, i32 0
  store %struct.nexthop* %33, %struct.nexthop** %35, align 8
  %36 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %37 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nexthop*, %struct.nexthop** %7, align 8
  %40 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %42 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nexthop*, %struct.nexthop** %7, align 8
  %45 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nexthop*, %struct.nexthop** %7, align 8
  %47 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nh_info*, %struct.nh_info** %11, align 8
  %50 = call i32 @rcu_assign_pointer(i32 %48, %struct.nh_info* %49)
  %51 = load %struct.nexthop*, %struct.nexthop** %8, align 8
  %52 = getelementptr inbounds %struct.nexthop, %struct.nexthop* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nh_info*, %struct.nh_info** %10, align 8
  %55 = call i32 @rcu_assign_pointer(i32 %53, %struct.nh_info* %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %21, %16
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.nh_info* @rtnl_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nh_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
