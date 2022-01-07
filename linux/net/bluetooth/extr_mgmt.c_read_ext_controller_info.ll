; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_ext_controller_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_ext_controller_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i64, i32, i32, i32 }
%struct.mgmt_rp_read_ext_info = type { i8*, i32, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"sock %p %s\00", align 1
@HCI_MGMT_EXT_INFO_EVENTS = common dso_local global i32 0, align 4
@HCI_MGMT_DEV_CLASS_EVENTS = common dso_local global i32 0, align 4
@HCI_MGMT_LOCAL_NAME_EVENTS = common dso_local global i32 0, align 4
@MGMT_OP_READ_EXT_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i64)* @read_ext_controller_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ext_controller_info(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca %struct.mgmt_rp_read_ext_info*, align 8
  %11 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %13 = bitcast i8* %12 to %struct.mgmt_rp_read_ext_info*
  store %struct.mgmt_rp_read_ext_info* %13, %struct.mgmt_rp_read_ext_info** %10, align 8
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.sock* %14, i32 %17)
  %19 = bitcast [512 x i8]* %9 to i8**
  %20 = call i32 @memset(i8** %19, i32 0, i32 512)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %22 = call i32 @hci_dev_lock(%struct.hci_dev* %21)
  %23 = load %struct.mgmt_rp_read_ext_info*, %struct.mgmt_rp_read_ext_info** %10, align 8
  %24 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, %struct.mgmt_rp_read_ext_info* %23, i32 0, i32 6
  %25 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 3
  %27 = call i32 @bacpy(i32* %24, i32* %26)
  %28 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mgmt_rp_read_ext_info*, %struct.mgmt_rp_read_ext_info** %10, align 8
  %32 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, %struct.mgmt_rp_read_ext_info* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @cpu_to_le16(i64 %35)
  %37 = load %struct.mgmt_rp_read_ext_info*, %struct.mgmt_rp_read_ext_info** %10, align 8
  %38 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, %struct.mgmt_rp_read_ext_info* %37, i32 0, i32 4
  store i8* %36, i8** %38, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %40 = call i32 @get_supported_settings(%struct.hci_dev* %39)
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = load %struct.mgmt_rp_read_ext_info*, %struct.mgmt_rp_read_ext_info** %10, align 8
  %43 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, %struct.mgmt_rp_read_ext_info* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %45 = call i32 @get_current_settings(%struct.hci_dev* %44)
  %46 = call i8* @cpu_to_le32(i32 %45)
  %47 = load %struct.mgmt_rp_read_ext_info*, %struct.mgmt_rp_read_ext_info** %10, align 8
  %48 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, %struct.mgmt_rp_read_ext_info* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %50 = load %struct.mgmt_rp_read_ext_info*, %struct.mgmt_rp_read_ext_info** %10, align 8
  %51 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, %struct.mgmt_rp_read_ext_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @append_eir_data_to_buf(%struct.hci_dev* %49, i32 %52)
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %11, align 8
  %55 = call i8* @cpu_to_le16(i64 %54)
  %56 = load %struct.mgmt_rp_read_ext_info*, %struct.mgmt_rp_read_ext_info** %10, align 8
  %57 = getelementptr inbounds %struct.mgmt_rp_read_ext_info, %struct.mgmt_rp_read_ext_info* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %59 = call i32 @hci_dev_unlock(%struct.hci_dev* %58)
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = load i32, i32* @HCI_MGMT_EXT_INFO_EVENTS, align 4
  %62 = call i32 @hci_sock_set_flag(%struct.sock* %60, i32 %61)
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = load i32, i32* @HCI_MGMT_DEV_CLASS_EVENTS, align 4
  %65 = call i32 @hci_sock_clear_flag(%struct.sock* %63, i32 %64)
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = load i32, i32* @HCI_MGMT_LOCAL_NAME_EVENTS, align 4
  %68 = call i32 @hci_sock_clear_flag(%struct.sock* %66, i32 %67)
  %69 = load %struct.sock*, %struct.sock** %5, align 8
  %70 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MGMT_OP_READ_EXT_INFO, align 4
  %74 = load %struct.mgmt_rp_read_ext_info*, %struct.mgmt_rp_read_ext_info** %10, align 8
  %75 = load i64, i64* %11, align 8
  %76 = add i64 48, %75
  %77 = call i32 @mgmt_cmd_complete(%struct.sock* %69, i32 %72, i32 %73, i32 0, %struct.mgmt_rp_read_ext_info* %74, i64 %76)
  ret i32 %77
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @get_supported_settings(%struct.hci_dev*) #1

declare dso_local i32 @get_current_settings(%struct.hci_dev*) #1

declare dso_local i64 @append_eir_data_to_buf(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @hci_sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @hci_sock_clear_flag(%struct.sock*, i32) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_read_ext_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
