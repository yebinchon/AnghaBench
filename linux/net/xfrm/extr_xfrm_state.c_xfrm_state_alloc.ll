; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c_xfrm_state_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_8__, i32, i32, i32, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { i32 }

@xfrm_state_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@CLOCK_BOOTTIME = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS_SOFT = common dso_local global i32 0, align 4
@xfrm_timer_handler = common dso_local global i32 0, align 4
@xfrm_replay_timer_handler = common dso_local global i32 0, align 4
@XFRM_INF = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfrm_state* @xfrm_state_alloc(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.xfrm_state*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load i32, i32* @xfrm_state_cache, align 4
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = load i32, i32* @__GFP_ZERO, align 4
  %7 = or i32 %5, %6
  %8 = call %struct.xfrm_state* @kmem_cache_alloc(i32 %4, i32 %7)
  store %struct.xfrm_state* %8, %struct.xfrm_state** %3, align 8
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %10 = icmp ne %struct.xfrm_state* %9, null
  br i1 %10, label %11, label %75

11:                                               ; preds = %1
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 13
  %14 = load %struct.net*, %struct.net** %2, align 8
  %15 = call i32 @write_pnet(i32* %13, %struct.net* %14)
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %17 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %16, i32 0, i32 12
  %18 = call i32 @refcount_set(i32* %17, i32 1)
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %20 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %19, i32 0, i32 11
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 10
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %27 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %26, i32 0, i32 9
  %28 = call i32 @INIT_HLIST_NODE(i32* %27)
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 8
  %31 = call i32 @INIT_HLIST_NODE(i32* %30)
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 7
  %34 = call i32 @INIT_HLIST_NODE(i32* %33)
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %36 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %35, i32 0, i32 6
  %37 = load i32, i32* @CLOCK_BOOTTIME, align 4
  %38 = load i32, i32* @HRTIMER_MODE_ABS_SOFT, align 4
  %39 = call i32 @hrtimer_init(%struct.TYPE_8__* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @xfrm_timer_handler, align 4
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 5
  %46 = load i32, i32* @xfrm_replay_timer_handler, align 4
  %47 = call i32 @timer_setup(i32* %45, i32 %46, i32 0)
  %48 = call i32 (...) @ktime_get_real_seconds()
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %50 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load i8*, i8** @XFRM_INF, align 8
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %54 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @XFRM_INF, align 8
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %58 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** @XFRM_INF, align 8
  %61 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %62 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i8* %60, i8** %63, align 8
  %64 = load i8*, i8** @XFRM_INF, align 8
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %69 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %71 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 0
  %74 = call i32 @spin_lock_init(i32* %73)
  br label %75

75:                                               ; preds = %11, %1
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  ret %struct.xfrm_state* %76
}

declare dso_local %struct.xfrm_state* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @write_pnet(i32*, %struct.net*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
