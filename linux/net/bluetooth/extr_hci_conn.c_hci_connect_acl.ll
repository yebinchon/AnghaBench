; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_connect_acl.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_connect_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i8*, i8*, i32 }
%struct.hci_dev = type { i32 }

@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_ROLE_MASTER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i64 0, align 8
@BT_CLOSED = common dso_local global i64 0, align 8
@BT_SECURITY_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hci_conn* @hci_connect_acl(%struct.hci_dev* %0, i32* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.hci_conn*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %12 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %13 = call i32 @hci_dev_test_flag(%struct.hci_dev* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %4
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = call i64 @lmp_bredr_capable(%struct.hci_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @ECONNREFUSED, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.hci_conn* @ERR_PTR(i32 %21)
  store %struct.hci_conn* %22, %struct.hci_conn** %5, align 8
  br label %75

23:                                               ; preds = %15
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.hci_conn* @ERR_PTR(i32 %25)
  store %struct.hci_conn* %26, %struct.hci_conn** %5, align 8
  br label %75

27:                                               ; preds = %4
  %28 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %29 = load i32, i32* @ACL_LINK, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev* %28, i32 %29, i32* %30)
  store %struct.hci_conn* %31, %struct.hci_conn** %10, align 8
  %32 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %33 = icmp ne %struct.hci_conn* %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %27
  %35 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %36 = load i32, i32* @ACL_LINK, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @HCI_ROLE_MASTER, align 4
  %39 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %35, i32 %36, i32* %37, i32 %38)
  store %struct.hci_conn* %39, %struct.hci_conn** %10, align 8
  %40 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %41 = icmp ne %struct.hci_conn* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.hci_conn* @ERR_PTR(i32 %44)
  store %struct.hci_conn* %45, %struct.hci_conn** %5, align 8
  br label %75

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %27
  %48 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %49 = call i32 @hci_conn_hold(%struct.hci_conn* %48)
  %50 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %51 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BT_OPEN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @BT_CLOSED, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55, %47
  %62 = load i32, i32* @BT_SECURITY_LOW, align 4
  %63 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %64 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %67 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %70 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  %72 = call i32 @hci_acl_create_connection(%struct.hci_conn* %71)
  br label %73

73:                                               ; preds = %61, %55
  %74 = load %struct.hci_conn*, %struct.hci_conn** %10, align 8
  store %struct.hci_conn* %74, %struct.hci_conn** %5, align 8
  br label %75

75:                                               ; preds = %73, %42, %23, %19
  %76 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  ret %struct.hci_conn* %76
}

declare dso_local i32 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @lmp_bredr_capable(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @ERR_PTR(i32) #1

declare dso_local %struct.hci_conn* @hci_conn_hash_lookup_ba(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.hci_conn* @hci_conn_add(%struct.hci_dev*, i32, i32*, i32) #1

declare dso_local i32 @hci_conn_hold(%struct.hci_conn*) #1

declare dso_local i32 @hci_acl_create_connection(%struct.hci_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
