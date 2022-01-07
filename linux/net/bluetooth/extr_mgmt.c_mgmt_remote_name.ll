; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_remote_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_remote_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_ev_device_found = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@HCI_MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@EIR_NAME_COMPLETE = common dso_local global i32 0, align 4
@MGMT_EV_DEVICE_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_remote_name(%struct.hci_dev* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mgmt_ev_device_found*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* @HCI_MAX_NAME_LENGTH, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 20, %20
  %22 = add i64 %21, 2
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = bitcast i8* %24 to %struct.mgmt_ev_device_found*
  store %struct.mgmt_ev_device_found* %25, %struct.mgmt_ev_device_found** %15, align 8
  %26 = trunc i64 %22 to i32
  %27 = call i32 @memset(i8* %24, i32 0, i32 %26)
  %28 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %15, align 8
  %29 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @bacpy(i32* %30, i32* %31)
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @link_to_bdaddr(i32 %33, i32 %34)
  %36 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %15, align 8
  %37 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %15, align 8
  %41 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %15, align 8
  %43 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EIR_NAME_COMPLETE, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = call i64 @eir_append_data(i32 %44, i32 0, i32 %45, i32* %46, i32 %47)
  store i64 %48, i64* %18, align 8
  %49 = load i64, i64* %18, align 8
  %50 = call i32 @cpu_to_le16(i64 %49)
  %51 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %15, align 8
  %52 = getelementptr inbounds %struct.mgmt_ev_device_found, %struct.mgmt_ev_device_found* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @MGMT_EV_DEVICE_FOUND, align 4
  %54 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %55 = load %struct.mgmt_ev_device_found*, %struct.mgmt_ev_device_found** %15, align 8
  %56 = load i64, i64* %18, align 8
  %57 = add i64 20, %56
  %58 = call i32 @mgmt_event(i32 %53, %struct.hci_dev* %54, %struct.mgmt_ev_device_found* %55, i64 %57, i32* null)
  %59 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %59)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @bacpy(i32*, i32*) #2

declare dso_local i32 @link_to_bdaddr(i32, i32) #2

declare dso_local i64 @eir_append_data(i32, i32, i32, i32*, i32) #2

declare dso_local i32 @cpu_to_le16(i64) #2

declare dso_local i32 @mgmt_event(i32, %struct.hci_dev*, %struct.mgmt_ev_device_found*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
