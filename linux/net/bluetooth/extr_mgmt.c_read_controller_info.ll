; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_controller_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_read_controller_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mgmt_rp_read_info = type { i32, i32, i32, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"sock %p %s\00", align 1
@MGMT_OP_READ_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @read_controller_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_controller_info(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_rp_read_info, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.sock* %10, i32 %13)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %16 = call i32 @hci_dev_lock(%struct.hci_dev* %15)
  %17 = call i32 @memset(%struct.mgmt_rp_read_info* %9, i32 0, i32 48)
  %18 = getelementptr inbounds %struct.mgmt_rp_read_info, %struct.mgmt_rp_read_info* %9, i32 0, i32 7
  %19 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 6
  %21 = call i32 @bacpy(i32* %18, i32* %20)
  %22 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %23 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.mgmt_rp_read_info, %struct.mgmt_rp_read_info* %9, i32 0, i32 6
  store i32 %24, i32* %25, align 4
  %26 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = getelementptr inbounds %struct.mgmt_rp_read_info, %struct.mgmt_rp_read_info* %9, i32 0, i32 5
  store i32 %29, i32* %30, align 8
  %31 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %32 = call i32 @get_supported_settings(%struct.hci_dev* %31)
  %33 = call i8* @cpu_to_le32(i32 %32)
  %34 = getelementptr inbounds %struct.mgmt_rp_read_info, %struct.mgmt_rp_read_info* %9, i32 0, i32 4
  store i8* %33, i8** %34, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %36 = call i32 @get_current_settings(%struct.hci_dev* %35)
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = getelementptr inbounds %struct.mgmt_rp_read_info, %struct.mgmt_rp_read_info* %9, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.mgmt_rp_read_info, %struct.mgmt_rp_read_info* %9, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @memcpy(i32 %40, i32 %43, i32 3)
  %45 = getelementptr inbounds %struct.mgmt_rp_read_info, %struct.mgmt_rp_read_info* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32 %46, i32 %49, i32 4)
  %51 = getelementptr inbounds %struct.mgmt_rp_read_info, %struct.mgmt_rp_read_info* %9, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %54 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @memcpy(i32 %52, i32 %55, i32 4)
  %57 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %58 = call i32 @hci_dev_unlock(%struct.hci_dev* %57)
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MGMT_OP_READ_INFO, align 4
  %64 = call i32 @mgmt_cmd_complete(%struct.sock* %59, i32 %62, i32 %63, i32 0, %struct.mgmt_rp_read_info* %9, i32 48)
  ret i32 %64
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @memset(%struct.mgmt_rp_read_info*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @get_supported_settings(%struct.hci_dev*) #1

declare dso_local i32 @get_current_settings(%struct.hci_dev*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.mgmt_rp_read_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
