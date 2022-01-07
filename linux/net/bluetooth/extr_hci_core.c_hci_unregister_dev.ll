; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_unregister_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_unregister_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%p name %s bus %d\00", align 1
@HCI_UNREGISTER = common dso_local global i32 0, align 4
@hci_dev_list_lock = common dso_local global i32 0, align 4
@HCI_INIT = common dso_local global i32 0, align 4
@HCI_SETUP = common dso_local global i32 0, align 4
@HCI_CONFIG = common dso_local global i32 0, align 4
@HCI_DEV_UNREG = common dso_local global i32 0, align 4
@hci_index_ida = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_unregister_dev(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %5, i32 0, i32 17
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 16
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.hci_dev* %4, i32 %7, i32 %10)
  %12 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %13 = load i32, i32* @HCI_UNREGISTER, align 4
  %14 = call i32 @hci_dev_set_flag(%struct.hci_dev* %12, i32 %13)
  %15 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  %18 = call i32 @write_lock(i32* @hci_dev_list_lock)
  %19 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %20 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %19, i32 0, i32 15
  %21 = call i32 @list_del(i32* %20)
  %22 = call i32 @write_unlock(i32* @hci_dev_list_lock)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %23, i32 0, i32 14
  %25 = call i32 @cancel_work_sync(i32* %24)
  %26 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %27 = call i32 @hci_dev_do_close(%struct.hci_dev* %26)
  %28 = load i32, i32* @HCI_INIT, align 4
  %29 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 13
  %31 = call i32 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %1
  %34 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %35 = load i32, i32* @HCI_SETUP, align 4
  %36 = call i32 @hci_dev_test_flag(%struct.hci_dev* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %40 = load i32, i32* @HCI_CONFIG, align 4
  %41 = call i32 @hci_dev_test_flag(%struct.hci_dev* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  %44 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %45 = call i32 @hci_dev_lock(%struct.hci_dev* %44)
  %46 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %47 = call i32 @mgmt_index_removed(%struct.hci_dev* %46)
  %48 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %49 = call i32 @hci_dev_unlock(%struct.hci_dev* %48)
  br label %50

50:                                               ; preds = %43, %38, %33, %1
  %51 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 12
  %53 = call i32 @list_empty(i32* %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %59 = load i32, i32* @HCI_DEV_UNREG, align 4
  %60 = call i32 @hci_sock_dev_event(%struct.hci_dev* %58, i32 %59)
  %61 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 11
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %50
  %66 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %67 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %66, i32 0, i32 11
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @rfkill_unregister(i64 %68)
  %70 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 11
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @rfkill_destroy(i64 %72)
  br label %74

74:                                               ; preds = %65, %50
  %75 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 10
  %77 = call i32 @device_del(i32* %76)
  %78 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %79 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @debugfs_remove_recursive(i32 %80)
  %82 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %83 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @kfree_const(i32 %84)
  %86 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @kfree_const(i32 %88)
  %90 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @destroy_workqueue(i32 %92)
  %94 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %95 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @destroy_workqueue(i32 %96)
  %98 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %99 = call i32 @hci_dev_lock(%struct.hci_dev* %98)
  %100 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %101 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %100, i32 0, i32 4
  %102 = call i32 @hci_bdaddr_list_clear(i32* %101)
  %103 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %104 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %103, i32 0, i32 3
  %105 = call i32 @hci_bdaddr_list_clear(i32* %104)
  %106 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %107 = call i32 @hci_uuids_clear(%struct.hci_dev* %106)
  %108 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %109 = call i32 @hci_link_keys_clear(%struct.hci_dev* %108)
  %110 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %111 = call i32 @hci_smp_ltks_clear(%struct.hci_dev* %110)
  %112 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %113 = call i32 @hci_smp_irks_clear(%struct.hci_dev* %112)
  %114 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %115 = call i32 @hci_remote_oob_data_clear(%struct.hci_dev* %114)
  %116 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %117 = call i32 @hci_adv_instances_clear(%struct.hci_dev* %116)
  %118 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %119 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %118, i32 0, i32 2
  %120 = call i32 @hci_bdaddr_list_clear(i32* %119)
  %121 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %122 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %121, i32 0, i32 1
  %123 = call i32 @hci_bdaddr_list_clear(i32* %122)
  %124 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %125 = call i32 @hci_conn_params_clear_all(%struct.hci_dev* %124)
  %126 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %127 = call i32 @hci_discovery_filter_clear(%struct.hci_dev* %126)
  %128 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %129 = call i32 @hci_dev_unlock(%struct.hci_dev* %128)
  %130 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %131 = call i32 @hci_dev_put(%struct.hci_dev* %130)
  %132 = load i32, i32* %3, align 4
  %133 = call i32 @ida_simple_remove(i32* @hci_index_ida, i32 %132)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_dev*, i32, i32) #1

declare dso_local i32 @hci_dev_set_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @hci_dev_do_close(%struct.hci_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @mgmt_index_removed(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @hci_sock_dev_event(%struct.hci_dev*, i32) #1

declare dso_local i32 @rfkill_unregister(i64) #1

declare dso_local i32 @rfkill_destroy(i64) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @kfree_const(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @hci_bdaddr_list_clear(i32*) #1

declare dso_local i32 @hci_uuids_clear(%struct.hci_dev*) #1

declare dso_local i32 @hci_link_keys_clear(%struct.hci_dev*) #1

declare dso_local i32 @hci_smp_ltks_clear(%struct.hci_dev*) #1

declare dso_local i32 @hci_smp_irks_clear(%struct.hci_dev*) #1

declare dso_local i32 @hci_remote_oob_data_clear(%struct.hci_dev*) #1

declare dso_local i32 @hci_adv_instances_clear(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_params_clear_all(%struct.hci_dev*) #1

declare dso_local i32 @hci_discovery_filter_clear(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
