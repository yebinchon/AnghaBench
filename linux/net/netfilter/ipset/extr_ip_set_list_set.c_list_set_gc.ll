; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_gc.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_set = type { %struct.TYPE_2__, %struct.ip_set* }
%struct.TYPE_2__ = type { i64 }
%struct.ip_set = type { i32, i32 }
%struct.timer_list = type { i32 }

@gc = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@map = common dso_local global %struct.list_set* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @list_set_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_set_gc(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.list_set*, align 8
  %4 = alloca %struct.ip_set*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.list_set*, %struct.list_set** %3, align 8
  %6 = ptrtoint %struct.list_set* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @gc, align 4
  %9 = call %struct.list_set* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.list_set* %9, %struct.list_set** %3, align 8
  %10 = load %struct.list_set*, %struct.list_set** %3, align 8
  %11 = getelementptr inbounds %struct.list_set, %struct.list_set* %10, i32 0, i32 1
  %12 = load %struct.ip_set*, %struct.ip_set** %11, align 8
  store %struct.ip_set* %12, %struct.ip_set** %4, align 8
  %13 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %14 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %17 = call i32 @set_cleanup_entries(%struct.ip_set* %16)
  %18 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %19 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %18, i32 0, i32 1
  %20 = call i32 @spin_unlock_bh(i32* %19)
  %21 = load i64, i64* @jiffies, align 8
  %22 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %23 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @IPSET_GC_PERIOD(i32 %24)
  %26 = load i32, i32* @HZ, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %21, %28
  %30 = load %struct.list_set*, %struct.list_set** %3, align 8
  %31 = getelementptr inbounds %struct.list_set, %struct.list_set* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i64 %29, i64* %32, align 8
  %33 = load %struct.list_set*, %struct.list_set** %3, align 8
  %34 = getelementptr inbounds %struct.list_set, %struct.list_set* %33, i32 0, i32 0
  %35 = call i32 @add_timer(%struct.TYPE_2__* %34)
  ret void
}

declare dso_local %struct.list_set* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @set_cleanup_entries(%struct.ip_set*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @IPSET_GC_PERIOD(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
