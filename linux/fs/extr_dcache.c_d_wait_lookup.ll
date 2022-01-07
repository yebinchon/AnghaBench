; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_wait_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_wait_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @d_wait_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_wait_lookup(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %3 = load %struct.dentry*, %struct.dentry** %2, align 8
  %4 = call i64 @d_in_lookup(%struct.dentry* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = load i32, i32* @wait, align 4
  %8 = load i32, i32* @current, align 4
  %9 = call i32 @DECLARE_WAITQUEUE(i32 %7, i32 %8)
  %10 = load %struct.dentry*, %struct.dentry** %2, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @add_wait_queue(i32 %12, i32* @wait)
  br label %14

14:                                               ; preds = %24, %6
  %15 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %16 = call i32 @set_current_state(i32 %15)
  %17 = load %struct.dentry*, %struct.dentry** %2, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = call i32 (...) @schedule()
  %21 = load %struct.dentry*, %struct.dentry** %2, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  br label %24

24:                                               ; preds = %14
  %25 = load %struct.dentry*, %struct.dentry** %2, align 8
  %26 = call i64 @d_in_lookup(%struct.dentry* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %14, label %28

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28, %1
  ret void
}

declare dso_local i64 @d_in_lookup(%struct.dentry*) #1

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
