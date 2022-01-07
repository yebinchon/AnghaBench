; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c___rt_mutex_init.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_rtmutex.c___rt_mutex_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_mutex = type { i32, i32, i32* }
%struct.lock_class_key = type { i32 }

@RB_ROOT_CACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__rt_mutex_init(%struct.rt_mutex* %0, i8* %1, %struct.lock_class_key* %2) #0 {
  %4 = alloca %struct.rt_mutex*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lock_class_key*, align 8
  store %struct.rt_mutex* %0, %struct.rt_mutex** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.lock_class_key* %2, %struct.lock_class_key** %6, align 8
  %7 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %8 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %7, i32 0, i32 2
  store i32* null, i32** %8, align 8
  %9 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %10 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %9, i32 0, i32 1
  %11 = call i32 @raw_spin_lock_init(i32* %10)
  %12 = load i32, i32* @RB_ROOT_CACHED, align 4
  %13 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %14 = getelementptr inbounds %struct.rt_mutex, %struct.rt_mutex* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.lock_class_key*, %struct.lock_class_key** %6, align 8
  %19 = icmp ne %struct.lock_class_key* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.rt_mutex*, %struct.rt_mutex** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.lock_class_key*, %struct.lock_class_key** %6, align 8
  %24 = call i32 @debug_rt_mutex_init(%struct.rt_mutex* %21, i8* %22, %struct.lock_class_key* %23)
  br label %25

25:                                               ; preds = %20, %17, %3
  ret void
}

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @debug_rt_mutex_init(%struct.rt_mutex*, i8*, %struct.lock_class_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
