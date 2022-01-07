; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_conn_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_conn_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, i8* }

@HCI_LK_CHANGED_COMBINATION = common dso_local global i32 0, align 4
@BT_SECURITY_HIGH = common dso_local global i8* null, align 8
@BT_SECURITY_MEDIUM = common dso_local global i8* null, align 8
@BT_SECURITY_FIPS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*, i32, i32)* @conn_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_set_key(%struct.hci_conn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @HCI_LK_CHANGED_COMBINATION, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %44

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %14 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %17 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %44 [
    i32 131, label %19
    i32 130, label %19
    i32 132, label %19
    i32 133, label %20
    i32 129, label %32
    i32 128, label %32
    i32 135, label %36
    i32 134, label %40
  ]

19:                                               ; preds = %11, %11, %11
  br label %44

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i8*, i8** @BT_SECURITY_HIGH, align 8
  %25 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %26 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  br label %31

27:                                               ; preds = %20
  %28 = load i8*, i8** @BT_SECURITY_MEDIUM, align 8
  %29 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %30 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %27, %23
  br label %44

32:                                               ; preds = %11, %11
  %33 = load i8*, i8** @BT_SECURITY_MEDIUM, align 8
  %34 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %44

36:                                               ; preds = %11
  %37 = load i8*, i8** @BT_SECURITY_HIGH, align 8
  %38 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  br label %44

40:                                               ; preds = %11
  %41 = load i8*, i8** @BT_SECURITY_FIPS, align 8
  %42 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %43 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %10, %19, %11, %40, %36, %32, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
