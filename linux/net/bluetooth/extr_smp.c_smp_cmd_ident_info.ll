; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_ident_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_cmd_ident_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.smp_chan* }
%struct.smp_chan = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.smp_cmd_ident_info = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SMP_INVALID_PARAMS = common dso_local global i32 0, align 4
@SMP_CMD_IDENT_ADDR_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.sk_buff*)* @smp_cmd_ident_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_cmd_ident_info(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.smp_cmd_ident_info*, align 8
  %7 = alloca %struct.l2cap_chan*, align 8
  %8 = alloca %struct.smp_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.smp_cmd_ident_info*
  store %struct.smp_cmd_ident_info* %13, %struct.smp_cmd_ident_info** %6, align 8
  %14 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %15 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %14, i32 0, i32 0
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %15, align 8
  store %struct.l2cap_chan* %16, %struct.l2cap_chan** %7, align 8
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %7, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 0
  %19 = load %struct.smp_chan*, %struct.smp_chan** %18, align 8
  store %struct.smp_chan* %19, %struct.smp_chan** %8, align 8
  %20 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @SMP_INVALID_PARAMS, align 4
  store i32 %27, i32* %3, align 4
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %30 = load i32, i32* @SMP_CMD_IDENT_ADDR_INFO, align 4
  %31 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %29, i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @skb_pull(%struct.sk_buff* %32, i32 4)
  %34 = load %struct.smp_chan*, %struct.smp_chan** %8, align 8
  %35 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.smp_cmd_ident_info*, %struct.smp_cmd_ident_info** %6, align 8
  %38 = getelementptr inbounds %struct.smp_cmd_ident_info, %struct.smp_cmd_ident_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @memcpy(i32 %36, i32 %39, i32 16)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %28, %26
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
