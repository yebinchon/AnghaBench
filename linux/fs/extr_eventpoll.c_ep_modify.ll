; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_modify.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventpoll = type { i32, i32, i32, i32 }
%struct.epitem = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.epoll_event = type { i32, i32 }

@EPOLLWAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventpoll*, %struct.epitem*, %struct.epoll_event*)* @ep_modify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_modify(%struct.eventpoll* %0, %struct.epitem* %1, %struct.epoll_event* %2) #0 {
  %4 = alloca %struct.eventpoll*, align 8
  %5 = alloca %struct.epitem*, align 8
  %6 = alloca %struct.epoll_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.eventpoll* %0, %struct.eventpoll** %4, align 8
  store %struct.epitem* %1, %struct.epitem** %5, align 8
  store %struct.epoll_event* %2, %struct.epoll_event** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @lockdep_assert_irqs_enabled()
  %10 = call i32 @init_poll_funcptr(i32* %8, i32* null)
  %11 = load %struct.epoll_event*, %struct.epoll_event** %6, align 8
  %12 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.epitem*, %struct.epitem** %5, align 8
  %15 = getelementptr inbounds %struct.epitem, %struct.epitem* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.epoll_event*, %struct.epoll_event** %6, align 8
  %18 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.epitem*, %struct.epitem** %5, align 8
  %21 = getelementptr inbounds %struct.epitem, %struct.epitem* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load %struct.epitem*, %struct.epitem** %5, align 8
  %24 = getelementptr inbounds %struct.epitem, %struct.epitem* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @EPOLLWAKEUP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.epitem*, %struct.epitem** %5, align 8
  %32 = call i64 @ep_has_wakeup_source(%struct.epitem* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load %struct.epitem*, %struct.epitem** %5, align 8
  %36 = call i32 @ep_create_wakeup_source(%struct.epitem* %35)
  br label %37

37:                                               ; preds = %34, %30
  br label %46

38:                                               ; preds = %3
  %39 = load %struct.epitem*, %struct.epitem** %5, align 8
  %40 = call i64 @ep_has_wakeup_source(%struct.epitem* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.epitem*, %struct.epitem** %5, align 8
  %44 = call i32 @ep_destroy_wakeup_source(%struct.epitem* %43)
  br label %45

45:                                               ; preds = %42, %38
  br label %46

46:                                               ; preds = %45, %37
  %47 = call i32 (...) @smp_mb()
  %48 = load %struct.epitem*, %struct.epitem** %5, align 8
  %49 = call i64 @ep_item_poll(%struct.epitem* %48, i32* %8, i32 1)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %46
  %52 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %53 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %52, i32 0, i32 1
  %54 = call i32 @write_lock_irq(i32* %53)
  %55 = load %struct.epitem*, %struct.epitem** %5, align 8
  %56 = call i32 @ep_is_linked(%struct.epitem* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %51
  %59 = load %struct.epitem*, %struct.epitem** %5, align 8
  %60 = getelementptr inbounds %struct.epitem, %struct.epitem* %59, i32 0, i32 0
  %61 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %62 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %61, i32 0, i32 3
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  %64 = load %struct.epitem*, %struct.epitem** %5, align 8
  %65 = call i32 @ep_pm_stay_awake(%struct.epitem* %64)
  %66 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %67 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %66, i32 0, i32 2
  %68 = call i64 @waitqueue_active(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %58
  %71 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %72 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %71, i32 0, i32 2
  %73 = call i32 @wake_up(i32* %72)
  br label %74

74:                                               ; preds = %70, %58
  %75 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %76 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %75, i32 0, i32 0
  %77 = call i64 @waitqueue_active(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %51
  %84 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %85 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %84, i32 0, i32 1
  %86 = call i32 @write_unlock_irq(i32* %85)
  br label %87

87:                                               ; preds = %83, %46
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load %struct.eventpoll*, %struct.eventpoll** %4, align 8
  %92 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %91, i32 0, i32 0
  %93 = call i32 @ep_poll_safewake(i32* %92)
  br label %94

94:                                               ; preds = %90, %87
  ret i32 0
}

declare dso_local i32 @lockdep_assert_irqs_enabled(...) #1

declare dso_local i32 @init_poll_funcptr(i32*, i32*) #1

declare dso_local i64 @ep_has_wakeup_source(%struct.epitem*) #1

declare dso_local i32 @ep_create_wakeup_source(%struct.epitem*) #1

declare dso_local i32 @ep_destroy_wakeup_source(%struct.epitem*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @ep_item_poll(%struct.epitem*, i32*, i32) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @ep_is_linked(%struct.epitem*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @ep_pm_stay_awake(%struct.epitem*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @ep_poll_safewake(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
