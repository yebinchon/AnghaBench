; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_clock_offset_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_clock_offset_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_clock_offset = type { i32, i32, i32 }
%struct.hci_conn = type { i32 }
%struct.inquiry_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_clock_offset_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_clock_offset_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_clock_offset*, align 8
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.inquiry_entry*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_ev_clock_offset*
  store %struct.hci_ev_clock_offset* %12, %struct.hci_ev_clock_offset** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.hci_ev_clock_offset*, %struct.hci_ev_clock_offset** %5, align 8
  %17 = getelementptr inbounds %struct.hci_ev_clock_offset, %struct.hci_ev_clock_offset* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = call i32 @hci_dev_lock(%struct.hci_dev* %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load %struct.hci_ev_clock_offset*, %struct.hci_ev_clock_offset** %5, align 8
  %24 = getelementptr inbounds %struct.hci_ev_clock_offset, %struct.hci_ev_clock_offset* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @__le16_to_cpu(i32 %25)
  %27 = call %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev* %22, i32 %26)
  store %struct.hci_conn* %27, %struct.hci_conn** %6, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %29 = icmp ne %struct.hci_conn* %28, null
  br i1 %29, label %30, label %53

30:                                               ; preds = %2
  %31 = load %struct.hci_ev_clock_offset*, %struct.hci_ev_clock_offset** %5, align 8
  %32 = getelementptr inbounds %struct.hci_ev_clock_offset, %struct.hci_ev_clock_offset* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %30
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  %38 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %37, i32 0, i32 0
  %39 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev* %36, i32* %38)
  store %struct.inquiry_entry* %39, %struct.inquiry_entry** %7, align 8
  %40 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %41 = icmp ne %struct.inquiry_entry* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load %struct.hci_ev_clock_offset*, %struct.hci_ev_clock_offset** %5, align 8
  %44 = getelementptr inbounds %struct.hci_ev_clock_offset, %struct.hci_ev_clock_offset* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %47 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @jiffies, align 4
  %50 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %51 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %42, %35
  br label %53

53:                                               ; preds = %52, %30, %2
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = call i32 @hci_dev_unlock(%struct.hci_dev* %54)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_handle(%struct.hci_dev*, i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev*, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
