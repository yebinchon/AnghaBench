; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_inquiry_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_inquiry_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, %struct.discovery_state }
%struct.discovery_state = type { i64, i32 }
%struct.sk_buff = type { i64 }
%struct.inquiry_entry = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@HCI_INQUIRY = common dso_local global i32 0, align 4
@HCI_MGMT = common dso_local global i32 0, align 4
@DISCOVERY_FINDING = common dso_local global i64 0, align 8
@HCI_LE_SCAN = common dso_local global i32 0, align 4
@HCI_QUIRK_SIMULTANEOUS_DISCOVERY = common dso_local global i32 0, align 4
@DISCOVERY_STOPPED = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@NAME_NEEDED = common dso_local global i32 0, align 4
@NAME_PENDING = common dso_local global i32 0, align 4
@DISCOVERY_RESOLVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_inquiry_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_inquiry_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.discovery_state*, align 8
  %7 = alloca %struct.inquiry_entry*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 3
  store %struct.discovery_state* %14, %struct.discovery_state** %6, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %21 = call i32 @hci_conn_check_pending(%struct.hci_dev* %20)
  %22 = load i32, i32* @HCI_INQUIRY, align 4
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 1
  %25 = call i32 @test_and_clear_bit(i32 %22, i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %108

28:                                               ; preds = %2
  %29 = call i32 (...) @smp_mb__after_atomic()
  %30 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %31 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %30, i32 0, i32 1
  %32 = load i32, i32* @HCI_INQUIRY, align 4
  %33 = call i32 @wake_up_bit(i32* %31, i32 %32)
  %34 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %35 = load i32, i32* @HCI_MGMT, align 4
  %36 = call i32 @hci_dev_test_flag(%struct.hci_dev* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %28
  br label %108

39:                                               ; preds = %28
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = call i32 @hci_dev_lock(%struct.hci_dev* %40)
  %42 = load %struct.discovery_state*, %struct.discovery_state** %6, align 8
  %43 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DISCOVERY_FINDING, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %105

48:                                               ; preds = %39
  %49 = load %struct.discovery_state*, %struct.discovery_state** %6, align 8
  %50 = getelementptr inbounds %struct.discovery_state, %struct.discovery_state* %49, i32 0, i32 1
  %51 = call i64 @list_empty(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = load i32, i32* @HCI_LE_SCAN, align 4
  %56 = call i32 @hci_dev_test_flag(%struct.hci_dev* %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @HCI_QUIRK_SIMULTANEOUS_DISCOVERY, align 4
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 0
  %62 = call i32 @test_bit(i32 %59, i32* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %66 = load i32, i32* @DISCOVERY_STOPPED, align 4
  %67 = call i32 @hci_discovery_set_state(%struct.hci_dev* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %58
  br label %105

69:                                               ; preds = %48
  %70 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %71 = load i32, i32* @BDADDR_ANY, align 4
  %72 = load i32, i32* @NAME_NEEDED, align 4
  %73 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup_resolve(%struct.hci_dev* %70, i32 %71, i32 %72)
  store %struct.inquiry_entry* %73, %struct.inquiry_entry** %7, align 8
  %74 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %75 = icmp ne %struct.inquiry_entry* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %69
  %77 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %78 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %79 = call i64 @hci_resolve_name(%struct.hci_dev* %77, %struct.inquiry_entry* %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load i32, i32* @NAME_PENDING, align 4
  %83 = load %struct.inquiry_entry*, %struct.inquiry_entry** %7, align 8
  %84 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %86 = load i32, i32* @DISCOVERY_RESOLVING, align 4
  %87 = call i32 @hci_discovery_set_state(%struct.hci_dev* %85, i32 %86)
  br label %104

88:                                               ; preds = %76, %69
  %89 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %90 = load i32, i32* @HCI_LE_SCAN, align 4
  %91 = call i32 @hci_dev_test_flag(%struct.hci_dev* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* @HCI_QUIRK_SIMULTANEOUS_DISCOVERY, align 4
  %95 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %96 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %95, i32 0, i32 0
  %97 = call i32 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %101 = load i32, i32* @DISCOVERY_STOPPED, align 4
  %102 = call i32 @hci_discovery_set_state(%struct.hci_dev* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %93
  br label %104

104:                                              ; preds = %103, %81
  br label %105

105:                                              ; preds = %104, %68, %47
  %106 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %107 = call i32 @hci_dev_unlock(%struct.hci_dev* %106)
  br label %108

108:                                              ; preds = %105, %38, %27
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_conn_check_pending(%struct.hci_dev*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_discovery_set_state(%struct.hci_dev*, i32) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup_resolve(%struct.hci_dev*, i32, i32) #1

declare dso_local i64 @hci_resolve_name(%struct.hci_dev*, %struct.inquiry_entry*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
