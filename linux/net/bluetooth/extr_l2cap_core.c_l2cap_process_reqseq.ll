; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_process_reqseq.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_process_reqseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"chan %p, reqseq %u\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"expected_ack_seq %u, unacked_frames %u\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"unacked_frames %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i32)* @l2cap_process_reqseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_process_reqseq(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %8 = ptrtoint %struct.l2cap_chan* %7 to i64
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %8, i32 %9)
  %11 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %12 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  br label %77

22:                                               ; preds = %15
  %23 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %24 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %28 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %26, i64 %29)
  %31 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %32 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %57, %22
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %40 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %39, i32 0, i32 2
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.sk_buff* @l2cap_ertm_seq_in_queue(i32* %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %5, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %48 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %47, i32 0, i32 2
  %49 = call i32 @skb_unlink(%struct.sk_buff* %46, i32* %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @kfree_skb(%struct.sk_buff* %50)
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %53 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %45, %38
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @__next_seq(%struct.l2cap_chan* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  br label %34

61:                                               ; preds = %34
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %64 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %66 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %71 = call i32 @__clear_retrans_timer(%struct.l2cap_chan* %70)
  br label %72

72:                                               ; preds = %69, %61
  %73 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %74 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, i64, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %72, %21
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i64, ...) #1

declare dso_local %struct.sk_buff* @l2cap_ertm_seq_in_queue(i32*, i32) #1

declare dso_local i32 @skb_unlink(%struct.sk_buff*, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__next_seq(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @__clear_retrans_timer(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
