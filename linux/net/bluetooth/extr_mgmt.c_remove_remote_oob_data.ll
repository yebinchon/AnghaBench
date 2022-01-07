; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_remove_remote_oob_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_remove_remote_oob_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_cp_remove_remote_oob_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@BDADDR_BREDR = common dso_local global i64 0, align 8
@MGMT_OP_REMOVE_REMOTE_OOB_DATA = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global i32 0, align 4
@MGMT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @remove_remote_oob_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_remote_oob_data(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mgmt_cp_remove_remote_oob_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.mgmt_cp_remove_remote_oob_data*
  store %struct.mgmt_cp_remove_remote_oob_data* %14, %struct.mgmt_cp_remove_remote_oob_data** %10, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.mgmt_cp_remove_remote_oob_data*, %struct.mgmt_cp_remove_remote_oob_data** %10, align 8
  %20 = getelementptr inbounds %struct.mgmt_cp_remove_remote_oob_data, %struct.mgmt_cp_remove_remote_oob_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BDADDR_BREDR, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %4
  %26 = load %struct.sock*, %struct.sock** %6, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MGMT_OP_REMOVE_REMOTE_OOB_DATA, align 4
  %31 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %32 = load %struct.mgmt_cp_remove_remote_oob_data*, %struct.mgmt_cp_remove_remote_oob_data** %10, align 8
  %33 = getelementptr inbounds %struct.mgmt_cp_remove_remote_oob_data, %struct.mgmt_cp_remove_remote_oob_data* %32, i32 0, i32 0
  %34 = call i32 @mgmt_cmd_complete(%struct.sock* %26, i32 %29, i32 %30, i32 %31, %struct.TYPE_2__* %33, i32 16)
  store i32 %34, i32* %5, align 4
  br label %78

35:                                               ; preds = %4
  %36 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %37 = call i32 @hci_dev_lock(%struct.hci_dev* %36)
  %38 = load %struct.mgmt_cp_remove_remote_oob_data*, %struct.mgmt_cp_remove_remote_oob_data** %10, align 8
  %39 = getelementptr inbounds %struct.mgmt_cp_remove_remote_oob_data, %struct.mgmt_cp_remove_remote_oob_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* @BDADDR_ANY, align 4
  %42 = call i32 @bacmp(i32* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %46 = call i32 @hci_remote_oob_data_clear(%struct.hci_dev* %45)
  %47 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  store i32 %47, i32* %11, align 4
  br label %65

48:                                               ; preds = %35
  %49 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %50 = load %struct.mgmt_cp_remove_remote_oob_data*, %struct.mgmt_cp_remove_remote_oob_data** %10, align 8
  %51 = getelementptr inbounds %struct.mgmt_cp_remove_remote_oob_data, %struct.mgmt_cp_remove_remote_oob_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load %struct.mgmt_cp_remove_remote_oob_data*, %struct.mgmt_cp_remove_remote_oob_data** %10, align 8
  %54 = getelementptr inbounds %struct.mgmt_cp_remove_remote_oob_data, %struct.mgmt_cp_remove_remote_oob_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @hci_remove_remote_oob_data(%struct.hci_dev* %49, i32* %52, i64 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  store i32 %61, i32* %11, align 4
  br label %64

62:                                               ; preds = %48
  %63 = load i32, i32* @MGMT_STATUS_SUCCESS, align 4
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %44
  %66 = load %struct.sock*, %struct.sock** %6, align 8
  %67 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MGMT_OP_REMOVE_REMOTE_OOB_DATA, align 4
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.mgmt_cp_remove_remote_oob_data*, %struct.mgmt_cp_remove_remote_oob_data** %10, align 8
  %73 = getelementptr inbounds %struct.mgmt_cp_remove_remote_oob_data, %struct.mgmt_cp_remove_remote_oob_data* %72, i32 0, i32 0
  %74 = call i32 @mgmt_cmd_complete(%struct.sock* %66, i32 %69, i32 %70, i32 %71, %struct.TYPE_2__* %73, i32 16)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %76 = call i32 @hci_dev_unlock(%struct.hci_dev* %75)
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %65, %25
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @bacmp(i32*, i32) #1

declare dso_local i32 @hci_remote_oob_data_clear(%struct.hci_dev*) #1

declare dso_local i32 @hci_remove_remote_oob_data(%struct.hci_dev*, i32*, i64) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
