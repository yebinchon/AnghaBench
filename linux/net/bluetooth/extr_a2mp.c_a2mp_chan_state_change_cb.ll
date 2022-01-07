; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_chan_state_change_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_a2mp.c_a2mp_chan_state_change_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, %struct.amp_mgr* }
%struct.amp_mgr = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"chan %p state %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*, i32, i32)* @a2mp_chan_state_change_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a2mp_chan_state_change_cb(%struct.l2cap_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.l2cap_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amp_mgr*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %9 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %8, i32 0, i32 1
  %10 = load %struct.amp_mgr*, %struct.amp_mgr** %9, align 8
  store %struct.amp_mgr* %10, %struct.amp_mgr** %7, align 8
  %11 = load %struct.amp_mgr*, %struct.amp_mgr** %7, align 8
  %12 = icmp ne %struct.amp_mgr* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %30

14:                                               ; preds = %3
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @state_to_string(i32 %16)
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %15, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %4, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %30 [
    i32 128, label %23
  ]

23:                                               ; preds = %14
  %24 = load %struct.amp_mgr*, %struct.amp_mgr** %7, align 8
  %25 = icmp ne %struct.amp_mgr* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.amp_mgr*, %struct.amp_mgr** %7, align 8
  %28 = call i32 @amp_mgr_put(%struct.amp_mgr* %27)
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %13, %14, %29
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32) #1

declare dso_local i32 @state_to_string(i32) #1

declare dso_local i32 @amp_mgr_put(%struct.amp_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
