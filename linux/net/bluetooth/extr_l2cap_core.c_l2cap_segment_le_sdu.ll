; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_segment_le_sdu.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_segment_le_sdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64 }
%struct.sk_buff_head = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"chan %p, msg %p, len %zu\00", align 1
@L2CAP_SDULEN_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*, %struct.sk_buff_head*, %struct.msghdr*, i64)* @l2cap_segment_le_sdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_segment_le_sdu(%struct.l2cap_chan* %0, %struct.sk_buff_head* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_chan*, align 8
  %7 = alloca %struct.sk_buff_head*, align 8
  %8 = alloca %struct.msghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %6, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %7, align 8
  store %struct.msghdr* %2, %struct.msghdr** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %14 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %13, %struct.msghdr* %14, i64 %15)
  %17 = load i64, i64* %9, align 8
  store i64 %17, i64* %12, align 8
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @L2CAP_SDULEN_SIZE, align 8
  %22 = sub i64 %20, %21
  store i64 %22, i64* %11, align 8
  br label %23

23:                                               ; preds = %59, %4
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %23
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %34 = load %struct.msghdr*, %struct.msghdr** %8, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call %struct.sk_buff* @l2cap_create_le_flowctl_pdu(%struct.l2cap_chan* %33, %struct.msghdr* %34, i64 %35, i64 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %10, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = call i64 @IS_ERR(%struct.sk_buff* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %43 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %42)
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = call i32 @PTR_ERR(%struct.sk_buff* %44)
  store i32 %45, i32* %5, align 4
  br label %61

46:                                               ; preds = %32
  %47 = load %struct.sk_buff_head*, %struct.sk_buff_head** %7, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %47, %struct.sk_buff* %48)
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %46
  store i64 0, i64* %12, align 8
  %56 = load i64, i64* @L2CAP_SDULEN_SIZE, align 8
  %57 = load i64, i64* %11, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %55, %46
  br label %23

60:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, %struct.msghdr*, i64) #1

declare dso_local %struct.sk_buff* @l2cap_create_le_flowctl_pdu(%struct.l2cap_chan*, %struct.msghdr*, i64, i64) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
