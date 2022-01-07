; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_gc_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_gc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32, %struct.list_set* }
%struct.list_set = type { i32 }
%struct.timer_list = type opaque
%struct.timer_list.0 = type opaque

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_set*, void (%struct.timer_list*)*)* @list_set_gc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_set_gc_init(%struct.ip_set* %0, void (%struct.timer_list*)* %1) #0 {
  %3 = alloca %struct.ip_set*, align 8
  %4 = alloca void (%struct.timer_list*)*, align 8
  %5 = alloca %struct.list_set*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %3, align 8
  store void (%struct.timer_list*)* %1, void (%struct.timer_list*)** %4, align 8
  %6 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %7 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %6, i32 0, i32 1
  %8 = load %struct.list_set*, %struct.list_set** %7, align 8
  store %struct.list_set* %8, %struct.list_set** %5, align 8
  %9 = load %struct.list_set*, %struct.list_set** %5, align 8
  %10 = getelementptr inbounds %struct.list_set, %struct.list_set* %9, i32 0, i32 0
  %11 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %4, align 8
  %12 = bitcast void (%struct.timer_list*)* %11 to void (%struct.timer_list.0*)*
  %13 = call i32 @timer_setup(i32* %10, void (%struct.timer_list.0*)* %12, i32 0)
  %14 = load %struct.list_set*, %struct.list_set** %5, align 8
  %15 = getelementptr inbounds %struct.list_set, %struct.list_set* %14, i32 0, i32 0
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.ip_set*, %struct.ip_set** %3, align 8
  %18 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @IPSET_GC_PERIOD(i32 %19)
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %16, %23
  %25 = call i32 @mod_timer(i32* %15, i64 %24)
  ret void
}

declare dso_local i32 @timer_setup(i32*, void (%struct.timer_list.0*)*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @IPSET_GC_PERIOD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
