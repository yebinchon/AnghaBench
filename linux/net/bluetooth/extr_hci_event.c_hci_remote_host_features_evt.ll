; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_remote_host_features_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_remote_host_features_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_remote_host_features = type { i32*, i32 }
%struct.inquiry_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hci_conn = type { i32* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@LMP_HOST_SSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_remote_host_features_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_remote_host_features_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_remote_host_features*, align 8
  %6 = alloca %struct.inquiry_entry*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_ev_remote_host_features*
  store %struct.hci_ev_remote_host_features* %12, %struct.hci_ev_remote_host_features** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %18 = call i32 @hci_dev_lock(%struct.hci_dev* %17)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = load i32, i32* @ACL_LINK, align 4
  %21 = load %struct.hci_ev_remote_host_features*, %struct.hci_ev_remote_host_features** %5, align 8
  %22 = getelementptr inbounds %struct.hci_ev_remote_host_features, %struct.hci_ev_remote_host_features* %21, i32 0, i32 1
  %23 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %19, i32 %20, i32* %22)
  store %struct.hci_conn* %23, %struct.hci_conn** %7, align 8
  %24 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %25 = icmp ne %struct.hci_conn* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %28 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hci_ev_remote_host_features*, %struct.hci_ev_remote_host_features** %5, align 8
  %33 = getelementptr inbounds %struct.hci_ev_remote_host_features, %struct.hci_ev_remote_host_features* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @memcpy(i32 %31, i32* %34, i32 8)
  br label %36

36:                                               ; preds = %26, %2
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = load %struct.hci_ev_remote_host_features*, %struct.hci_ev_remote_host_features** %5, align 8
  %39 = getelementptr inbounds %struct.hci_ev_remote_host_features, %struct.hci_ev_remote_host_features* %38, i32 0, i32 1
  %40 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev* %37, i32* %39)
  store %struct.inquiry_entry* %40, %struct.inquiry_entry** %6, align 8
  %41 = load %struct.inquiry_entry*, %struct.inquiry_entry** %6, align 8
  %42 = icmp ne %struct.inquiry_entry* %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load %struct.hci_ev_remote_host_features*, %struct.hci_ev_remote_host_features** %5, align 8
  %45 = getelementptr inbounds %struct.hci_ev_remote_host_features, %struct.hci_ev_remote_host_features* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @LMP_HOST_SSP, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.inquiry_entry*, %struct.inquiry_entry** %6, align 8
  %52 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %43, %36
  %55 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %56 = call i32 @hci_dev_unlock(%struct.hci_dev* %55)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup(%struct.hci_dev*, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
