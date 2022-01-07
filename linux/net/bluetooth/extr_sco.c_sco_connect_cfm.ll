; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_connect_cfm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_connect_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32 }
%struct.sco_conn = type { i32 }

@SCO_LINK = common dso_local global i64 0, align 8
@ESCO_LINK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"hcon %p bdaddr %pMR status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*, i32)* @sco_connect_cfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sco_connect_cfm(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sco_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SCO_LINK, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %13 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ESCO_LINK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %40

18:                                               ; preds = %11, %2
  %19 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %20 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %21 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %20, i32 0, i32 1
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %19, i32* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %18
  %27 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %28 = call %struct.sco_conn* @sco_conn_add(%struct.hci_conn* %27)
  store %struct.sco_conn* %28, %struct.sco_conn** %5, align 8
  %29 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %30 = icmp ne %struct.sco_conn* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %33 = call i32 @sco_conn_ready(%struct.sco_conn* %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %40

35:                                               ; preds = %18
  %36 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @bt_to_errno(i32 %37)
  %39 = call i32 @sco_conn_del(%struct.hci_conn* %36, i32 %38)
  br label %40

40:                                               ; preds = %17, %35, %34
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, i32*, i32) #1

declare dso_local %struct.sco_conn* @sco_conn_add(%struct.hci_conn*) #1

declare dso_local i32 @sco_conn_ready(%struct.sco_conn*) #1

declare dso_local i32 @sco_conn_del(%struct.hci_conn*, i32) #1

declare dso_local i32 @bt_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
