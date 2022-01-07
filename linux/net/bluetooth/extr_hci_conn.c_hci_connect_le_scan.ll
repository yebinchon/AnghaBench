; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_connect_le_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_connect_le_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i32, i64, i32, i32 }
%struct.hci_dev = type { i32 }

@HCI_LE_ENABLED = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"requesting refresh of dst_addr\00", align 1
@LE_LINK = common dso_local global i32 0, align 4
@HCI_ROLE_MASTER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BT_CONNECT = common dso_local global i32 0, align 4
@HCI_CONN_SCANNING = common dso_local global i32 0, align 4
@BT_SECURITY_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hci_conn* @hci_connect_le_scan(%struct.hci_dev* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.hci_conn*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %14 = load i32, i32* @HCI_LE_ENABLED, align 4
  %15 = call i32 @hci_dev_test_flag(%struct.hci_dev* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %5
  %18 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %19 = call i64 @lmp_le_capable(%struct.hci_dev* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @ECONNREFUSED, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.hci_conn* @ERR_PTR(i32 %23)
  store %struct.hci_conn* %24, %struct.hci_conn** %6, align 8
  br label %96

25:                                               ; preds = %17
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.hci_conn* @ERR_PTR(i32 %27)
  store %struct.hci_conn* %28, %struct.hci_conn** %6, align 8
  br label %96

29:                                               ; preds = %5
  %30 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev* %30, i32* %31, i64 %32)
  store %struct.hci_conn* %33, %struct.hci_conn** %12, align 8
  %34 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %35 = icmp ne %struct.hci_conn* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %38 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %45 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %36
  br label %92

47:                                               ; preds = %29
  %48 = call i32 @BT_DBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %50 = load i32, i32* @LE_LINK, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @HCI_ROLE_MASTER, align 4
  %53 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %49, i32 %50, i32* %51, i32 %52)
  store %struct.hci_conn* %53, %struct.hci_conn** %12, align 8
  %54 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %55 = icmp ne %struct.hci_conn* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  %59 = call %struct.hci_conn* @ERR_PTR(i32 %58)
  store %struct.hci_conn* %59, %struct.hci_conn** %6, align 8
  br label %96

60:                                               ; preds = %47
  %61 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @hci_explicit_conn_params_set(%struct.hci_dev* %61, i32* %62, i64 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  %69 = call %struct.hci_conn* @ERR_PTR(i32 %68)
  store %struct.hci_conn* %69, %struct.hci_conn** %6, align 8
  br label %96

70:                                               ; preds = %60
  %71 = load i32, i32* @BT_CONNECT, align 4
  %72 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %73 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @HCI_CONN_SCANNING, align 4
  %75 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %76 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %75, i32 0, i32 4
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %80 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %79, i32 0, i32 3
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @BT_SECURITY_LOW, align 4
  %82 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %83 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %86 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %89 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %91 = call i32 @hci_update_background_scan(%struct.hci_dev* %90)
  br label %92

92:                                               ; preds = %70, %46
  %93 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  %94 = call i32 @hci_conn_hold(%struct.hci_conn* %93)
  %95 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  store %struct.hci_conn* %95, %struct.hci_conn** %6, align 8
  br label %96

96:                                               ; preds = %92, %66, %56, %25, %21
  %97 = load %struct.hci_conn*, %struct.hci_conn** %6, align 8
  ret %struct.hci_conn* %97
}

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @lmp_le_capable(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @ERR_PTR(i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_le(%struct.hci_dev*, i32*, i64) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local %struct.hci_conn* @hci_conn_add(%struct.hci_dev*, i32, i32*, i32) #1

declare dso_local i64 @hci_explicit_conn_params_set(%struct.hci_dev*, i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_update_background_scan(%struct.hci_dev*) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
