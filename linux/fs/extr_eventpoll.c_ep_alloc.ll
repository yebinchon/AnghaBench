; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventpoll = type { %struct.user_struct*, i32, i32, i32, i32, i32, i32, i32 }
%struct.user_struct = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RB_ROOT_CACHED = common dso_local global i32 0, align 4
@EP_UNACTIVE_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventpoll**)* @ep_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_alloc(%struct.eventpoll** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eventpoll**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_struct*, align 8
  %6 = alloca %struct.eventpoll*, align 8
  store %struct.eventpoll** %0, %struct.eventpoll*** %3, align 8
  %7 = call %struct.user_struct* (...) @get_current_user()
  store %struct.user_struct* %7, %struct.user_struct** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.eventpoll* @kzalloc(i32 40, i32 %10)
  store %struct.eventpoll* %11, %struct.eventpoll** %6, align 8
  %12 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %13 = icmp ne %struct.eventpoll* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %21 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %20, i32 0, i32 7
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %24 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %23, i32 0, i32 6
  %25 = call i32 @rwlock_init(i32* %24)
  %26 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %27 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %26, i32 0, i32 5
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %30 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %29, i32 0, i32 4
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %33 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %32, i32 0, i32 3
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load i32, i32* @RB_ROOT_CACHED, align 4
  %36 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %37 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @EP_UNACTIVE_PTR, align 4
  %39 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %40 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.user_struct*, %struct.user_struct** %5, align 8
  %42 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %43 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %42, i32 0, i32 0
  store %struct.user_struct* %41, %struct.user_struct** %43, align 8
  %44 = load %struct.eventpoll*, %struct.eventpoll** %6, align 8
  %45 = load %struct.eventpoll**, %struct.eventpoll*** %3, align 8
  store %struct.eventpoll* %44, %struct.eventpoll** %45, align 8
  store i32 0, i32* %2, align 4
  br label %50

46:                                               ; preds = %18
  %47 = load %struct.user_struct*, %struct.user_struct** %5, align 8
  %48 = call i32 @free_uid(%struct.user_struct* %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.user_struct* @get_current_user(...) #1

declare dso_local %struct.eventpoll* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @free_uid(%struct.user_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
