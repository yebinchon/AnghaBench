; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-aen.c_ncsi_aen_handler_hncdsc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-aen.c_ncsi_aen_handler_hncdsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_dev_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ncsi_aen_pkt_hdr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_channel = type { i32, i32, %struct.ncsi_channel_mode* }
%struct.ncsi_channel_mode = type { i32* }
%struct.ncsi_aen_hncdsc_pkt = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@NCSI_MODE_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"NCSI: host driver %srunning on channel %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_dev_priv*, %struct.ncsi_aen_pkt_hdr*)* @ncsi_aen_handler_hncdsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_aen_handler_hncdsc(%struct.ncsi_dev_priv* %0, %struct.ncsi_aen_pkt_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ncsi_dev_priv*, align 8
  %5 = alloca %struct.ncsi_aen_pkt_hdr*, align 8
  %6 = alloca %struct.ncsi_channel*, align 8
  %7 = alloca %struct.ncsi_channel_mode*, align 8
  %8 = alloca %struct.ncsi_aen_hncdsc_pkt*, align 8
  %9 = alloca i64, align 8
  store %struct.ncsi_dev_priv* %0, %struct.ncsi_dev_priv** %4, align 8
  store %struct.ncsi_aen_pkt_hdr* %1, %struct.ncsi_aen_pkt_hdr** %5, align 8
  %10 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %11 = load %struct.ncsi_aen_pkt_hdr*, %struct.ncsi_aen_pkt_hdr** %5, align 8
  %12 = getelementptr inbounds %struct.ncsi_aen_pkt_hdr, %struct.ncsi_aen_pkt_hdr* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %10, i32 %14, i32* null, %struct.ncsi_channel** %6)
  %16 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %17 = icmp ne %struct.ncsi_channel* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %62

21:                                               ; preds = %2
  %22 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %23 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %22, i32 0, i32 1
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %27 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %26, i32 0, i32 2
  %28 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %27, align 8
  %29 = load i64, i64* @NCSI_MODE_LINK, align 8
  %30 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %28, i64 %29
  store %struct.ncsi_channel_mode* %30, %struct.ncsi_channel_mode** %7, align 8
  %31 = load %struct.ncsi_aen_pkt_hdr*, %struct.ncsi_aen_pkt_hdr** %5, align 8
  %32 = bitcast %struct.ncsi_aen_pkt_hdr* %31 to %struct.ncsi_aen_hncdsc_pkt*
  store %struct.ncsi_aen_hncdsc_pkt* %32, %struct.ncsi_aen_hncdsc_pkt** %8, align 8
  %33 = load %struct.ncsi_aen_hncdsc_pkt*, %struct.ncsi_aen_hncdsc_pkt** %8, align 8
  %34 = getelementptr inbounds %struct.ncsi_aen_hncdsc_pkt, %struct.ncsi_aen_hncdsc_pkt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohl(i32 %35)
  %37 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %7, align 8
  %38 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %36, i32* %40, align 4
  %41 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %42 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %41, i32 0, i32 1
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %4, align 8
  %46 = getelementptr inbounds %struct.ncsi_dev_priv, %struct.ncsi_dev_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %7, align 8
  %50 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %58 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %59 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @netdev_dbg(i32 %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %21, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
