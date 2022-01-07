; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_start_channel_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-manage.c_ncsi_start_channel_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_channel = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@NCSI_CHANNEL_MONITOR_START = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncsi_start_channel_monitor(%struct.ncsi_channel* %0) #0 {
  %2 = alloca %struct.ncsi_channel*, align 8
  %3 = alloca i64, align 8
  store %struct.ncsi_channel* %0, %struct.ncsi_channel** %2, align 8
  %4 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %5 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %9 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @WARN_ON_ONCE(i32 %11)
  %13 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %14 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load i32, i32* @NCSI_CHANNEL_MONITOR_START, align 4
  %17 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %18 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %21 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %20, i32 0, i32 1
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.ncsi_channel*, %struct.ncsi_channel** %2, align 8
  %25 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* @HZ, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @mod_timer(i32* %26, i64 %29)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
