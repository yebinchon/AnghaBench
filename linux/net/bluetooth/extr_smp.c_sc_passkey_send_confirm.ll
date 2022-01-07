; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_passkey_send_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_passkey_send_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32, i32, i32, i32, i32, %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.hci_conn* }
%struct.hci_conn = type { i32 }
%struct.smp_cmd_pairing_confirm = type { i32 }

@SMP_UNSPECIFIED = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_chan*)* @sc_passkey_send_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_passkey_send_confirm(%struct.smp_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smp_chan*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.smp_cmd_pairing_confirm, align 4
  %7 = alloca i32, align 4
  store %struct.smp_chan* %0, %struct.smp_chan** %3, align 8
  %8 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %9 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %8, i32 0, i32 5
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %9, align 8
  store %struct.l2cap_conn* %10, %struct.l2cap_conn** %4, align 8
  %11 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %12 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %11, i32 0, i32 0
  %13 = load %struct.hci_conn*, %struct.hci_conn** %12, align 8
  store %struct.hci_conn* %13, %struct.hci_conn** %5, align 8
  %14 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  %15 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %18 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = ashr i32 %16, %19
  %21 = and i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, 128
  store i32 %23, i32* %7, align 4
  %24 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %25 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_random_bytes(i32 %26, i32 4)
  %28 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %29 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %32 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %35 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %38 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds %struct.smp_cmd_pairing_confirm, %struct.smp_cmd_pairing_confirm* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @smp_f4(i32 %30, i32 %33, i32 %36, i32 %39, i32 %40, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %1
  %46 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %1
  %48 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %49 = load i32, i32* @SMP_CMD_PAIRING_CONFIRM, align 4
  %50 = call i32 @smp_send_cmd(%struct.l2cap_conn* %48, i32 %49, i32 4, %struct.smp_cmd_pairing_confirm* %6)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %45
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i64 @smp_f4(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, %struct.smp_cmd_pairing_confirm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
