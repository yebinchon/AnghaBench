; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_switchdev_fdb_work_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_switchdev_fdb_work_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switchdev_event_work = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.switchdev_notifier_fdb_info = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switchdev_event_work*, %struct.switchdev_notifier_fdb_info*)* @dsa_slave_switchdev_fdb_work_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_slave_switchdev_fdb_work_init(%struct.dsa_switchdev_event_work* %0, %struct.switchdev_notifier_fdb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switchdev_event_work*, align 8
  %5 = alloca %struct.switchdev_notifier_fdb_info*, align 8
  store %struct.dsa_switchdev_event_work* %0, %struct.dsa_switchdev_event_work** %4, align 8
  store %struct.switchdev_notifier_fdb_info* %1, %struct.switchdev_notifier_fdb_info** %5, align 8
  %6 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %4, align 8
  %7 = getelementptr inbounds %struct.dsa_switchdev_event_work, %struct.dsa_switchdev_event_work* %6, i32 0, i32 0
  %8 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %5, align 8
  %9 = call i32 @memcpy(%struct.TYPE_2__* %7, %struct.switchdev_notifier_fdb_info* %8, i32 8)
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call i64 @kzalloc(i32 %10, i32 %11)
  %13 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %4, align 8
  %14 = getelementptr inbounds %struct.dsa_switchdev_event_work, %struct.dsa_switchdev_event_work* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %4, align 8
  %17 = getelementptr inbounds %struct.dsa_switchdev_event_work, %struct.dsa_switchdev_event_work* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %34

24:                                               ; preds = %2
  %25 = load %struct.dsa_switchdev_event_work*, %struct.dsa_switchdev_event_work** %4, align 8
  %26 = getelementptr inbounds %struct.dsa_switchdev_event_work, %struct.dsa_switchdev_event_work* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %5, align 8
  %31 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ether_addr_copy(i32* %29, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %24, %21
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @memcpy(%struct.TYPE_2__*, %struct.switchdev_notifier_fdb_info*, i32) #1

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
