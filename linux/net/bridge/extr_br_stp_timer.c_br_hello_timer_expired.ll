; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_timer.c_br_hello_timer_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_timer.c_br_hello_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@hello_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"hello timer expired\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@BR_KERNEL_STP = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@br = common dso_local global %struct.net_bridge* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @br_hello_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_hello_timer_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.net_bridge*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %5 = ptrtoint %struct.net_bridge* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @hello_timer, align 4
  %8 = call %struct.net_bridge* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.net_bridge* %8, %struct.net_bridge** %3, align 8
  %9 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %10 = call i32 @br_debug(%struct.net_bridge* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %12 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %15 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_UP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %1
  %23 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %24 = call i32 @br_config_bpdu_generation(%struct.net_bridge* %23)
  %25 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %26 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BR_KERNEL_STP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %22
  %31 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %32 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %31, i32 0, i32 3
  %33 = load i64, i64* @jiffies, align 8
  %34 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %35 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = call i32 @round_jiffies(i64 %37)
  %39 = call i32 @mod_timer(i32* %32, i32 %38)
  br label %40

40:                                               ; preds = %30, %22
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %43 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock(i32* %43)
  ret void
}

declare dso_local %struct.net_bridge* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @br_debug(%struct.net_bridge*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @br_config_bpdu_generation(%struct.net_bridge*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
