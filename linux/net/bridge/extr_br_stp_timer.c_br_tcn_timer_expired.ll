; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_timer.c_br_tcn_timer_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_stp_timer.c_br_tcn_timer_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }

@tcn_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"tcn timer expired\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@br = common dso_local global %struct.net_bridge* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @br_tcn_timer_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_tcn_timer_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.net_bridge*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %5 = ptrtoint %struct.net_bridge* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @tcn_timer, align 4
  %8 = call %struct.net_bridge* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.net_bridge* %8, %struct.net_bridge** %3, align 8
  %9 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %10 = call i32 @br_debug(%struct.net_bridge* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %12 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %15 = call i32 @br_is_root_bridge(%struct.net_bridge* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %1
  %18 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %19 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_UP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %17
  %27 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %28 = call i32 @br_transmit_tcn(%struct.net_bridge* %27)
  %29 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %30 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %29, i32 0, i32 2
  %31 = load i64, i64* @jiffies, align 8
  %32 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %33 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i32 @mod_timer(i32* %30, i64 %35)
  br label %37

37:                                               ; preds = %26, %17, %1
  %38 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %39 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock(i32* %39)
  ret void
}

declare dso_local %struct.net_bridge* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @br_debug(%struct.net_bridge*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @br_is_root_bridge(%struct.net_bridge*) #1

declare dso_local i32 @br_transmit_tcn(%struct.net_bridge*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
