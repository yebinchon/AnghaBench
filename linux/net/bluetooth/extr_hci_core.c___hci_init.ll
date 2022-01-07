; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c___hci_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c___hci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64 }

@hci_init1_req = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@HCI_SETUP = common dso_local global i32 0, align 4
@hci_init2_req = common dso_local global i32 0, align 4
@HCI_PRIMARY = common dso_local global i64 0, align 8
@hci_init3_req = common dso_local global i32 0, align 4
@hci_init4_req = common dso_local global i32 0, align 4
@HCI_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @__hci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hci_init(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %6 = load i32, i32* @hci_init1_req, align 4
  %7 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %8 = call i32 @__hci_req_sync(%struct.hci_dev* %5, i32 %6, i32 0, i32 %7, i32* null)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %83

13:                                               ; preds = %1
  %14 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %15 = load i32, i32* @HCI_SETUP, align 4
  %16 = call i64 @hci_dev_test_flag(%struct.hci_dev* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %20 = call i32 @hci_debugfs_create_basic(%struct.hci_dev* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %23 = load i32, i32* @hci_init2_req, align 4
  %24 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %25 = call i32 @__hci_req_sync(%struct.hci_dev* %22, i32 %23, i32 0, i32 %24, i32* null)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %83

30:                                               ; preds = %21
  %31 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HCI_PRIMARY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %83

37:                                               ; preds = %30
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = load i32, i32* @hci_init3_req, align 4
  %40 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %41 = call i32 @__hci_req_sync(%struct.hci_dev* %38, i32 %39, i32 0, i32 %40, i32* null)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %83

46:                                               ; preds = %37
  %47 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %48 = load i32, i32* @hci_init4_req, align 4
  %49 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %50 = call i32 @__hci_req_sync(%struct.hci_dev* %47, i32 %48, i32 0, i32 %49, i32* null)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %83

55:                                               ; preds = %46
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = load i32, i32* @HCI_SETUP, align 4
  %58 = call i64 @hci_dev_test_flag(%struct.hci_dev* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = load i32, i32* @HCI_CONFIG, align 4
  %63 = call i64 @hci_dev_test_flag(%struct.hci_dev* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %83

66:                                               ; preds = %60, %55
  %67 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %68 = call i32 @hci_debugfs_create_common(%struct.hci_dev* %67)
  %69 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %70 = call i64 @lmp_bredr_capable(%struct.hci_dev* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %74 = call i32 @hci_debugfs_create_bredr(%struct.hci_dev* %73)
  br label %75

75:                                               ; preds = %72, %66
  %76 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %77 = call i64 @lmp_le_capable(%struct.hci_dev* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %81 = call i32 @hci_debugfs_create_le(%struct.hci_dev* %80)
  br label %82

82:                                               ; preds = %79, %75
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %65, %53, %44, %36, %28, %11
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @__hci_req_sync(%struct.hci_dev*, i32, i32, i32, i32*) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_debugfs_create_basic(%struct.hci_dev*) #1

declare dso_local i32 @hci_debugfs_create_common(%struct.hci_dev*) #1

declare dso_local i64 @lmp_bredr_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_debugfs_create_bredr(%struct.hci_dev*) #1

declare dso_local i64 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_debugfs_create_le(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
