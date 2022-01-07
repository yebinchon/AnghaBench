; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_check_enc_key_size.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_check_enc_key_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.TYPE_2__*, %struct.l2cap_chan* }
%struct.TYPE_2__ = type { %struct.hci_dev* }
%struct.hci_dev = type { i64 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i64 }

@SMP_MIN_ENC_KEY_SIZE = common dso_local global i64 0, align 8
@SMP_ENC_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, i64)* @check_enc_key_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_enc_key_size(%struct.l2cap_conn* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca %struct.smp_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %10 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %9, i32 0, i32 1
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  store %struct.l2cap_chan* %11, %struct.l2cap_chan** %6, align 8
  %12 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %13 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.hci_dev*, %struct.hci_dev** %15, align 8
  store %struct.hci_dev* %16, %struct.hci_dev** %7, align 8
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 0
  %19 = load %struct.smp_chan*, %struct.smp_chan** %18, align 8
  store %struct.smp_chan* %19, %struct.smp_chan** %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %22 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @SMP_MIN_ENC_KEY_SIZE, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %2
  %30 = load i32, i32* @SMP_ENC_KEY_SIZE, align 4
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %34 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
