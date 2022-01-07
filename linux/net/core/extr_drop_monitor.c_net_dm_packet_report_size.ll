; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_packet_report_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_packet_report_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@GENL_HDRLEN = common dso_local global i64 0, align 8
@net_drop_monitor_family = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@NET_DM_MAX_SYMBOL_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @net_dm_packet_report_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @net_dm_packet_report_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* @GENL_HDRLEN, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @net_drop_monitor_family, i32 0, i32 0), align 8
  %6 = add nsw i64 %4, %5
  %7 = call i64 @nlmsg_msg_size(i64 %6)
  store i64 %7, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @NLMSG_ALIGN(i64 %8)
  %10 = call i64 @nla_total_size(i64 4)
  %11 = add i64 %9, %10
  %12 = call i64 @nla_total_size(i64 4)
  %13 = add i64 %11, %12
  %14 = load i32, i32* @NET_DM_MAX_SYMBOL_LEN, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = call i64 @nla_total_size(i64 %16)
  %18 = add i64 %13, %17
  %19 = call i64 (...) @net_dm_in_port_size()
  %20 = add i64 %18, %19
  %21 = call i64 @nla_total_size(i64 4)
  %22 = add i64 %20, %21
  %23 = call i64 @nla_total_size(i64 4)
  %24 = add i64 %22, %23
  %25 = call i64 @nla_total_size(i64 4)
  %26 = add i64 %24, %25
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @nla_total_size(i64 %27)
  %29 = add i64 %26, %28
  ret i64 %29
}

declare dso_local i64 @nlmsg_msg_size(i64) #1

declare dso_local i64 @NLMSG_ALIGN(i64) #1

declare dso_local i64 @nla_total_size(i64) #1

declare dso_local i64 @net_dm_in_port_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
