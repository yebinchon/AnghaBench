; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_txwin_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_txwin_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i64, i64, i64, i32, i32 }

@L2CAP_DEFAULT_TX_WINDOW = common dso_local global i64 0, align 8
@FLAG_EXT_CTRL = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_EXT_WINDOW = common dso_local global i64 0, align 8
@u16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @l2cap_txwin_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_txwin_setup(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %3 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %4 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @L2CAP_DEFAULT_TX_WINDOW, align 8
  %7 = icmp sgt i64 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %10 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @__l2cap_ews_supported(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load i32, i32* @FLAG_EXT_CTRL, align 4
  %16 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %17 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %16, i32 0, i32 3
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load i64, i64* @L2CAP_DEFAULT_EXT_WINDOW, align 8
  %20 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %21 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %20, i32 0, i32 2
  store i64 %19, i64* %21, align 8
  br label %34

22:                                               ; preds = %8, %1
  %23 = load i32, i32* @u16, align 4
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %25 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @L2CAP_DEFAULT_TX_WINDOW, align 8
  %28 = call i64 @min_t(i32 %23, i64 %26, i64 %27)
  %29 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %30 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* @L2CAP_DEFAULT_TX_WINDOW, align 8
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %33 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %22, %14
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %36 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %39 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  ret void
}

declare dso_local i64 @__l2cap_ews_supported(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @min_t(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
