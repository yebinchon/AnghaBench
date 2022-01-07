; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_thread.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_session_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ctrl_wait = common dso_local global i32 0, align 4
@hidp_session_wake_function = common dso_local global i32 0, align 4
@intr_wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"session %p\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @hidp_session_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidp_session_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hidp_session*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.hidp_session*
  store %struct.hidp_session* %5, %struct.hidp_session** %3, align 8
  %6 = load i32, i32* @ctrl_wait, align 4
  %7 = load i32, i32* @hidp_session_wake_function, align 4
  %8 = call i32 @DEFINE_WAIT_FUNC(i32 %6, i32 %7)
  %9 = load i32, i32* @intr_wait, align 4
  %10 = load i32, i32* @hidp_session_wake_function, align 4
  %11 = call i32 @DEFINE_WAIT_FUNC(i32 %9, i32 %10)
  %12 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.hidp_session* %12)
  %14 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %15 = call i32 @hidp_session_get(%struct.hidp_session* %14)
  %16 = load i32, i32* @THIS_MODULE, align 4
  %17 = call i32 @__module_get(i32 %16)
  %18 = load i32, i32* @current, align 4
  %19 = call i32 @set_user_nice(i32 %18, i32 -15)
  %20 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %21 = call i32 @hidp_set_timer(%struct.hidp_session* %20)
  %22 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %23 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %22, i32 0, i32 6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @sk_sleep(i32 %26)
  %28 = call i32 @add_wait_queue(i32 %27, i32* @ctrl_wait)
  %29 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %30 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sk_sleep(i32 %33)
  %35 = call i32 @add_wait_queue(i32 %34, i32* @intr_wait)
  %36 = call i32 (...) @smp_mb()
  %37 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %38 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %37, i32 0, i32 5
  %39 = call i32 @atomic_inc(i32* %38)
  %40 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %41 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %40, i32 0, i32 4
  %42 = call i32 @wake_up(i32* %41)
  %43 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %44 = call i32 @hidp_session_run(%struct.hidp_session* %43)
  %45 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %46 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sk_sleep(i32 %49)
  %51 = call i32 @remove_wait_queue(i32 %50, i32* @intr_wait)
  %52 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %53 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sk_sleep(i32 %56)
  %58 = call i32 @remove_wait_queue(i32 %57, i32* @ctrl_wait)
  %59 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %60 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %59, i32 0, i32 2
  %61 = call i32 @wake_up_interruptible(i32* %60)
  %62 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %63 = call i32 @hidp_del_timer(%struct.hidp_session* %62)
  %64 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %65 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %68 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %67, i32 0, i32 0
  %69 = call i32 @l2cap_unregister_user(i32 %66, i32* %68)
  %70 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %71 = call i32 @hidp_session_put(%struct.hidp_session* %70)
  %72 = call i32 @module_put_and_exit(i32 0)
  ret i32 0
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hidp_session*) #1

declare dso_local i32 @hidp_session_get(%struct.hidp_session*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @hidp_set_timer(%struct.hidp_session*) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @hidp_session_run(%struct.hidp_session*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @hidp_del_timer(%struct.hidp_session*) #1

declare dso_local i32 @l2cap_unregister_user(i32, i32*) #1

declare dso_local i32 @hidp_session_put(%struct.hidp_session*) #1

declare dso_local i32 @module_put_and_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
