; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_inet_rtm_delroute.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_frontend.c_inet_rtm_delroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net = type { i32 }
%struct.fib_config = type { i32, i64 }
%struct.fib_table = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Nexthop id does not exist\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"FIB table does not exist\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_ext_ack*)* @inet_rtm_delroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_rtm_delroute(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.fib_config, align 8
  %9 = alloca %struct.fib_table*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @sock_net(i32 %13)
  store %struct.net* %14, %struct.net** %7, align 8
  %15 = load %struct.net*, %struct.net** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %19 = call i32 @rtm_to_fib_config(%struct.net* %15, %struct.sk_buff* %16, %struct.nlmsghdr* %17, %struct.fib_config* %8, %struct.netlink_ext_ack* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %55

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %8, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.net*, %struct.net** %7, align 8
  %29 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %8, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @nexthop_find_by_id(%struct.net* %28, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %35 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %55

38:                                               ; preds = %27, %23
  %39 = load %struct.net*, %struct.net** %7, align 8
  %40 = getelementptr inbounds %struct.fib_config, %struct.fib_config* %8, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.fib_table* @fib_get_table(%struct.net* %39, i32 %41)
  store %struct.fib_table* %42, %struct.fib_table** %9, align 8
  %43 = load %struct.fib_table*, %struct.fib_table** %9, align 8
  %44 = icmp ne %struct.fib_table* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %47 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @ESRCH, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %55

50:                                               ; preds = %38
  %51 = load %struct.net*, %struct.net** %7, align 8
  %52 = load %struct.fib_table*, %struct.fib_table** %9, align 8
  %53 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %54 = call i32 @fib_table_delete(%struct.net* %51, %struct.fib_table* %52, %struct.fib_config* %8, %struct.netlink_ext_ack* %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %50, %45, %33, %22
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @rtm_to_fib_config(%struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.fib_config*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nexthop_find_by_id(%struct.net*, i64) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.fib_table* @fib_get_table(%struct.net*, i32) #1

declare dso_local i32 @fib_table_delete(%struct.net*, %struct.fib_table*, %struct.fib_config*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
