; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_handle_send_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/hci/extr_llc_shdlc.c_llc_shdlc_handle_send_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llc_shdlc = type { i32, i32, i64, i32, i32, i32 (i32, %struct.sk_buff*)*, i32, i32, i32, %struct.TYPE_3__, i32, %struct.TYPE_4__, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [56 x i8] c"sendQlen=%d ns=%d dnr=%d rnr=%s w_room=%d unackQlen=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Stopped T1(send ack)\0A\00", align 1
@SHDLC_CONTROL_HEAD_I = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Sending I-Frame %d, waiting to rcv %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"shdlc frame written\00", align 1
@jiffies = common dso_local global i64 0, align 8
@SHDLC_T2_VALUE_MS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Started T2 (retransmit)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llc_shdlc*)* @llc_shdlc_handle_send_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llc_shdlc_handle_send_queue(%struct.llc_shdlc* %0) #0 {
  %2 = alloca %struct.llc_shdlc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.llc_shdlc* %0, %struct.llc_shdlc** %2, align 8
  %6 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %7 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %1
  %12 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %13 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %17 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %20 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %23 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %28 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %29 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %32 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %35 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @llc_shdlc_w_used(i32 %33, i32 %36)
  %38 = sub nsw i64 %30, %37
  %39 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %40 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18, i32 %21, i8* %27, i64 %38, i64 %42)
  br label %44

44:                                               ; preds = %11, %1
  br label %45

45:                                               ; preds = %152, %44
  %46 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %47 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %46, i32 0, i32 11
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %53 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %57 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %62 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br label %65

65:                                               ; preds = %60, %51, %45
  %66 = phi i1 [ false, %51 ], [ false, %45 ], [ %64, %60 ]
  br i1 %66, label %67, label %153

67:                                               ; preds = %65
  %68 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %69 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %67
  %73 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %74 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %73, i32 0, i32 12
  %75 = call i32 @del_timer_sync(i32* %74)
  %76 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %77 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %76, i32 0, i32 3
  store i32 0, i32* %77, align 8
  %78 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %72, %67
  %80 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %81 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %80, i32 0, i32 11
  %82 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_4__* %81)
  store %struct.sk_buff* %82, %struct.sk_buff** %3, align 8
  %83 = load i32, i32* @SHDLC_CONTROL_HEAD_I, align 4
  %84 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %85 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %86, 3
  %88 = or i32 %83, %87
  %89 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %90 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %88, %91
  %93 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %94 = call i64 @skb_push(%struct.sk_buff* %93, i32 1)
  %95 = inttoptr i64 %94 to i32*
  store i32 %92, i32* %95, align 4
  %96 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %97 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %100 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %98, i32 %101)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %104 = call i32 @SHDLC_DUMP_SKB(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), %struct.sk_buff* %103)
  %105 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %106 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %105, i32 0, i32 5
  %107 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %106, align 8
  %108 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %109 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %112 = call i32 %107(i32 %110, %struct.sk_buff* %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %79
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %118 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %117, i32 0, i32 6
  store i32 %116, i32* %118, align 8
  br label %153

119:                                              ; preds = %79
  %120 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %121 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  %124 = srem i32 %123, 8
  %125 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %126 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load i64, i64* @jiffies, align 8
  store i64 %127, i64* %5, align 8
  %128 = load i64, i64* %5, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i64*
  store i64 %128, i64* %132, align 8
  %133 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %134 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %133, i32 0, i32 9
  %135 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %136 = call i32 @skb_queue_tail(%struct.TYPE_3__* %134, %struct.sk_buff* %135)
  %137 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %138 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %119
  %142 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %143 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %142, i32 0, i32 7
  store i32 1, i32* %143, align 4
  %144 = load %struct.llc_shdlc*, %struct.llc_shdlc** %2, align 8
  %145 = getelementptr inbounds %struct.llc_shdlc, %struct.llc_shdlc* %144, i32 0, i32 8
  %146 = load i64, i64* %5, align 8
  %147 = load i32, i32* @SHDLC_T2_VALUE_MS, align 4
  %148 = call i64 @msecs_to_jiffies(i32 %147)
  %149 = add i64 %146, %148
  %150 = call i32 @mod_timer(i32* %145, i64 %149)
  %151 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %152

152:                                              ; preds = %141, %119
  br label %45

153:                                              ; preds = %115, %65
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @llc_shdlc_w_used(i32, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_4__*) #1

declare dso_local i64 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @SHDLC_DUMP_SKB(i8*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_3__*, %struct.sk_buff*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
