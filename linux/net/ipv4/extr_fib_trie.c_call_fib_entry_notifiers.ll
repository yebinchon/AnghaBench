; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_call_fib_entry_notifiers.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_fib_trie.c_call_fib_entry_notifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.fib_alias = type { i32, i32, i32, i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.fib_entry_notifier_info = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.netlink_ext_ack* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, i32, i32, %struct.fib_alias*, %struct.netlink_ext_ack*)* @call_fib_entry_notifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call_fib_entry_notifiers(%struct.net* %0, i32 %1, i32 %2, i32 %3, %struct.fib_alias* %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fib_alias*, align 8
  %12 = alloca %struct.netlink_ext_ack*, align 8
  %13 = alloca %struct.fib_entry_notifier_info, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.fib_alias* %4, %struct.fib_alias** %11, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %12, align 8
  %14 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %13, i32 0, i32 0
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %13, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %12, align 8
  store %struct.netlink_ext_ack* %18, %struct.netlink_ext_ack** %17, align 8
  %19 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %13, i32 0, i32 2
  %20 = load %struct.fib_alias*, %struct.fib_alias** %11, align 8
  %21 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %13, i32 0, i32 3
  %24 = load %struct.fib_alias*, %struct.fib_alias** %11, align 8
  %25 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %13, i32 0, i32 4
  %28 = load %struct.fib_alias*, %struct.fib_alias** %11, align 8
  %29 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %13, i32 0, i32 5
  %32 = load %struct.fib_alias*, %struct.fib_alias** %11, align 8
  %33 = getelementptr inbounds %struct.fib_alias, %struct.fib_alias* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %13, i32 0, i32 6
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %35, align 8
  %37 = load %struct.net*, %struct.net** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds %struct.fib_entry_notifier_info, %struct.fib_entry_notifier_info* %13, i32 0, i32 1
  %40 = call i32 @call_fib4_notifiers(%struct.net* %37, i32 %38, %struct.TYPE_2__* %39)
  ret i32 %40
}

declare dso_local i32 @call_fib4_notifiers(%struct.net*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
