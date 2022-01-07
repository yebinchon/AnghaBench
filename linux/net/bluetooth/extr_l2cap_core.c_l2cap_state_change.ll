; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.l2cap_chan*, i32, i32)* }

@.str = private unnamed_addr constant [17 x i8] c"chan %p %s -> %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i32)* @l2cap_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_state_change(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @state_to_string(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @state_to_string(i32 %10)
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %5, i32 %9, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %15 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %17 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.l2cap_chan*, i32, i32)*, i32 (%struct.l2cap_chan*, i32, i32)** %19, align 8
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 %20(%struct.l2cap_chan* %21, i32 %22, i32 0)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32, i32) #1

declare dso_local i32 @state_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
