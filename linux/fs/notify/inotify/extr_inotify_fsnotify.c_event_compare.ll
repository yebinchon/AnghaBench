; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_fsnotify.c_event_compare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/inotify/extr_inotify_fsnotify.c_event_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_event = type { i64 }
%struct.inotify_event_info = type { i32, i64, i32 }

@FS_IN_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsnotify_event*, %struct.fsnotify_event*)* @event_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_compare(%struct.fsnotify_event* %0, %struct.fsnotify_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsnotify_event*, align 8
  %5 = alloca %struct.fsnotify_event*, align 8
  %6 = alloca %struct.inotify_event_info*, align 8
  %7 = alloca %struct.inotify_event_info*, align 8
  store %struct.fsnotify_event* %0, %struct.fsnotify_event** %4, align 8
  store %struct.fsnotify_event* %1, %struct.fsnotify_event** %5, align 8
  %8 = load %struct.fsnotify_event*, %struct.fsnotify_event** %4, align 8
  %9 = call %struct.inotify_event_info* @INOTIFY_E(%struct.fsnotify_event* %8)
  store %struct.inotify_event_info* %9, %struct.inotify_event_info** %6, align 8
  %10 = load %struct.fsnotify_event*, %struct.fsnotify_event** %5, align 8
  %11 = call %struct.inotify_event_info* @INOTIFY_E(%struct.fsnotify_event* %10)
  store %struct.inotify_event_info* %11, %struct.inotify_event_info** %7, align 8
  %12 = load %struct.inotify_event_info*, %struct.inotify_event_info** %6, align 8
  %13 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FS_IN_IGNORED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load %struct.inotify_event_info*, %struct.inotify_event_info** %6, align 8
  %21 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.inotify_event_info*, %struct.inotify_event_info** %7, align 8
  %24 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %19
  %28 = load %struct.fsnotify_event*, %struct.fsnotify_event** %4, align 8
  %29 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.fsnotify_event*, %struct.fsnotify_event** %5, align 8
  %32 = getelementptr inbounds %struct.fsnotify_event, %struct.fsnotify_event* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %27
  %36 = load %struct.inotify_event_info*, %struct.inotify_event_info** %6, align 8
  %37 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.inotify_event_info*, %struct.inotify_event_info** %7, align 8
  %40 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %35
  %44 = load %struct.inotify_event_info*, %struct.inotify_event_info** %6, align 8
  %45 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.inotify_event_info*, %struct.inotify_event_info** %6, align 8
  %50 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.inotify_event_info*, %struct.inotify_event_info** %7, align 8
  %53 = getelementptr inbounds %struct.inotify_event_info, %struct.inotify_event_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @strcmp(i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %48, %43
  store i32 1, i32* %3, align 4
  br label %59

58:                                               ; preds = %48, %35, %27, %19
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %57, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.inotify_event_info* @INOTIFY_E(%struct.fsnotify_event*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
