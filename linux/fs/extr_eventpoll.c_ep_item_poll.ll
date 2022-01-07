; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_item_poll.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_item_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epitem = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.eventpoll* }
%struct.eventpoll = type { i32 }
%struct.TYPE_12__ = type { i32, i64 }

@ep_ptable_queue_proc = common dso_local global i64 0, align 8
@ep_read_events_proc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.epitem*, %struct.TYPE_12__*, i32)* @ep_item_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_item_poll(%struct.epitem* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.epitem*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eventpoll*, align 8
  %9 = alloca i32, align 4
  store %struct.epitem* %0, %struct.epitem** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.epitem*, %struct.epitem** %5, align 8
  %11 = getelementptr inbounds %struct.epitem, %struct.epitem* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.epitem*, %struct.epitem** %5, align 8
  %17 = getelementptr inbounds %struct.epitem, %struct.epitem* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = call i32 @is_file_epoll(%struct.TYPE_13__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %3
  %23 = load %struct.epitem*, %struct.epitem** %5, align 8
  %24 = getelementptr inbounds %struct.epitem, %struct.epitem* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = call i32 @vfs_poll(%struct.TYPE_13__* %26, %struct.TYPE_12__* %27)
  %29 = load %struct.epitem*, %struct.epitem** %5, align 8
  %30 = getelementptr inbounds %struct.epitem, %struct.epitem* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %28, %32
  store i32 %33, i32* %4, align 4
  br label %75

34:                                               ; preds = %3
  %35 = load %struct.epitem*, %struct.epitem** %5, align 8
  %36 = getelementptr inbounds %struct.epitem, %struct.epitem* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load %struct.eventpoll*, %struct.eventpoll** %39, align 8
  store %struct.eventpoll* %40, %struct.eventpoll** %8, align 8
  %41 = load %struct.epitem*, %struct.epitem** %5, align 8
  %42 = getelementptr inbounds %struct.epitem, %struct.epitem* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = load %struct.eventpoll*, %struct.eventpoll** %8, align 8
  %46 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = call i32 @poll_wait(%struct.TYPE_13__* %44, i32* %46, %struct.TYPE_12__* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %34
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ep_ptable_queue_proc, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %51, %34
  %58 = phi i1 [ false, %34 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %9, align 4
  %60 = load %struct.epitem*, %struct.epitem** %5, align 8
  %61 = getelementptr inbounds %struct.epitem, %struct.epitem* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.eventpoll*, %struct.eventpoll** %64, align 8
  %66 = load i32, i32* @ep_read_events_proc, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @ep_scan_ready_list(%struct.eventpoll* %65, i32 %66, i32* %7, i32 %67, i32 %68)
  %70 = load %struct.epitem*, %struct.epitem** %5, align 8
  %71 = getelementptr inbounds %struct.epitem, %struct.epitem* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %69, %73
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %57, %22
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @is_file_epoll(%struct.TYPE_13__*) #1

declare dso_local i32 @vfs_poll(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @poll_wait(%struct.TYPE_13__*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @ep_scan_ready_list(%struct.eventpoll*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
