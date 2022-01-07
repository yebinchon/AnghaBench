; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_sad_getinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_sad_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.xfrmk_sadinfo = type { i32, i64, i32 }

@xfrm_state_hashmax = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_sad_getinfo(%struct.net* %0, %struct.xfrmk_sadinfo* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.xfrmk_sadinfo*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.xfrmk_sadinfo* %1, %struct.xfrmk_sadinfo** %4, align 8
  %5 = load %struct.net*, %struct.net** %3, align 8
  %6 = getelementptr inbounds %struct.net, %struct.net* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.net*, %struct.net** %3, align 8
  %10 = getelementptr inbounds %struct.net, %struct.net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.xfrmk_sadinfo*, %struct.xfrmk_sadinfo** %4, align 8
  %14 = getelementptr inbounds %struct.xfrmk_sadinfo, %struct.xfrmk_sadinfo* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.net*, %struct.net** %3, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = load %struct.xfrmk_sadinfo*, %struct.xfrmk_sadinfo** %4, align 8
  %21 = getelementptr inbounds %struct.xfrmk_sadinfo, %struct.xfrmk_sadinfo* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load i32, i32* @xfrm_state_hashmax, align 4
  %23 = load %struct.xfrmk_sadinfo*, %struct.xfrmk_sadinfo** %4, align 8
  %24 = getelementptr inbounds %struct.xfrmk_sadinfo, %struct.xfrmk_sadinfo* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.net*, %struct.net** %3, align 8
  %26 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
