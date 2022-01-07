; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_pairing_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_pairing_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.TYPE_2__*, %struct.l2cap_chan* }
%struct.TYPE_2__ = type { i64 }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"conn %p %s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"slave\00", align 1
@SMP_INVALID_PARAMS = common dso_local global i32 0, align 4
@SMP_FLAG_SC = common dso_local global i32 0, align 4
@SMP_FLAG_REMOTE_PK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unexpected SMP Pairing Confirm\00", align 1
@SMP_CMD_PAIRING_RANDOM = common dso_local global i32 0, align 4
@SMP_FLAG_TK_VALID = common dso_local global i32 0, align 4
@SMP_FLAG_CFM_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_pairing_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_cmd_pairing_confirm(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca %struct.smp_chan*, align 8
  %8 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %10 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %9, i32 0, i32 1
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %10, align 8
  store %struct.l2cap_chan* %11, %struct.l2cap_chan** %6, align 8
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 0
  %14 = load %struct.smp_chan*, %struct.smp_chan** %13, align 8
  store %struct.smp_chan* %14, %struct.smp_chan** %7, align 8
  %15 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %16 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %17 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %24 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.l2cap_conn* %15, i8* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @SMP_INVALID_PARAMS, align 4
  store i32 %31, i32* %3, align 4
  br label %96

32:                                               ; preds = %2
  %33 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %34 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @memcpy(i32 %35, i32 %38, i32 4)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_pull(%struct.sk_buff* %40, i32 4)
  %42 = load i32, i32* @SMP_FLAG_SC, align 4
  %43 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %44 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %43, i32 0, i32 0
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %32
  %48 = load i32, i32* @SMP_FLAG_REMOTE_PK, align 4
  %49 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %50 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %49, i32 0, i32 0
  %51 = call i64 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %55 = call i32 @sc_check_confirm(%struct.smp_chan* %54)
  store i32 %55, i32* %3, align 4
  br label %96

56:                                               ; preds = %47
  %57 = call i32 @BT_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %59 = call i32 @fixup_sc_false_positive(%struct.smp_chan* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %96

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %32
  %66 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %67 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %74 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %75 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %76 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @smp_send_cmd(%struct.l2cap_conn* %73, i32 %74, i32 4, i32 %77)
  %79 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %80 = load i32, i32* @SMP_CMD_PAIRING_RANDOM, align 4
  %81 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %79, i32 %80)
  store i32 0, i32* %3, align 4
  br label %96

82:                                               ; preds = %65
  %83 = load i32, i32* @SMP_FLAG_TK_VALID, align 4
  %84 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %85 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %84, i32 0, i32 0
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %90 = call i32 @smp_confirm(%struct.smp_chan* %89)
  store i32 %90, i32* %3, align 4
  br label %96

91:                                               ; preds = %82
  %92 = load i32, i32* @SMP_FLAG_CFM_PENDING, align 4
  %93 = load %struct.smp_chan*, %struct.smp_chan** %7, align 8
  %94 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %93, i32 0, i32 0
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %91, %88, %72, %62, %53, %30
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_conn*, i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sc_check_confirm(%struct.smp_chan*) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @fixup_sc_false_positive(%struct.smp_chan*) #1

declare dso_local i32 @smp_send_cmd(%struct.l2cap_conn*, i32, i32, i32) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

declare dso_local i32 @smp_confirm(%struct.smp_chan*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
