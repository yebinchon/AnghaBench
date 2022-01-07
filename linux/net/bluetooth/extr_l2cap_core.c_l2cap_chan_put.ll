; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"chan %p orig refcnt %d\00", align 1
@l2cap_chan_destroy = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cap_chan_put(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %3 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %4 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %5 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %4, i32 0, i32 0
  %6 = call i32 @kref_read(i32* %5)
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %3, i32 %6)
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %9 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %8, i32 0, i32 0
  %10 = load i32, i32* @l2cap_chan_destroy, align 4
  %11 = call i32 @kref_put(i32* %9, i32 %10)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32) #1

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
