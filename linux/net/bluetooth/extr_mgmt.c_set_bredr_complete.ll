; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_bredr_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_set_bredr_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"status 0x%02x\00", align 1
@MGMT_OP_SET_BREDR = common dso_local global i32 0, align 4
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i64, i32)* @set_bredr_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_bredr_complete(%struct.hci_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mgmt_pending_cmd*, align 8
  %8 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %9)
  %11 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %12 = call i32 @hci_dev_lock(%struct.hci_dev* %11)
  %13 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %15 = call %struct.mgmt_pending_cmd* @pending_find(i32 %13, %struct.hci_dev* %14)
  store %struct.mgmt_pending_cmd* %15, %struct.mgmt_pending_cmd** %7, align 8
  %16 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %17 = icmp ne %struct.mgmt_pending_cmd* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %54

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @mgmt_status(i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %26 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %27 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %25, i32 %26)
  %28 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %29 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %32 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %35 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @mgmt_cmd_status(i32 %30, i32 %33, i32 %36, i64 %37)
  br label %51

39:                                               ; preds = %19
  %40 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %41 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MGMT_OP_SET_BREDR, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %45 = call i32 @send_settings_rsp(i32 %42, i32 %43, %struct.hci_dev* %44)
  %46 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %47 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @new_settings(%struct.hci_dev* %46, i32 %49)
  br label %51

51:                                               ; preds = %39, %22
  %52 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %7, align 8
  %53 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %52)
  br label %54

54:                                               ; preds = %51, %18
  %55 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %56 = call i32 @hci_dev_unlock(%struct.hci_dev* %55)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i64 @mgmt_status(i64) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @mgmt_cmd_status(i32, i32, i32, i64) #1

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
