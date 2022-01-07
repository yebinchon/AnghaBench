; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventpoll = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.epitem = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.file* }
%struct.file = type { i32 }

@epi_rcu_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventpoll*, %struct.epitem*)* @ep_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_remove(%struct.eventpoll* %0, %struct.epitem* %1) #0 {
  %3 = alloca %struct.eventpoll*, align 8
  %4 = alloca %struct.epitem*, align 8
  %5 = alloca %struct.file*, align 8
  store %struct.eventpoll* %0, %struct.eventpoll** %3, align 8
  store %struct.epitem* %1, %struct.epitem** %4, align 8
  %6 = load %struct.epitem*, %struct.epitem** %4, align 8
  %7 = getelementptr inbounds %struct.epitem, %struct.epitem* %6, i32 0, i32 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.file*, %struct.file** %8, align 8
  store %struct.file* %9, %struct.file** %5, align 8
  %10 = call i32 (...) @lockdep_assert_irqs_enabled()
  %11 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %12 = load %struct.epitem*, %struct.epitem** %4, align 8
  %13 = call i32 @ep_unregister_pollwait(%struct.eventpoll* %11, %struct.epitem* %12)
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.epitem*, %struct.epitem** %4, align 8
  %18 = getelementptr inbounds %struct.epitem, %struct.epitem* %17, i32 0, i32 3
  %19 = call i32 @list_del_rcu(i32* %18)
  %20 = load %struct.file*, %struct.file** %5, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.epitem*, %struct.epitem** %4, align 8
  %24 = getelementptr inbounds %struct.epitem, %struct.epitem* %23, i32 0, i32 2
  %25 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %26 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %25, i32 0, i32 2
  %27 = call i32 @rb_erase_cached(i32* %24, i32* %26)
  %28 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %29 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %28, i32 0, i32 1
  %30 = call i32 @write_lock_irq(i32* %29)
  %31 = load %struct.epitem*, %struct.epitem** %4, align 8
  %32 = call i64 @ep_is_linked(%struct.epitem* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.epitem*, %struct.epitem** %4, align 8
  %36 = getelementptr inbounds %struct.epitem, %struct.epitem* %35, i32 0, i32 1
  %37 = call i32 @list_del_init(i32* %36)
  br label %38

38:                                               ; preds = %34, %2
  %39 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %40 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %39, i32 0, i32 1
  %41 = call i32 @write_unlock_irq(i32* %40)
  %42 = load %struct.epitem*, %struct.epitem** %4, align 8
  %43 = call i32 @ep_wakeup_source(%struct.epitem* %42)
  %44 = call i32 @wakeup_source_unregister(i32 %43)
  %45 = load %struct.epitem*, %struct.epitem** %4, align 8
  %46 = getelementptr inbounds %struct.epitem, %struct.epitem* %45, i32 0, i32 0
  %47 = load i32, i32* @epi_rcu_free, align 4
  %48 = call i32 @call_rcu(i32* %46, i32 %47)
  %49 = load %struct.eventpoll*, %struct.eventpoll** %3, align 8
  %50 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = call i32 @atomic_long_dec(i32* %52)
  ret i32 0
}

declare dso_local i32 @lockdep_assert_irqs_enabled(...) #1

declare dso_local i32 @ep_unregister_pollwait(%struct.eventpoll*, %struct.epitem*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rb_erase_cached(i32*, i32*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i64 @ep_is_linked(%struct.epitem*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @wakeup_source_unregister(i32) #1

declare dso_local i32 @ep_wakeup_source(%struct.epitem*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
