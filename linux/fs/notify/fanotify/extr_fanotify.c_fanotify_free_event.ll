; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify.c_fanotify_free_event.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/fanotify/extr_fanotify.c_fanotify_free_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_event = type { i32 }
%struct.fanotify_event = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@fanotify_perm_event_cachep = common dso_local global i32 0, align 4
@fanotify_event_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsnotify_event*)* @fanotify_free_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fanotify_free_event(%struct.fsnotify_event* %0) #0 {
  %2 = alloca %struct.fsnotify_event*, align 8
  %3 = alloca %struct.fanotify_event*, align 8
  store %struct.fsnotify_event* %0, %struct.fsnotify_event** %2, align 8
  %4 = load %struct.fsnotify_event*, %struct.fsnotify_event** %2, align 8
  %5 = call %struct.fanotify_event* @FANOTIFY_E(%struct.fsnotify_event* %4)
  store %struct.fanotify_event* %5, %struct.fanotify_event** %3, align 8
  %6 = load %struct.fanotify_event*, %struct.fanotify_event** %3, align 8
  %7 = call i64 @fanotify_event_has_path(%struct.fanotify_event* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.fanotify_event*, %struct.fanotify_event** %3, align 8
  %11 = getelementptr inbounds %struct.fanotify_event, %struct.fanotify_event* %10, i32 0, i32 3
  %12 = call i32 @path_put(i32* %11)
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.fanotify_event*, %struct.fanotify_event** %3, align 8
  %15 = call i64 @fanotify_event_has_ext_fh(%struct.fanotify_event* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load %struct.fanotify_event*, %struct.fanotify_event** %3, align 8
  %19 = getelementptr inbounds %struct.fanotify_event, %struct.fanotify_event* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kfree(i32 %21)
  br label %23

23:                                               ; preds = %17, %13
  br label %24

24:                                               ; preds = %23, %9
  %25 = load %struct.fanotify_event*, %struct.fanotify_event** %3, align 8
  %26 = getelementptr inbounds %struct.fanotify_event, %struct.fanotify_event* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @put_pid(i32 %27)
  %29 = load %struct.fanotify_event*, %struct.fanotify_event** %3, align 8
  %30 = getelementptr inbounds %struct.fanotify_event, %struct.fanotify_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @fanotify_is_perm_event(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %24
  %35 = load i32, i32* @fanotify_perm_event_cachep, align 4
  %36 = load %struct.fsnotify_event*, %struct.fsnotify_event** %2, align 8
  %37 = call %struct.fanotify_event* @FANOTIFY_PE(%struct.fsnotify_event* %36)
  %38 = call i32 @kmem_cache_free(i32 %35, %struct.fanotify_event* %37)
  br label %43

39:                                               ; preds = %24
  %40 = load i32, i32* @fanotify_event_cachep, align 4
  %41 = load %struct.fanotify_event*, %struct.fanotify_event** %3, align 8
  %42 = call i32 @kmem_cache_free(i32 %40, %struct.fanotify_event* %41)
  br label %43

43:                                               ; preds = %39, %34
  ret void
}

declare dso_local %struct.fanotify_event* @FANOTIFY_E(%struct.fsnotify_event*) #1

declare dso_local i64 @fanotify_event_has_path(%struct.fanotify_event*) #1

declare dso_local i32 @path_put(i32*) #1

declare dso_local i64 @fanotify_event_has_ext_fh(%struct.fanotify_event*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i64 @fanotify_is_perm_event(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.fanotify_event*) #1

declare dso_local %struct.fanotify_event* @FANOTIFY_PE(%struct.fsnotify_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
