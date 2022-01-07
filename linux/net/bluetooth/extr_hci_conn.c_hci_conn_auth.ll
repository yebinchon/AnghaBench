; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_conn_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i64, i64, i32, i32, i32, i32 }
%struct.hci_cp_auth_requested = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"hcon %p\00", align 1
@HCI_CONN_AUTH = common dso_local global i32 0, align 4
@HCI_CONN_AUTH_PEND = common dso_local global i32 0, align 4
@HCI_OP_AUTH_REQUESTED = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT = common dso_local global i32 0, align 4
@HCI_CONN_REAUTH_PEND = common dso_local global i32 0, align 4
@HCI_CONN_ENCRYPT_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*, i64, i64)* @hci_conn_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_conn_auth(%struct.hci_conn* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hci_cp_auth_requested, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %9)
  %11 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %12 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %18 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %23 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %29 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %38

30:                                               ; preds = %20
  %31 = load i32, i32* @HCI_CONN_AUTH, align 4
  %32 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %33 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %32, i32 0, i32 3
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %83

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %26
  %39 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %40 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @HCI_CONN_AUTH_PEND, align 4
  %51 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %52 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %51, i32 0, i32 3
  %53 = call i32 @test_and_set_bit(i32 %50, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %82, label %55

55:                                               ; preds = %38
  %56 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = getelementptr inbounds %struct.hci_cp_auth_requested, %struct.hci_cp_auth_requested* %8, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %62 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @HCI_OP_AUTH_REQUESTED, align 4
  %65 = call i32 @hci_send_cmd(i32 %63, i32 %64, i32 4, %struct.hci_cp_auth_requested* %8)
  %66 = load i32, i32* @HCI_CONN_ENCRYPT, align 4
  %67 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %68 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %67, i32 0, i32 3
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %55
  %72 = load i32, i32* @HCI_CONN_REAUTH_PEND, align 4
  %73 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %74 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %73, i32 0, i32 3
  %75 = call i32 @set_bit(i32 %72, i32* %74)
  br label %81

76:                                               ; preds = %55
  %77 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %78 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %79 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %78, i32 0, i32 3
  %80 = call i32 @set_bit(i32 %77, i32* %79)
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %38
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %36
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hci_send_cmd(i32, i32, i32, %struct.hci_cp_auth_requested*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
