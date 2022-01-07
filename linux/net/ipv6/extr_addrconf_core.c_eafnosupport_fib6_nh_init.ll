; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf_core.c_eafnosupport_fib6_nh_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf_core.c_eafnosupport_fib6_nh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib6_nh = type { i32 }
%struct.fib6_config = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"IPv6 support not enabled in kernel\00", align 1
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.fib6_nh*, %struct.fib6_config*, i32, %struct.netlink_ext_ack*)* @eafnosupport_fib6_nh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eafnosupport_fib6_nh_init(%struct.net* %0, %struct.fib6_nh* %1, %struct.fib6_config* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.fib6_nh*, align 8
  %8 = alloca %struct.fib6_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.fib6_nh* %1, %struct.fib6_nh** %7, align 8
  store %struct.fib6_config* %2, %struct.fib6_config** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %11 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %12 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EAFNOSUPPORT, align 4
  %14 = sub nsw i32 0, %13
  ret i32 %14
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
