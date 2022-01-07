; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_start_connection.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_start_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"chan %p AMP capable: discover AMPs\00", align 1
@LE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_start_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_start_connection(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %3 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %4 = call i64 @__amp_capable(%struct.l2cap_chan* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %8 = call i32 @BT_DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %7)
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %10 = call i32 @a2mp_discover_amp(%struct.l2cap_chan* %9)
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LE_LINK, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %23 = call i32 @l2cap_le_start(%struct.l2cap_chan* %22)
  br label %27

24:                                               ; preds = %11
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %26 = call i32 @l2cap_send_conn_req(%struct.l2cap_chan* %25)
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %6
  ret void
}

declare dso_local i64 @__amp_capable(%struct.l2cap_chan*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i32 @a2mp_discover_amp(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_le_start(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_send_conn_req(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
