; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_sc_enable_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_sc_enable_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { i32, %struct.mgmt_mode*, i32, i32 }
%struct.mgmt_mode = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s status %u\00", align 1
@MGMT_OP_SET_SECURE_CONN = common dso_local global i32 0, align 4
@HCI_SC_ENABLED = common dso_local global i32 0, align 4
@HCI_SC_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32, i32)* @sc_enable_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_enable_complete(%struct.hci_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgmt_pending_cmd*, align 8
  %8 = alloca %struct.mgmt_mode*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = call i32 @hci_dev_lock(%struct.hci_dev* %14)
  %16 = load i32, i32* @MGMT_OP_SET_SECURE_CONN, align 4
  %17 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %18 = call %struct.mgmt_pending_cmd* @pending_find(i32 %16, %struct.hci_dev* %17)
  store %struct.mgmt_pending_cmd* %18, %struct.mgmt_pending_cmd** %7, align 8
  %19 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %20 = icmp ne %struct.mgmt_pending_cmd* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  br label %81

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %30 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %33 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mgmt_status(i32 %35)
  %37 = call i32 @mgmt_cmd_status(i32 %28, i32 %31, i32 %34, i32 %36)
  br label %78

38:                                               ; preds = %22
  %39 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %39, i32 0, i32 1
  %41 = load %struct.mgmt_mode*, %struct.mgmt_mode** %40, align 8
  store %struct.mgmt_mode* %41, %struct.mgmt_mode** %8, align 8
  %42 = load %struct.mgmt_mode*, %struct.mgmt_mode** %8, align 8
  %43 = getelementptr inbounds %struct.mgmt_mode, %struct.mgmt_mode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %66 [
    i32 0, label %45
    i32 1, label %52
    i32 2, label %59
  ]

45:                                               ; preds = %38
  %46 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %47 = load i32, i32* @HCI_SC_ENABLED, align 4
  %48 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %46, i32 %47)
  %49 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %50 = load i32, i32* @HCI_SC_ONLY, align 4
  %51 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %49, i32 %50)
  br label %66

52:                                               ; preds = %38
  %53 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %54 = load i32, i32* @HCI_SC_ENABLED, align 4
  %55 = call i32 @hci_dev_set_flag(%struct.hci_dev* %53, i32 %54)
  %56 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %57 = load i32, i32* @HCI_SC_ONLY, align 4
  %58 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %56, i32 %57)
  br label %66

59:                                               ; preds = %38
  %60 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %61 = load i32, i32* @HCI_SC_ENABLED, align 4
  %62 = call i32 @hci_dev_set_flag(%struct.hci_dev* %60, i32 %61)
  %63 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %64 = load i32, i32* @HCI_SC_ONLY, align 4
  %65 = call i32 @hci_dev_set_flag(%struct.hci_dev* %63, i32 %64)
  br label %66

66:                                               ; preds = %38, %59, %52, %45
  %67 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MGMT_OP_SET_SECURE_CONN, align 4
  %71 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %72 = call i32 @send_settings_rsp(i32 %69, i32 %70, %struct.hci_dev* %71)
  %73 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %74 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %75 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @new_settings(%struct.hci_dev* %73, i32 %76)
  br label %78

78:                                               ; preds = %66, %25
  %79 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %80 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %79)
  br label %81

81:                                               ; preds = %78, %21
  %82 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %83 = call i32 @hci_dev_unlock(%struct.hci_dev* %82)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i32 @mgmt_cmd_status(i32, i32, i32, i32) #1

declare dso_local i32 @mgmt_status(i32) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @send_settings_rsp(i32, i32, %struct.hci_dev*) #1

declare dso_local i32 @new_settings(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
