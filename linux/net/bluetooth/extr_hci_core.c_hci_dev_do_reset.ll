; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_dev_do_reset.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_dev_do_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i64, i64, i32, {}*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s %p\00", align 1
@hci_reset_req = common dso_local global i32 0, align 4
@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @hci_dev_do_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_dev_do_reset(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %4 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %4, i32 0, i32 8
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %6, %struct.hci_dev* %7)
  %9 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %10 = call i32 @hci_req_sync_lock(%struct.hci_dev* %9)
  %11 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 7
  %13 = call i32 @skb_queue_purge(i32* %12)
  %14 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 6
  %16 = call i32 @skb_queue_purge(i32* %15)
  %17 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @drain_workqueue(i32 %19)
  %21 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %22 = call i32 @hci_dev_lock(%struct.hci_dev* %21)
  %23 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %24 = call i32 @hci_inquiry_cache_flush(%struct.hci_dev* %23)
  %25 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %26 = call i32 @hci_conn_hash_flush(%struct.hci_dev* %25)
  %27 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %28 = call i32 @hci_dev_unlock(%struct.hci_dev* %27)
  %29 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 4
  %31 = bitcast {}** %30 to i32 (%struct.hci_dev*)**
  %32 = load i32 (%struct.hci_dev*)*, i32 (%struct.hci_dev*)** %31, align 8
  %33 = icmp ne i32 (%struct.hci_dev*)* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %1
  %35 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 4
  %37 = bitcast {}** %36 to i32 (%struct.hci_dev*)**
  %38 = load i32 (%struct.hci_dev*)*, i32 (%struct.hci_dev*)** %37, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %40 = call i32 %38(%struct.hci_dev* %39)
  br label %41

41:                                               ; preds = %34, %1
  %42 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %43 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %42, i32 0, i32 3
  %44 = call i32 @atomic_set(i32* %43, i32 1)
  %45 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %46 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %52 = load i32, i32* @hci_reset_req, align 4
  %53 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %54 = call i32 @__hci_req_sync(%struct.hci_dev* %51, i32 %52, i32 0, i32 %53, i32* null)
  store i32 %54, i32* %3, align 4
  %55 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %56 = call i32 @hci_req_sync_unlock(%struct.hci_dev* %55)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.hci_dev*) #1

declare dso_local i32 @hci_req_sync_lock(%struct.hci_dev*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @drain_workqueue(i32) #1

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @hci_inquiry_cache_flush(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_hash_flush(%struct.hci_dev*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @__hci_req_sync(%struct.hci_dev*, i32, i32, i32, i32*) #1

declare dso_local i32 @hci_req_sync_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
