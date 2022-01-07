; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-aen.c_ncsi_aen_handler_cr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-aen.c_ncsi_aen_handler_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_dev_priv = type { i32, i32 }
%struct.ncsi_aen_pkt_hdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ncsi_channel = type { i64, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@NCSI_CHANNEL_ACTIVE = common dso_local global i64 0, align 8
@NCSI_CHANNEL_INVISIBLE = common dso_local global i64 0, align 8
@NCSI_CHANNEL_INACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_dev_priv*, %struct.ncsi_aen_pkt_hdr*)* @ncsi_aen_handler_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_aen_handler_cr(%struct.ncsi_dev_priv* %0, %struct.ncsi_aen_pkt_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ncsi_dev_priv*, align 8
  %5 = alloca %struct.ncsi_aen_pkt_hdr*, align 8
  %6 = alloca %struct.ncsi_channel*, align 8
  %7 = alloca i64, align 8
  store %struct.ncsi_dev_priv* %0, %struct.ncsi_dev_priv** %4, align 8
  store %struct.ncsi_aen_pkt_hdr* %1, %struct.ncsi_aen_pkt_hdr** %5, align 8
  %8 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %9 = load %struct.ncsi_aen_pkt_hdr*, %struct.ncsi_aen_pkt_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.ncsi_aen_pkt_hdr, %struct.ncsi_aen_pkt_hdr* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %8, i32 %12, i32* null, %struct.ncsi_channel** %6)
  %14 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %15 = icmp ne %struct.ncsi_channel* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %75

19:                                               ; preds = %2
  %20 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %21 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %20, i32 0, i32 2
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %25 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %24, i32 0, i32 1
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %30 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NCSI_CHANNEL_ACTIVE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28, %19
  %35 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %36 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %35, i32 0, i32 2
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  store i32 0, i32* %3, align 4
  br label %75

39:                                               ; preds = %28
  %40 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %41 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %40, i32 0, i32 2
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  %44 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %45 = call i32 @ncsi_stop_channel_monitor(%struct.ncsi_channel* %44)
  %46 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %47 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %46, i32 0, i32 2
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load i64, i64* @NCSI_CHANNEL_INVISIBLE, align 8
  %51 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %52 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %54 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %53, i32 0, i32 2
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %58 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %57, i32 0, i32 0
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load i64, i64* @NCSI_CHANNEL_INACTIVE, align 8
  %62 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %63 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %65 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %64, i32 0, i32 1
  %66 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %67 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %66, i32 0, i32 1
  %68 = call i32 @list_add_tail_rcu(i32* %65, i32* %67)
  %69 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %70 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %69, i32 0, i32 0
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %74 = call i32 @ncsi_process_next_channel(%struct.ncsi_dev_priv* %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %39, %34, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ncsi_stop_channel_monitor(%struct.ncsi_channel*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @ncsi_process_next_channel(%struct.ncsi_dev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
