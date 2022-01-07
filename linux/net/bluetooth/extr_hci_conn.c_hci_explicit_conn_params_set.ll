; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_explicit_conn_params_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_explicit_conn_params_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_conn_params = type { i64, i32, i32 }

@EISCONN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HCI_AUTO_CONN_EXPLICIT = common dso_local global i64 0, align 8
@HCI_AUTO_CONN_DISABLED = common dso_local global i64 0, align 8
@HCI_AUTO_CONN_REPORT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"addr %pMR (type %u) auto_connect %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32*, i32)* @hci_explicit_conn_params_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_explicit_conn_params_set(%struct.hci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_conn_params*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @is_connected(%struct.hci_dev* %9, i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EISCONN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %74

17:                                               ; preds = %3
  %18 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev* %18, i32* %19, i32 %20)
  store %struct.hci_conn_params* %21, %struct.hci_conn_params** %8, align 8
  %22 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %23 = icmp ne %struct.hci_conn_params* %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.hci_conn_params* @hci_conn_params_add(%struct.hci_dev* %25, i32* %26, i32 %27)
  store %struct.hci_conn_params* %28, %struct.hci_conn_params** %8, align 8
  %29 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %30 = icmp ne %struct.hci_conn_params* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %74

34:                                               ; preds = %24
  %35 = load i64, i64* @HCI_AUTO_CONN_EXPLICIT, align 8
  %36 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %37 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %17
  %39 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %40 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HCI_AUTO_CONN_DISABLED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %38
  %45 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %46 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HCI_AUTO_CONN_REPORT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %52 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @HCI_AUTO_CONN_EXPLICIT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50, %44, %38
  %57 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %58 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %57, i32 0, i32 2
  %59 = call i32 @list_del_init(i32* %58)
  %60 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %61 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %60, i32 0, i32 2
  %62 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 0
  %64 = call i32 @list_add(i32* %61, i32* %63)
  br label %65

65:                                               ; preds = %56, %50
  %66 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %67 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %66, i32 0, i32 1
  store i32 1, i32* %67, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %71 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %68, i32 %69, i64 %72)
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %65, %31, %14
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @is_connected(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.hci_conn_params* @hci_conn_params_add(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
