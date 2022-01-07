; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_check_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_sc_check_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i64, i32, %struct.l2cap_conn* }
%struct.l2cap_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@REQ_PASSKEY = common dso_local global i64 0, align 8
@DSP_PASSKEY = common dso_local global i64 0, align 8
@SMP_CMD_PAIRING_CONFIRM = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_chan*)* @sc_check_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc_check_confirm(%struct.smp_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smp_chan*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  store %struct.smp_chan* %0, %struct.smp_chan** %3, align 8
  %5 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %6 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %5, i32 0, i32 2
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %6, align 8
  store %struct.l2cap_conn* %7, %struct.l2cap_conn** %4, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %10 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REQ_PASSKEY, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %16 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DSP_PASSKEY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14, %1
  %21 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %22 = load i32, i32* @SMP_CMD_PAIRING_CONFIRM, align 4
  %23 = call i32 @sc_passkey_round(%struct.smp_chan* %21, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %42

24:                                               ; preds = %14
  %25 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %26 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %24
  %32 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %33 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %34 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %35 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @smp_send_cmd(%struct.l2cap_conn* %32, i32 %33, i32 4, i32 %36)
  %38 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %39 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %40 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %38, i32 %39)
  br label %41

41:                                               ; preds = %31, %24
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @sc_passkey_round(%struct.smp_chan*, i32) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, i32) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
