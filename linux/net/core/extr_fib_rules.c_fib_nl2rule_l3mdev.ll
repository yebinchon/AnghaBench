; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_nl2rule_l3mdev.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_fib_nl2rule_l3mdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.fib_rule = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"l3mdev support is not enabled in kernel\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, %struct.fib_rule*, %struct.netlink_ext_ack*)* @fib_nl2rule_l3mdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_nl2rule_l3mdev(%struct.nlattr* %0, %struct.fib_rule* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.fib_rule* %1, %struct.fib_rule** %5, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %6, align 8
  %7 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %6, align 8
  %8 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  ret i32 -1
}

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
