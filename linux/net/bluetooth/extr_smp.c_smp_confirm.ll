; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { %struct.l2cap_conn*, i32, i32, i32, i32, i32 }
%struct.l2cap_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }
%struct.smp_cmd_pairing_confirm = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"conn %p\00", align 1
@SMP_UNSPECIFIED = common dso_local global i32 0, align 4
@SMP_FLAG_CFM_PENDING = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_CONFIRM = common dso_local global i32 0, align 4
@SMP_CMD_PAIRING_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smp_chan*)* @smp_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_confirm(%struct.smp_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smp_chan*, align 8
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.smp_cmd_pairing_confirm, align 4
  %6 = alloca i32, align 4
  store %struct.smp_chan* %0, %struct.smp_chan** %3, align 8
  %7 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %8 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %7, i32 0, i32 0
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %8, align 8
  store %struct.l2cap_conn* %9, %struct.l2cap_conn** %4, align 8
  %10 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %11 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %10)
  %12 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %13 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %16 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %19 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %22 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %25 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %30 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %34 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %39 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.smp_cmd_pairing_confirm, %struct.smp_cmd_pairing_confirm* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @smp_c1(i32 %14, i32 %17, i32 %20, i32 %23, i32 %28, i32* %32, i32 %37, i32* %41, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @SMP_UNSPECIFIED, align 4
  store i32 %48, i32* %2, align 4
  br label %74

49:                                               ; preds = %1
  %50 = load i32, i32* @SMP_FLAG_CFM_PENDING, align 4
  %51 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %52 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %51, i32 0, i32 1
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  %54 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %55 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %54, i32 0, i32 0
  %56 = load %struct.l2cap_conn*, %struct.l2cap_conn** %55, align 8
  %57 = load i32, i32* @SMP_CMD_PAIRING_CONFIRM, align 4
  %58 = call i32 @smp_send_cmd(%struct.l2cap_conn* %56, i32 %57, i32 4, %struct.smp_cmd_pairing_confirm* %5)
  %59 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %60 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %49
  %66 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %67 = load i32, i32* @SMP_CMD_PAIRING_CONFIRM, align 4
  %68 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %66, i32 %67)
  br label %73

69:                                               ; preds = %49
  %70 = load %struct.smp_chan*, %struct.smp_chan** %3, align 8
  %71 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %72 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %65
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %47
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*) #1

declare dso_local i32 @smp_c1(i32, i32, i32, i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, %struct.smp_cmd_pairing_confirm*) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
