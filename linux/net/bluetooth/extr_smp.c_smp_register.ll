; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.l2cap_chan*, %struct.l2cap_chan*, i32, i32 }
%struct.l2cap_chan = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@L2CAP_CID_SMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"le_min_key_size\00", align 1
@le_min_key_size_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"le_max_key_size\00", align 1
@le_max_key_size_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"force_bredr_smp\00", align 1
@force_bredr_smp_fops = common dso_local global i32 0, align 4
@HCI_FORCE_BREDR_SMP = common dso_local global i32 0, align 4
@L2CAP_CID_SMP_BREDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smp_register(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = call i32 @lmp_le_capable(%struct.hci_dev* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %103

14:                                               ; preds = %1
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 1
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %16, align 8
  %18 = call i64 @WARN_ON(%struct.l2cap_chan* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 1
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %22, align 8
  store %struct.l2cap_chan* %23, %struct.l2cap_chan** %4, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 1
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %25, align 8
  %26 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %27 = call i32 @smp_del_chan(%struct.l2cap_chan* %26)
  br label %28

28:                                               ; preds = %20, %14
  %29 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %30 = load i32, i32* @L2CAP_CID_SMP, align 4
  %31 = call %struct.l2cap_chan* @smp_add_cid(%struct.hci_dev* %29, i32 %30)
  store %struct.l2cap_chan* %31, %struct.l2cap_chan** %4, align 8
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %33 = call i64 @IS_ERR(%struct.l2cap_chan* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %37 = call i32 @PTR_ERR(%struct.l2cap_chan* %36)
  store i32 %37, i32* %2, align 4
  br label %103

38:                                               ; preds = %28
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 1
  store %struct.l2cap_chan* %39, %struct.l2cap_chan** %41, align 8
  %42 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %46 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 420, i32 %44, %struct.hci_dev* %45, i32* @le_min_key_size_fops)
  %47 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %51 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 420, i32 %49, %struct.hci_dev* %50, i32* @le_max_key_size_fops)
  %52 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %53 = call i32 @lmp_sc_capable(%struct.hci_dev* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %38
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %60 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 420, i32 %58, %struct.hci_dev* %59, i32* @force_bredr_smp_fops)
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = load i32, i32* @HCI_FORCE_BREDR_SMP, align 4
  %63 = call i32 @hci_dev_test_flag(%struct.hci_dev* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %103

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %38
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 0
  %70 = load %struct.l2cap_chan*, %struct.l2cap_chan** %69, align 8
  %71 = call i64 @WARN_ON(%struct.l2cap_chan* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 0
  %76 = load %struct.l2cap_chan*, %struct.l2cap_chan** %75, align 8
  store %struct.l2cap_chan* %76, %struct.l2cap_chan** %4, align 8
  %77 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %78 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %77, i32 0, i32 0
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %78, align 8
  %79 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %80 = call i32 @smp_del_chan(%struct.l2cap_chan* %79)
  br label %81

81:                                               ; preds = %73, %67
  %82 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %83 = load i32, i32* @L2CAP_CID_SMP_BREDR, align 4
  %84 = call %struct.l2cap_chan* @smp_add_cid(%struct.hci_dev* %82, i32 %83)
  store %struct.l2cap_chan* %84, %struct.l2cap_chan** %4, align 8
  %85 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %86 = call i64 @IS_ERR(%struct.l2cap_chan* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %90 = call i32 @PTR_ERR(%struct.l2cap_chan* %89)
  store i32 %90, i32* %5, align 4
  %91 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %92 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %91, i32 0, i32 1
  %93 = load %struct.l2cap_chan*, %struct.l2cap_chan** %92, align 8
  store %struct.l2cap_chan* %93, %struct.l2cap_chan** %4, align 8
  %94 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %95 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %94, i32 0, i32 1
  store %struct.l2cap_chan* null, %struct.l2cap_chan** %95, align 8
  %96 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %97 = call i32 @smp_del_chan(%struct.l2cap_chan* %96)
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %103

99:                                               ; preds = %81
  %100 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %101 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %102 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %101, i32 0, i32 0
  store %struct.l2cap_chan* %100, %struct.l2cap_chan** %102, align 8
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %88, %65, %35, %13
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local i64 @WARN_ON(%struct.l2cap_chan*) #1

declare dso_local i32 @smp_del_chan(%struct.l2cap_chan*) #1

declare dso_local %struct.l2cap_chan* @smp_add_cid(%struct.hci_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.l2cap_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.l2cap_chan*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.hci_dev*, i32*) #1

declare dso_local i32 @lmp_sc_capable(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
