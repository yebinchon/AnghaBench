; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_set_connectable_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_set_connectable_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.mgmt_pending_cmd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"status 0x%02x\00", align 1
@MGMT_OP_SET_CONNECTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_set_connectable_complete(%struct.hci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mgmt_pending_cmd*, align 8
  %6 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %7)
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = call i32 @hci_dev_lock(%struct.hci_dev* %9)
  %11 = load i32, i32* @MGMT_OP_SET_CONNECTABLE, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = call %struct.mgmt_pending_cmd* @pending_find(i32 %11, %struct.hci_dev* %12)
  store %struct.mgmt_pending_cmd* %13, %struct.mgmt_pending_cmd** %5, align 8
  %14 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %15 = icmp ne %struct.mgmt_pending_cmd* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %49

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @mgmt_status(i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @mgmt_cmd_status(i32 %25, i32 %28, i32 %31, i64 %32)
  br label %46

34:                                               ; preds = %17
  %35 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MGMT_OP_SET_CONNECTABLE, align 4
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = call i32 @send_settings_rsp(i32 %37, i32 %38, %struct.hci_dev* %39)
  %41 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %42 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @new_settings(%struct.hci_dev* %41, i32 %44)
  br label %46

46:                                               ; preds = %34, %20
  %47 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %48 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %47)
  br label %49

49:                                               ; preds = %46, %16
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = call i32 @hci_dev_unlock(%struct.hci_dev* %50)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i64 @mgmt_status(i64) #1

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
