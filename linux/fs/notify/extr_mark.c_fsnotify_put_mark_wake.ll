; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_put_mark_wake.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_put_mark_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { %struct.fsnotify_group* }
%struct.fsnotify_group = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsnotify_mark*)* @fsnotify_put_mark_wake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsnotify_put_mark_wake(%struct.fsnotify_mark* %0) #0 {
  %2 = alloca %struct.fsnotify_mark*, align 8
  %3 = alloca %struct.fsnotify_group*, align 8
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %2, align 8
  %4 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %5 = icmp ne %struct.fsnotify_mark* %4, null
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %8 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %7, i32 0, i32 0
  %9 = load %struct.fsnotify_group*, %struct.fsnotify_group** %8, align 8
  store %struct.fsnotify_group* %9, %struct.fsnotify_group** %3, align 8
  %10 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %11 = call i32 @fsnotify_put_mark(%struct.fsnotify_mark* %10)
  %12 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %13 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %12, i32 0, i32 2
  %14 = call i64 @atomic_dec_and_test(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %18 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %23 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %22, i32 0, i32 0
  %24 = call i32 @wake_up(i32* %23)
  br label %25

25:                                               ; preds = %21, %16, %6
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @fsnotify_put_mark(%struct.fsnotify_mark*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
