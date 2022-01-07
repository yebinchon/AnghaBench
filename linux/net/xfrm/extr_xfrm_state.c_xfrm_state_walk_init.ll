; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_walk_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_walk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state_walk = type { %struct.xfrm_address_filter*, i64, i32, i32, i32 }
%struct.xfrm_address_filter = type { i32 }

@XFRM_STATE_DEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_state_walk_init(%struct.xfrm_state_walk* %0, i32 %1, %struct.xfrm_address_filter* %2) #0 {
  %4 = alloca %struct.xfrm_state_walk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_address_filter*, align 8
  store %struct.xfrm_state_walk* %0, %struct.xfrm_state_walk** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.xfrm_address_filter* %2, %struct.xfrm_address_filter** %6, align 8
  %7 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %4, align 8
  %8 = getelementptr inbounds %struct.xfrm_state_walk, %struct.xfrm_state_walk* %7, i32 0, i32 4
  %9 = call i32 @INIT_LIST_HEAD(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %4, align 8
  %12 = getelementptr inbounds %struct.xfrm_state_walk, %struct.xfrm_state_walk* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @XFRM_STATE_DEAD, align 4
  %14 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %4, align 8
  %15 = getelementptr inbounds %struct.xfrm_state_walk, %struct.xfrm_state_walk* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %4, align 8
  %17 = getelementptr inbounds %struct.xfrm_state_walk, %struct.xfrm_state_walk* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %6, align 8
  %19 = load %struct.xfrm_state_walk*, %struct.xfrm_state_walk** %4, align 8
  %20 = getelementptr inbounds %struct.xfrm_state_walk, %struct.xfrm_state_walk* %19, i32 0, i32 0
  store %struct.xfrm_address_filter* %18, %struct.xfrm_address_filter** %20, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
