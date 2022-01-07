; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_finish_move.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_finish_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.TYPE_9__*, %struct.TYPE_8__*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@L2CAP_RX_STATE_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_chan*)* @l2cap_finish_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_finish_move(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %3 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %4 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %3)
  %5 = load i32, i32* @L2CAP_RX_STATE_RECV, align 4
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 8
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %9 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %14 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 0
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  store i32 %19, i32* %23, align 8
  br label %38

24:                                               ; preds = %1
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 0
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 8
  br label %38

38:                                               ; preds = %24, %12
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %40 = call i32 @l2cap_resegment(%struct.l2cap_chan* %39)
  ret i32 %40
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_resegment(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
