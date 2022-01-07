; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_check_pending_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_check_pending_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.discovery_state }
%struct.discovery_state = type { i64 }
%struct.hci_conn = type { i64, i32 }
%struct.inquiry_entry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BT_CONFIG = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i64 0, align 8
@HCI_CONN_MGMT_CONNECTED = common dso_local global i32 0, align 4
@DISCOVERY_STOPPED = common dso_local global i64 0, align 8
@DISCOVERY_STOPPING = common dso_local global i64 0, align 8
@DISCOVERY_RESOLVING = common dso_local global i64 0, align 8
@NAME_PENDING = common dso_local global i32 0, align 4
@NAME_KNOWN = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@NAME_NOT_KNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.hci_conn*, i32*, i32*, i32)* @hci_check_pending_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_check_pending_name(%struct.hci_dev* %0, %struct.hci_conn* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.discovery_state*, align 8
  %12 = alloca %struct.inquiry_entry*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store %struct.hci_conn* %1, %struct.hci_conn** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  store %struct.discovery_state* %14, %struct.discovery_state** %11, align 8
  %15 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %16 = icmp ne %struct.hci_conn* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %5
  %18 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %19 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BT_CONFIG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %25 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BT_CONNECTED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %23, %17
  %30 = load i32, i32* @HCI_CONN_MGMT_CONNECTED, align 4
  %31 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %32 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %31, i32 0, i32 1
  %33 = call i32 @test_and_set_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %37 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @mgmt_device_connected(%struct.hci_dev* %36, %struct.hci_conn* %37, i32 0, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %29, %23, %5
  %42 = load %struct.discovery_state*, %struct.discovery_state** %11, align 8
  %43 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DISCOVERY_STOPPED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %104

48:                                               ; preds = %41
  %49 = load %struct.discovery_state*, %struct.discovery_state** %11, align 8
  %50 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DISCOVERY_STOPPING, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %100

55:                                               ; preds = %48
  %56 = load %struct.discovery_state*, %struct.discovery_state** %11, align 8
  %57 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DISCOVERY_RESOLVING, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %104

62:                                               ; preds = %55
  %63 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @NAME_PENDING, align 4
  %66 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup_resolve(%struct.hci_dev* %63, i32* %64, i32 %65)
  store %struct.inquiry_entry* %66, %struct.inquiry_entry** %12, align 8
  %67 = load %struct.inquiry_entry*, %struct.inquiry_entry** %12, align 8
  %68 = icmp ne %struct.inquiry_entry* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  br label %104

70:                                               ; preds = %62
  %71 = load %struct.inquiry_entry*, %struct.inquiry_entry** %12, align 8
  %72 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %71, i32 0, i32 2
  %73 = call i32 @list_del(i32* %72)
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load i32, i32* @NAME_KNOWN, align 4
  %78 = load %struct.inquiry_entry*, %struct.inquiry_entry** %12, align 8
  %79 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* @ACL_LINK, align 4
  %83 = load %struct.inquiry_entry*, %struct.inquiry_entry** %12, align 8
  %84 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @mgmt_remote_name(%struct.hci_dev* %80, i32* %81, i32 %82, i32 0, i32 %86, i32* %87, i32 %88)
  br label %94

90:                                               ; preds = %70
  %91 = load i32, i32* @NAME_NOT_KNOWN, align 4
  %92 = load %struct.inquiry_entry*, %struct.inquiry_entry** %12, align 8
  %93 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %76
  %95 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %96 = call i64 @hci_resolve_next_name(%struct.hci_dev* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %104

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %54
  %101 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %102 = load i64, i64* @DISCOVERY_STOPPED, align 8
  %103 = call i32 @hci_discovery_set_state(%struct.hci_dev* %101, i64 %102)
  br label %104

104:                                              ; preds = %100, %98, %69, %61, %47
  ret void
}

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @mgmt_device_connected(%struct.hci_dev*, %struct.hci_conn*, i32, i32*, i32) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup_resolve(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mgmt_remote_name(%struct.hci_dev*, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @hci_resolve_next_name(%struct.hci_dev*) #1

declare dso_local i32 @hci_discovery_set_state(%struct.hci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
