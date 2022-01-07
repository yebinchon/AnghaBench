; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_get_nhs.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_semantics.c_fib_get_nhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_info = type { i32 }
%struct.rtnexthop = type { i32 }
%struct.fib_config = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Multipath support not enabled in kernel\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_info*, %struct.rtnexthop*, i32, %struct.fib_config*, %struct.netlink_ext_ack*)* @fib_get_nhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_get_nhs(%struct.fib_info* %0, %struct.rtnexthop* %1, i32 %2, %struct.fib_config* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.fib_info*, align 8
  %7 = alloca %struct.rtnexthop*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fib_config*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.fib_info* %0, %struct.fib_info** %6, align 8
  store %struct.rtnexthop* %1, %struct.rtnexthop** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.fib_config* %3, %struct.fib_config** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %11 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %12 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
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
