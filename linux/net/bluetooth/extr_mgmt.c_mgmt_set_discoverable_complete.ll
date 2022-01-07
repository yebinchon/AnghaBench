; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_set_discoverable_complete.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_mgmt_set_discoverable_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32 }
%struct.mgmt_pending_cmd = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"status 0x%02x\00", align 1
@MGMT_OP_SET_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_LIMITED_DISCOVERABLE = common dso_local global i32 0, align 4
@HCI_DISCOVERABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmt_set_discoverable_complete(%struct.hci_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mgmt_pending_cmd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %8)
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = call i32 @hci_dev_lock(%struct.hci_dev* %10)
  %12 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = call %struct.mgmt_pending_cmd* @pending_find(i32 %12, %struct.hci_dev* %13)
  store %struct.mgmt_pending_cmd* %14, %struct.mgmt_pending_cmd** %5, align 8
  %15 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %16 = icmp ne %struct.mgmt_pending_cmd* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %76

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @mgmt_status(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @mgmt_cmd_status(i32 %26, i32 %29, i32 %32, i64 %33)
  %35 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %36 = load i32, i32* @HCI_LIMITED_DISCOVERABLE, align 4
  %37 = call i32 @hci_dev_clear_flag(%struct.hci_dev* %35, i32 %36)
  br label %73

38:                                               ; preds = %18
  %39 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %40 = load i32, i32* @HCI_DISCOVERABLE, align 4
  %41 = call i64 @hci_dev_test_flag(%struct.hci_dev* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %38
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 1000
  %53 = call i32 @msecs_to_jiffies(i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %58 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @queue_delayed_work(i32 %56, i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %48, %43, %38
  %62 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %63 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MGMT_OP_SET_DISCOVERABLE, align 4
  %66 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %67 = call i32 @send_settings_rsp(i32 %64, i32 %65, %struct.hci_dev* %66)
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.mgmt_pending_cmd, %struct.mgmt_pending_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @new_settings(%struct.hci_dev* %68, i32 %71)
  br label %73

73:                                               ; preds = %61, %21
  %74 = load %struct.mgmt_pending_cmd*, %struct.mgmt_pending_cmd** %5, align 8
  %75 = call i32 @mgmt_pending_remove(%struct.mgmt_pending_cmd* %74)
  br label %76

76:                                               ; preds = %73, %17
  %77 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %78 = call i32 @hci_dev_unlock(%struct.hci_dev* %77)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local %struct.mgmt_pending_cmd* @pending_find(i32, %struct.hci_dev*) #1

declare dso_local i64 @mgmt_status(i64) #1

declare dso_local i32 @mgmt_cmd_status(i32, i32, i32, i64) #1

declare dso_local i32 @hci_dev_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

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
