; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_reporter_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_health_reporter_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_health_reporter = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devlink_health_reporter_destroy(%struct.devlink_health_reporter* %0) #0 {
  %2 = alloca %struct.devlink_health_reporter*, align 8
  store %struct.devlink_health_reporter* %0, %struct.devlink_health_reporter** %2, align 8
  %3 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %2, align 8
  %4 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %2, align 8
  %9 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %8, i32 0, i32 4
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %2, align 8
  %12 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @mutex_unlock(i32* %14)
  br label %16

16:                                               ; preds = %21, %1
  %17 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %2, align 8
  %18 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %17, i32 0, i32 2
  %19 = call i32 @refcount_read(i32* %18)
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @msleep(i32 100)
  br label %16

23:                                               ; preds = %16
  %24 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %2, align 8
  %25 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %24, i32 0, i32 1
  %26 = call i32 @mutex_destroy(i32* %25)
  %27 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %2, align 8
  %28 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %2, align 8
  %33 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @devlink_fmsg_free(i64 %34)
  br label %36

36:                                               ; preds = %31, %23
  %37 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %2, align 8
  %38 = call i32 @kfree(%struct.devlink_health_reporter* %37)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @devlink_fmsg_free(i64) #1

declare dso_local i32 @kfree(%struct.devlink_health_reporter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
