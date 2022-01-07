; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_find_acq.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_find_acq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xfrm_mark = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfrm_state* @xfrm_find_acq(%struct.net* %0, %struct.xfrm_mark* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32 %8, i16 zeroext %9) #0 {
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.xfrm_mark*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i16, align 2
  %21 = alloca %struct.xfrm_state*, align 8
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.xfrm_mark* %1, %struct.xfrm_mark** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i16 %9, i16* %20, align 2
  %22 = load %struct.net*, %struct.net** %11, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.net*, %struct.net** %11, align 8
  %27 = load %struct.xfrm_mark*, %struct.xfrm_mark** %12, align 8
  %28 = load i16, i16* %20, align 2
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32*, i32** %17, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = load i32, i32* %19, align 4
  %36 = call %struct.xfrm_state* @__find_acq_core(%struct.net* %26, %struct.xfrm_mark* %27, i16 zeroext %28, i32 %29, i32 %30, i32 %31, i32 %32, i32* %33, i32* %34, i32 %35)
  store %struct.xfrm_state* %36, %struct.xfrm_state** %21, align 8
  %37 = load %struct.net*, %struct.net** %11, align 8
  %38 = getelementptr inbounds %struct.net, %struct.net* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %21, align 8
  ret %struct.xfrm_state* %41
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.xfrm_state* @__find_acq_core(%struct.net*, %struct.xfrm_mark*, i16 zeroext, i32, i32, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
