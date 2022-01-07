; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_flowctl_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_le_flowctl_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Sent %d credits %u queued %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_le_flowctl_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_le_flowctl_send(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %5 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %4)
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %8 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 0
  %14 = call i32 @skb_queue_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i1 [ false, %6 ], [ %16, %11 ]
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %22 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %21, i32 0, i32 0
  %23 = call i32 @skb_dequeue(i32* %22)
  %24 = call i32 @l2cap_do_send(%struct.l2cap_chan* %20, i32 %23)
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %6

31:                                               ; preds = %17
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %34 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 0
  %38 = call i32 @skb_queue_len(i32* %37)
  %39 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @l2cap_do_send(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
