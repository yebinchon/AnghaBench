; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_connect_sco.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_connect_sco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i32, i32, %struct.hci_conn* }
%struct.hci_dev = type { i32 }

@BT_SECURITY_LOW = common dso_local global i32 0, align 4
@HCI_AT_NO_BONDING = common dso_local global i32 0, align 4
@HCI_ROLE_MASTER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@BT_OPEN = common dso_local global i64 0, align 8
@BT_CLOSED = common dso_local global i64 0, align 8
@HCI_CONN_POWER_SAVE = common dso_local global i32 0, align 4
@BT_POWER_FORCE_ACTIVE_ON = common dso_local global i32 0, align 4
@HCI_CONN_MODE_CHANGE_PEND = common dso_local global i32 0, align 4
@HCI_CONN_SCO_SETUP_PEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hci_conn* @hci_connect_sco(%struct.hci_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hci_conn*, align 8
  %11 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* @BT_SECURITY_LOW, align 4
  %15 = load i32, i32* @HCI_AT_NO_BONDING, align 4
  %16 = call %struct.hci_conn* @hci_connect_acl(%struct.hci_dev* %12, i32* %13, i32 %14, i32 %15)
  store %struct.hci_conn* %16, %struct.hci_conn** %10, align 8
  %17 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %18 = call i64 @IS_ERR(%struct.hci_conn* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  store %struct.hci_conn* %21, %struct.hci_conn** %5, align 8
  br label %97

22:                                               ; preds = %4
  %23 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %23, i32 %24, i32* %25)
  store %struct.hci_conn* %26, %struct.hci_conn** %11, align 8
  %27 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %28 = icmp ne %struct.hci_conn* %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %22
  %30 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @HCI_ROLE_MASTER, align 4
  %34 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %30, i32 %31, i32* %32, i32 %33)
  store %struct.hci_conn* %34, %struct.hci_conn** %11, align 8
  %35 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %36 = icmp ne %struct.hci_conn* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %39 = call i32 @hci_conn_drop(%struct.hci_conn* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.hci_conn* @ERR_PTR(i32 %41)
  store %struct.hci_conn* %42, %struct.hci_conn** %5, align 8
  br label %97

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %43, %22
  %45 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %46 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %47 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %46, i32 0, i32 3
  store %struct.hci_conn* %45, %struct.hci_conn** %47, align 8
  %48 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %49 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 3
  store %struct.hci_conn* %48, %struct.hci_conn** %50, align 8
  %51 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %52 = call i32 @hci_conn_hold(%struct.hci_conn* %51)
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %55 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BT_CONNECTED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %95

61:                                               ; preds = %44
  %62 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %63 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BT_OPEN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %73, label %67

67:                                               ; preds = %61
  %68 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %69 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @BT_CLOSED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %67, %61
  %74 = load i32, i32* @HCI_CONN_POWER_SAVE, align 4
  %75 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %76 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %75, i32 0, i32 1
  %77 = call i32 @set_bit(i32 %74, i32* %76)
  %78 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %79 = load i32, i32* @BT_POWER_FORCE_ACTIVE_ON, align 4
  %80 = call i32 @hci_conn_enter_active_mode(%struct.hci_conn* %78, i32 %79)
  %81 = load i32, i32* @HCI_CONN_MODE_CHANGE_PEND, align 4
  %82 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %83 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %82, i32 0, i32 1
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %73
  %87 = load i32, i32* @HCI_CONN_SCO_SETUP_PEND, align 4
  %88 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %89 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %88, i32 0, i32 1
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  %91 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  store %struct.hci_conn* %91, %struct.hci_conn** %5, align 8
  br label %97

92:                                               ; preds = %73
  %93 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %94 = call i32 @hci_sco_setup(%struct.hci_conn* %93, i32 0)
  br label %95

95:                                               ; preds = %92, %67, %44
  %96 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  store %struct.hci_conn* %96, %struct.hci_conn** %5, align 8
  br label %97

97:                                               ; preds = %95, %86, %37, %20
  %98 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  ret %struct.hci_conn* %98
}

declare dso_local %struct.hci_conn* @hci_connect_acl(%struct.hci_dev*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.hci_conn*) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.hci_conn* @hci_conn_add(%struct.hci_dev*, i32, i32*, i32) #1

declare dso_local i32 @hci_conn_drop(%struct.hci_conn*) #1

declare dso_local %struct.hci_conn* @ERR_PTR(i32) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hci_conn_enter_active_mode(%struct.hci_conn*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_sco_setup(%struct.hci_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
