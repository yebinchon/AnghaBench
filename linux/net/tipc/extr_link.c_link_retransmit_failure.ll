; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_link.c_link_retransmit_failure.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_link.c_link_retransmit_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_link = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Retransmission failure on link <%s>\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"State of link \00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed msg: usr %u, typ %u, len %u, err %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"sqno %u, prev: %x, dest: %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"retr_stamp %d, retr_cnt %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"retrans failure!\00", align 1
@TIPC_DUMP_NONE = common dso_local global i32 0, align 4
@LINK_RESET = common dso_local global i32 0, align 4
@TIPC_LINK_DOWN_EVT = common dso_local global i32 0, align 4
@LINK_FAILURE_EVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tipc_link*, %struct.tipc_link*, i32*)* @link_retransmit_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_retransmit_failure(%struct.tipc_link* %0, %struct.tipc_link* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_link*, align 8
  %6 = alloca %struct.tipc_link*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  store %struct.tipc_link* %0, %struct.tipc_link** %5, align 8
  store %struct.tipc_link* %1, %struct.tipc_link** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %11 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %10, i32 0, i32 1
  %12 = call %struct.sk_buff* @skb_peek(i32* %11)
  store %struct.sk_buff* %12, %struct.sk_buff** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = icmp ne %struct.sk_buff* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %109

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %109

23:                                               ; preds = %16
  %24 = load i32, i32* @jiffies, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %30 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @msecs_to_jiffies(i32 %31)
  %33 = add nsw i64 %28, %32
  %34 = call i32 @time_after(i32 %24, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %109

37:                                               ; preds = %23
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %38)
  store %struct.tipc_msg* %39, %struct.tipc_msg** %9, align 8
  %40 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %41 = call i64 @link_is_bc_sndlink(%struct.tipc_link* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %45 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %48 = call i32 @msg_seqno(%struct.tipc_msg* %47)
  %49 = call i32 @less(i32 %46, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %109

52:                                               ; preds = %43, %37
  %53 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %54 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %58 = call i32 @link_print(%struct.tipc_link* %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %60 = call i32 @msg_user(%struct.tipc_msg* %59)
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %62 = call i32 @msg_type(%struct.tipc_msg* %61)
  %63 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %64 = call i32 @msg_size(%struct.tipc_msg* %63)
  %65 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %66 = call i32 @msg_errcode(%struct.tipc_msg* %65)
  %67 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %62, i32 %64, i32 %66)
  %68 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %69 = call i32 @msg_seqno(%struct.tipc_msg* %68)
  %70 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %71 = call i32 @msg_prevnode(%struct.tipc_msg* %70)
  %72 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %73 = call i32 @msg_destnode(%struct.tipc_msg* %72)
  %74 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %71, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %76 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @jiffies_to_msecs(i64 %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %79, i32 %83)
  %85 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %86 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %85, i32 0, i32 1
  %87 = call i32 @trace_tipc_list_dump(i32* %86, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %89 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %90 = call i32 @trace_tipc_link_dump(%struct.tipc_link* %88, i32 %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %92 = load i32, i32* @TIPC_DUMP_NONE, align 4
  %93 = call i32 @trace_tipc_link_dump(%struct.tipc_link* %91, i32 %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %95 = call i64 @link_is_bc_sndlink(%struct.tipc_link* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %52
  %98 = load i32, i32* @LINK_RESET, align 4
  %99 = load %struct.tipc_link*, %struct.tipc_link** %6, align 8
  %100 = getelementptr inbounds %struct.tipc_link, %struct.tipc_link* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @TIPC_LINK_DOWN_EVT, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %108

103:                                              ; preds = %52
  %104 = load %struct.tipc_link*, %struct.tipc_link** %5, align 8
  %105 = load i32, i32* @LINK_FAILURE_EVT, align 4
  %106 = call i32 @tipc_link_fsm_evt(%struct.tipc_link* %104, i32 %105)
  %107 = load i32*, i32** %7, align 8
  store i32 %106, i32* %107, align 4
  br label %108

108:                                              ; preds = %103, %97
  store i32 1, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %51, %36, %22, %15
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @link_is_bc_sndlink(%struct.tipc_link*) #1

declare dso_local i32 @less(i32, i32) #1

declare dso_local i32 @msg_seqno(%struct.tipc_msg*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @link_print(%struct.tipc_link*, i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @msg_user(%struct.tipc_msg*) #1

declare dso_local i32 @msg_type(%struct.tipc_msg*) #1

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

declare dso_local i32 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_prevnode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_destnode(%struct.tipc_msg*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @trace_tipc_list_dump(i32*, i32, i8*) #1

declare dso_local i32 @trace_tipc_link_dump(%struct.tipc_link*, i32, i8*) #1

declare dso_local i32 @tipc_link_fsm_evt(%struct.tipc_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
