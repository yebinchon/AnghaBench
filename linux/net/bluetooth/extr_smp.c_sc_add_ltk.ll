; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_add_ltk.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_add_ltk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hci_conn* }
%struct.hci_conn = type { i64, i32, i32, i32 }

@SMP_FLAG_DEBUG_KEY = common dso_local global i32 0, align 4
@SMP_LTK_P256_DEBUG = common dso_local global i32 0, align 4
@SMP_LTK_P256 = common dso_local global i32 0, align 4
@BT_SECURITY_FIPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smp_chan*)* @sc_add_ltk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sc_add_ltk(%struct.smp_chan* %0) #0 {
  %2 = alloca %struct.smp_chan*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.smp_chan* %0, %struct.smp_chan** %2, align 8
  %6 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %7 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.hci_conn*, %struct.hci_conn** %9, align 8
  store %struct.hci_conn* %10, %struct.hci_conn** %3, align 8
  %11 = load i32, i32* @SMP_FLAG_DEBUG_KEY, align 4
  %12 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %13 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %12, i32 0, i32 3
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @SMP_LTK_P256_DEBUG, align 4
  store i32 %17, i32* %4, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @SMP_LTK_P256, align 4
  store i32 %19, i32* %4, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %22 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BT_SECURITY_FIPS, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %5, align 4
  br label %28

27:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %30 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %33 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %32, i32 0, i32 2
  %34 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %35 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %40 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %43 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @hci_add_ltk(i32 %31, i32* %33, i32 %36, i32 %37, i32 %38, i32 %41, i32 %44, i32 0, i32 0)
  %46 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %47 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_add_ltk(i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
