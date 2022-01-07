; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_cs_le_create_conn.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_cs_le_create_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.hci_conn = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@ADDR_LE_DEV_RANDOM = common dso_local global i64 0, align 8
@HCI_LE_USE_PEER_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32*, i64, i64, i64)* @cs_le_create_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_le_create_conn(%struct.hci_dev* %0, i32* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev* %12, i32* %13, i64 %14)
  store %struct.hci_conn* %15, %struct.hci_conn** %11, align 8
  %16 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %17 = icmp ne %struct.hci_conn* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %61

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %22 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %21, i32 0, i32 6
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @ADDR_LE_DEV_RANDOM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %28 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %27, i32 0, i32 5
  %29 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 1
  %31 = call i32 @bacpy(i32* %28, i32* %30)
  br label %38

32:                                               ; preds = %19
  %33 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %34 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %33, i32 0, i32 5
  %35 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 0
  %37 = call i32 @bacpy(i32* %34, i32* %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %41 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %43 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %42, i32 0, i32 3
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @bacpy(i32* %43, i32* %44)
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @HCI_LE_USE_PEER_ADDR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %38
  %50 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %56 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %55, i32 0, i32 1
  %57 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %58 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @queue_delayed_work(i32 %54, i32* %56, i32 %59)
  br label %61

61:                                               ; preds = %18, %49, %38
  ret void
}

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev*, i32*, i64) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
