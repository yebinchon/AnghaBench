; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_get_chan_by_ident.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_get_chan_by_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32 }
%struct.l2cap_conn = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2cap_chan* (%struct.l2cap_conn*, i32)* @l2cap_get_chan_by_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2cap_chan* @l2cap_get_chan_by_ident(%struct.l2cap_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %7 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.l2cap_chan* @__l2cap_get_chan_by_ident(%struct.l2cap_conn* %9, i32 %10)
  store %struct.l2cap_chan* %11, %struct.l2cap_chan** %5, align 8
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %13 = icmp ne %struct.l2cap_chan* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %16 = call i32 @l2cap_chan_lock(%struct.l2cap_chan* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %19 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %18, i32 0, i32 0
  %20 = call i32 @mutex_unlock(i32* %19)
  %21 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  ret %struct.l2cap_chan* %21
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.l2cap_chan* @__l2cap_get_chan_by_ident(%struct.l2cap_conn*, i32) #1

declare dso_local i32 @l2cap_chan_lock(%struct.l2cap_chan*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
