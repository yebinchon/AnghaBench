; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_device_connected.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_device_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_conn = type { i64, i64*, i32, i32, i32, i32 }
%struct.mgmt_ev_device_connected = type { i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EIR_NAME_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] zeroinitializer, align 1
@EIR_CLASS_OF_DEV = common dso_local global i32 0, align 4
@MGMT_EV_DEVICE_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_device_connected(%struct.hci_dev* %0, %struct.hci_conn* %1, i32 %2, i64* %3, i64 %4) #0 {
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [512 x i8], align 16
  %12 = alloca %struct.mgmt_ev_device_connected*, align 8
  %13 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store %struct.hci_conn* %1, %struct.hci_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %15 = bitcast i8* %14 to %struct.mgmt_ev_device_connected*
  store %struct.mgmt_ev_device_connected* %15, %struct.mgmt_ev_device_connected** %12, align 8
  store i64 0, i64* %13, align 8
  %16 = load %struct.mgmt_ev_device_connected*, %struct.mgmt_ev_device_connected** %12, align 8
  %17 = getelementptr inbounds %struct.mgmt_ev_device_connected, %struct.mgmt_ev_device_connected* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %20 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %19, i32 0, i32 5
  %21 = call i32 @bacpy(i32* %18, i32* %20)
  %22 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %23 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %26 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @link_to_bdaddr(i32 %24, i32 %27)
  %29 = load %struct.mgmt_ev_device_connected*, %struct.mgmt_ev_device_connected** %12, align 8
  %30 = getelementptr inbounds %struct.mgmt_ev_device_connected, %struct.mgmt_ev_device_connected* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @__cpu_to_le32(i32 %32)
  %34 = load %struct.mgmt_ev_device_connected*, %struct.mgmt_ev_device_connected** %12, align 8
  %35 = getelementptr inbounds %struct.mgmt_ev_device_connected, %struct.mgmt_ev_device_connected* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %37 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %5
  %41 = load %struct.mgmt_ev_device_connected*, %struct.mgmt_ev_device_connected** %12, align 8
  %42 = getelementptr inbounds %struct.mgmt_ev_device_connected, %struct.mgmt_ev_device_connected* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %13, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @memcpy(i32* %45, i32 %48, i64 %51)
  %53 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %54 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %13, align 8
  br label %85

56:                                               ; preds = %5
  %57 = load i64, i64* %10, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.mgmt_ev_device_connected*, %struct.mgmt_ev_device_connected** %12, align 8
  %61 = getelementptr inbounds %struct.mgmt_ev_device_connected, %struct.mgmt_ev_device_connected* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @EIR_NAME_COMPLETE, align 4
  %64 = load i64*, i64** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i64 @eir_append_data(i32* %62, i64 0, i32 %63, i64* %64, i32 %66)
  store i64 %67, i64* %13, align 8
  br label %68

68:                                               ; preds = %59, %56
  %69 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %70 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = call i64 @memcmp(i64* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.mgmt_ev_device_connected*, %struct.mgmt_ev_device_connected** %12, align 8
  %76 = getelementptr inbounds %struct.mgmt_ev_device_connected, %struct.mgmt_ev_device_connected* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i32, i32* @EIR_CLASS_OF_DEV, align 4
  %80 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %81 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = call i64 @eir_append_data(i32* %77, i64 %78, i32 %79, i64* %82, i32 3)
  store i64 %83, i64* %13, align 8
  br label %84

84:                                               ; preds = %74, %68
  br label %85

85:                                               ; preds = %84, %40
  %86 = load i64, i64* %13, align 8
  %87 = call i32 @cpu_to_le16(i64 %86)
  %88 = load %struct.mgmt_ev_device_connected*, %struct.mgmt_ev_device_connected** %12, align 8
  %89 = getelementptr inbounds %struct.mgmt_ev_device_connected, %struct.mgmt_ev_device_connected* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @MGMT_EV_DEVICE_CONNECTED, align 4
  %91 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %92 = getelementptr inbounds [512 x i8], [512 x i8]* %11, i64 0, i64 0
  %93 = load i64, i64* %13, align 8
  %94 = add i64 32, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @mgmt_event(i32 %90, %struct.hci_dev* %91, i8* %92, i32 %95, i32* null)
  ret void
}

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @link_to_bdaddr(i32, i32) #1

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i64 @eir_append_data(i32*, i64, i32, i64*, i32) #1

declare dso_local i64 @memcmp(i64*, i8*, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
