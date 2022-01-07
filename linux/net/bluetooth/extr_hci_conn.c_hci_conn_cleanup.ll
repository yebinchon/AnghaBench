; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, i32, %struct.hci_dev*, i32 }
%struct.hci_dev = type { i32 (%struct.hci_dev*, i32)* }

@HCI_CONN_PARAM_REMOVAL_PEND = common dso_local global i32 0, align 4
@HCI_NOTIFY_CONN_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*)* @hci_conn_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_conn_cleanup(%struct.hci_conn* %0) #0 {
  %2 = alloca %struct.hci_conn*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %2, align 8
  %4 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %5 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %4, i32 0, i32 3
  %6 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  store %struct.hci_dev* %6, %struct.hci_dev** %3, align 8
  %7 = load i32, i32* @HCI_CONN_PARAM_REMOVAL_PEND, align 4
  %8 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 4
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %14 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %13, i32 0, i32 3
  %15 = load %struct.hci_dev*, %struct.hci_dev** %14, align 8
  %16 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %17 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %16, i32 0, i32 2
  %18 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %19 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hci_conn_params_del(%struct.hci_dev* %15, i32* %17, i32 %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %24 = call i32 @hci_chan_list_flush(%struct.hci_conn* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %27 = call i32 @hci_conn_hash_del(%struct.hci_dev* %25, %struct.hci_conn* %26)
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 0
  %30 = load i32 (%struct.hci_dev*, i32)*, i32 (%struct.hci_dev*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.hci_dev*, i32)* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 0
  %35 = load i32 (%struct.hci_dev*, i32)*, i32 (%struct.hci_dev*, i32)** %34, align 8
  %36 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %37 = load i32, i32* @HCI_NOTIFY_CONN_DEL, align 4
  %38 = call i32 %35(%struct.hci_dev* %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %22
  %40 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %41 = call i32 @hci_conn_del_sysfs(%struct.hci_conn* %40)
  %42 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %43 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @debugfs_remove_recursive(i32 %44)
  %46 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %47 = call i32 @hci_dev_put(%struct.hci_dev* %46)
  %48 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %49 = call i32 @hci_conn_put(%struct.hci_conn* %48)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_conn_params_del(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @hci_chan_list_flush(%struct.hci_conn*) #1

declare dso_local i32 @hci_conn_hash_del(%struct.hci_dev*, %struct.hci_conn*) #1

declare dso_local i32 @hci_conn_del_sysfs(%struct.hci_conn*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @hci_dev_put(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_put(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
