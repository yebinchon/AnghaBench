; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_ltk_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_ltk_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i32, i32, i32, i32, i32, i32 }
%struct.smp_ltk = type { i32, i32, i32, i32 }

@HCI_CONN_ENCRYPT_PEND = common dso_local global i32 0, align 4
@HCI_CONN_STK_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, i64)* @smp_ltk_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_ltk_encrypt(%struct.l2cap_conn* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.smp_ltk*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %9 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %8, i32 0, i32 0
  %10 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  store %struct.hci_conn* %10, %struct.hci_conn** %7, align 8
  %11 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %12 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %15 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %14, i32 0, i32 4
  %16 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %17 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %20 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.smp_ltk* @hci_find_ltk(i32 %13, i32* %15, i32 %18, i32 %21)
  store %struct.smp_ltk* %22, %struct.smp_ltk** %6, align 8
  %23 = load %struct.smp_ltk*, %struct.smp_ltk** %6, align 8
  %24 = icmp ne %struct.smp_ltk* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

26:                                               ; preds = %2
  %27 = load %struct.smp_ltk*, %struct.smp_ltk** %6, align 8
  %28 = call i64 @smp_ltk_sec_level(%struct.smp_ltk* %27)
  %29 = load i64, i64* %5, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %63

32:                                               ; preds = %26
  %33 = load i32, i32* @HCI_CONN_ENCRYPT_PEND, align 4
  %34 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 0
  %36 = call i64 @test_and_set_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %63

39:                                               ; preds = %32
  %40 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %41 = load %struct.smp_ltk*, %struct.smp_ltk** %6, align 8
  %42 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.smp_ltk*, %struct.smp_ltk** %6, align 8
  %45 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.smp_ltk*, %struct.smp_ltk** %6, align 8
  %48 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.smp_ltk*, %struct.smp_ltk** %6, align 8
  %51 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @hci_le_start_enc(%struct.hci_conn* %40, i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.smp_ltk*, %struct.smp_ltk** %6, align 8
  %55 = getelementptr inbounds %struct.smp_ltk, %struct.smp_ltk* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %58 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @HCI_CONN_STK_ENCRYPT, align 4
  %60 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %61 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %60, i32 0, i32 0
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %39, %38, %31, %25
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.smp_ltk* @hci_find_ltk(i32, i32*, i32, i32) #1

declare dso_local i64 @smp_ltk_sec_level(%struct.smp_ltk*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hci_le_start_enc(%struct.hci_conn*, i32, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
