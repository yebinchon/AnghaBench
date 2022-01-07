; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_confirm_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_confirm_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.hci_dev = type { i32, i32 }
%struct.mgmt_cp_confirm_name = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.inquiry_entry = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@MGMT_OP_CONFIRM_NAME = common dso_local global i32 0, align 4
@MGMT_STATUS_FAILED = common dso_local global i32 0, align 4
@MGMT_STATUS_INVALID_PARAMS = common dso_local global i32 0, align 4
@NAME_KNOWN = common dso_local global i32 0, align 4
@NAME_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.hci_dev*, i8*, i32)* @confirm_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @confirm_name(%struct.sock* %0, %struct.hci_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mgmt_cp_confirm_name*, align 8
  %10 = alloca %struct.inquiry_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.hci_dev* %1, %struct.hci_dev** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.mgmt_cp_confirm_name*
  store %struct.mgmt_cp_confirm_name* %13, %struct.mgmt_cp_confirm_name** %9, align 8
  %14 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %19 = call i32 @hci_dev_lock(%struct.hci_dev* %18)
  %20 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %21 = call i32 @hci_discovery_active(%struct.hci_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %4
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MGMT_OP_CONFIRM_NAME, align 4
  %29 = load i32, i32* @MGMT_STATUS_FAILED, align 4
  %30 = load %struct.mgmt_cp_confirm_name*, %struct.mgmt_cp_confirm_name** %9, align 8
  %31 = getelementptr inbounds %struct.mgmt_cp_confirm_name, %struct.mgmt_cp_confirm_name* %30, i32 0, i32 0
  %32 = call i32 @mgmt_cmd_complete(%struct.sock* %24, i32 %27, i32 %28, i32 %29, %struct.TYPE_2__* %31, i32 4)
  store i32 %32, i32* %11, align 4
  br label %79

33:                                               ; preds = %4
  %34 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %35 = load %struct.mgmt_cp_confirm_name*, %struct.mgmt_cp_confirm_name** %9, align 8
  %36 = getelementptr inbounds %struct.mgmt_cp_confirm_name, %struct.mgmt_cp_confirm_name* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call %struct.inquiry_entry* @hci_inquiry_cache_lookup_unknown(%struct.hci_dev* %34, i32* %37)
  store %struct.inquiry_entry* %38, %struct.inquiry_entry** %10, align 8
  %39 = load %struct.inquiry_entry*, %struct.inquiry_entry** %10, align 8
  %40 = icmp ne %struct.inquiry_entry* %39, null
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MGMT_OP_CONFIRM_NAME, align 4
  %47 = load i32, i32* @MGMT_STATUS_INVALID_PARAMS, align 4
  %48 = load %struct.mgmt_cp_confirm_name*, %struct.mgmt_cp_confirm_name** %9, align 8
  %49 = getelementptr inbounds %struct.mgmt_cp_confirm_name, %struct.mgmt_cp_confirm_name* %48, i32 0, i32 0
  %50 = call i32 @mgmt_cmd_complete(%struct.sock* %42, i32 %45, i32 %46, i32 %47, %struct.TYPE_2__* %49, i32 4)
  store i32 %50, i32* %11, align 4
  br label %79

51:                                               ; preds = %33
  %52 = load %struct.mgmt_cp_confirm_name*, %struct.mgmt_cp_confirm_name** %9, align 8
  %53 = getelementptr inbounds %struct.mgmt_cp_confirm_name, %struct.mgmt_cp_confirm_name* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* @NAME_KNOWN, align 4
  %58 = load %struct.inquiry_entry*, %struct.inquiry_entry** %10, align 8
  %59 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.inquiry_entry*, %struct.inquiry_entry** %10, align 8
  %61 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %60, i32 0, i32 1
  %62 = call i32 @list_del(i32* %61)
  br label %70

63:                                               ; preds = %51
  %64 = load i32, i32* @NAME_NEEDED, align 4
  %65 = load %struct.inquiry_entry*, %struct.inquiry_entry** %10, align 8
  %66 = getelementptr inbounds %struct.inquiry_entry, %struct.inquiry_entry* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %68 = load %struct.inquiry_entry*, %struct.inquiry_entry** %10, align 8
  %69 = call i32 @hci_inquiry_cache_update_resolve(%struct.hci_dev* %67, %struct.inquiry_entry* %68)
  br label %70

70:                                               ; preds = %63, %56
  %71 = load %struct.sock*, %struct.sock** %5, align 8
  %72 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %73 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MGMT_OP_CONFIRM_NAME, align 4
  %76 = load %struct.mgmt_cp_confirm_name*, %struct.mgmt_cp_confirm_name** %9, align 8
  %77 = getelementptr inbounds %struct.mgmt_cp_confirm_name, %struct.mgmt_cp_confirm_name* %76, i32 0, i32 0
  %78 = call i32 @mgmt_cmd_complete(%struct.sock* %71, i32 %74, i32 %75, i32 0, %struct.TYPE_2__* %77, i32 4)
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %70, %41, %23
  %80 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %81 = call i32 @hci_dev_unlock(%struct.hci_dev* %80)
  %82 = load i32, i32* %11, align 4
  ret i32 %82
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_discovery_active(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_complete(%struct.sock*, i32, i32, i32, %struct.TYPE_2__*, i32) #1

declare dso_local %struct.inquiry_entry* @hci_inquiry_cache_lookup_unknown(%struct.hci_dev*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @hci_inquiry_cache_update_resolve(%struct.hci_dev*, %struct.inquiry_entry*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
