; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_srej_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_send_srej_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.l2cap_ctrl = type { i32, i64, i32 }

@.str = private unnamed_addr constant [18 x i8] c"chan %p, txseq %u\00", align 1
@L2CAP_SUPER_SREJ = common dso_local global i32 0, align 4
@L2CAP_SEQ_LIST_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i64)* @l2cap_send_srej_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_srej_list(%struct.l2cap_chan* %0, i64 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.l2cap_ctrl, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %8, i64 %9)
  %11 = call i32 @memset(%struct.l2cap_ctrl* %5, i32 0, i32 24)
  %12 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %5, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @L2CAP_SUPER_SREJ, align 4
  %14 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %5, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %40, %2
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 0
  %22 = call i64 @l2cap_seq_list_pop(%struct.TYPE_3__* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @L2CAP_SEQ_LIST_CLEAR, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %19
  br label %47

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.l2cap_ctrl, %struct.l2cap_ctrl* %5, i32 0, i32 1
  store i64 %32, i64* %33, align 8
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %35 = call i32 @l2cap_send_sframe(%struct.l2cap_chan* %34, %struct.l2cap_ctrl* %5)
  %36 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %37 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %36, i32 0, i32 0
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @l2cap_seq_list_append(%struct.TYPE_3__* %37, i64 %38)
  br label %40

40:                                               ; preds = %31
  %41 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %42 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %19, label %47

47:                                               ; preds = %40, %30
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i64) #1

declare dso_local i32 @memset(%struct.l2cap_ctrl*, i32, i32) #1

declare dso_local i64 @l2cap_seq_list_pop(%struct.TYPE_3__*) #1

declare dso_local i32 @l2cap_send_sframe(%struct.l2cap_chan*, %struct.l2cap_ctrl*) #1

declare dso_local i32 @l2cap_seq_list_append(%struct.TYPE_3__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
