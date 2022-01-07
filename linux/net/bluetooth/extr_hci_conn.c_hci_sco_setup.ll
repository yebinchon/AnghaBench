; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_sco_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_sco_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, %struct.hci_conn* }

@.str = private unnamed_addr constant [8 x i8] c"hcon %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hci_sco_setup(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 2
  %8 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  store %struct.hci_conn* %8, %struct.hci_conn** %5, align 8
  %9 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %10 = icmp ne %struct.hci_conn* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %12
  %18 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %19 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @lmp_esco_capable(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %25 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %26 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @hci_setup_sync(%struct.hci_conn* %24, i32 %27)
  br label %35

29:                                               ; preds = %17
  %30 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %31 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %32 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hci_add_sco(%struct.hci_conn* %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  br label %42

36:                                               ; preds = %12
  %37 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @hci_connect_cfm(%struct.hci_conn* %37, i32 %38)
  %40 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %41 = call i32 @hci_conn_del(%struct.hci_conn* %40)
  br label %42

42:                                               ; preds = %11, %36, %35
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i64 @lmp_esco_capable(i32) #1

declare dso_local i32 @hci_setup_sync(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_add_sco(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_connect_cfm(%struct.hci_conn*, i32) #1

declare dso_local i32 @hci_conn_del(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
