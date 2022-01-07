; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_call_fib_rule_notifiers.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_fib_rules.c_call_fib_rule_notifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib_rule = type { i32 }
%struct.fib_rules_ops = type { i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fib_rule_notifier_info = type { %struct.TYPE_2__, %struct.fib_rule* }
%struct.TYPE_2__ = type { %struct.netlink_ext_ack*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, %struct.fib_rule*, %struct.fib_rules_ops*, %struct.netlink_ext_ack*)* @call_fib_rule_notifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_fib_rule_notifiers(%struct.net* %0, i32 %1, %struct.fib_rule* %2, %struct.fib_rules_ops* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fib_rule*, align 8
  %9 = alloca %struct.fib_rules_ops*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.fib_rule_notifier_info, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fib_rule* %2, %struct.fib_rule** %8, align 8
  store %struct.fib_rules_ops* %3, %struct.fib_rules_ops** %9, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %12 = getelementptr inbounds %struct.fib_rule_notifier_info, %struct.fib_rule_notifier_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  store %struct.netlink_ext_ack* %14, %struct.netlink_ext_ack** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %16 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %9, align 8
  %17 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %15, align 8
  %19 = getelementptr inbounds %struct.fib_rule_notifier_info, %struct.fib_rule_notifier_info* %11, i32 0, i32 1
  %20 = load %struct.fib_rule*, %struct.fib_rule** %8, align 8
  store %struct.fib_rule* %20, %struct.fib_rule** %19, align 8
  %21 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %9, align 8
  %22 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.net*, %struct.net** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.fib_rule_notifier_info, %struct.fib_rule_notifier_info* %11, i32 0, i32 0
  %28 = call i32 @call_fib_notifiers(%struct.net* %25, i32 %26, %struct.TYPE_2__* %27)
  ret i32 %28
}

declare dso_local i32 @call_fib_notifiers(%struct.net*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
