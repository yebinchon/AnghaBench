; ModuleID = '/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_final_mark_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/notify/extr_mark.c_fsnotify_final_mark_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsnotify_mark = type { %struct.fsnotify_group* }
%struct.fsnotify_group = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fsnotify_mark*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsnotify_mark*)* @fsnotify_final_mark_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsnotify_final_mark_destroy(%struct.fsnotify_mark* %0) #0 {
  %2 = alloca %struct.fsnotify_mark*, align 8
  %3 = alloca %struct.fsnotify_group*, align 8
  store %struct.fsnotify_mark* %0, %struct.fsnotify_mark** %2, align 8
  %4 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %5 = getelementptr inbounds %struct.fsnotify_mark, %struct.fsnotify_mark* %4, i32 0, i32 0
  %6 = load %struct.fsnotify_group*, %struct.fsnotify_group** %5, align 8
  store %struct.fsnotify_group* %6, %struct.fsnotify_group** %3, align 8
  %7 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %8 = icmp ne %struct.fsnotify_group* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON_ONCE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %16 = getelementptr inbounds %struct.fsnotify_group, %struct.fsnotify_group* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.fsnotify_mark*)*, i32 (%struct.fsnotify_mark*)** %18, align 8
  %20 = load %struct.fsnotify_mark*, %struct.fsnotify_mark** %2, align 8
  %21 = call i32 %19(%struct.fsnotify_mark* %20)
  %22 = load %struct.fsnotify_group*, %struct.fsnotify_group** %3, align 8
  %23 = call i32 @fsnotify_put_group(%struct.fsnotify_group* %22)
  br label %24

24:                                               ; preds = %14, %13
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @fsnotify_put_group(%struct.fsnotify_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
