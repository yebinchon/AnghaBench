; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c___lock_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c___lock_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.dentry* }

@DENTRY_D_LOCK_NESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @__lock_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__lock_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = call i32 @spin_unlock(i32* %6)
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.dentry*, %struct.dentry** %2, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 1
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  %12 = call %struct.dentry* @READ_ONCE(%struct.dentry* %11)
  store %struct.dentry* %12, %struct.dentry** %3, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %2, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  %19 = load %struct.dentry*, %struct.dentry** %18, align 8
  %20 = icmp ne %struct.dentry* %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load %struct.dentry*, %struct.dentry** %3, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  br label %8

28:                                               ; preds = %8
  %29 = call i32 (...) @rcu_read_unlock()
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  %31 = load %struct.dentry*, %struct.dentry** %2, align 8
  %32 = icmp ne %struct.dentry* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.dentry*, %struct.dentry** %2, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 0
  %36 = load i32, i32* @DENTRY_D_LOCK_NESTED, align 4
  %37 = call i32 @spin_lock_nested(i32* %35, i32 %36)
  br label %39

38:                                               ; preds = %28
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %39

39:                                               ; preds = %38, %33
  %40 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %40
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.dentry* @READ_ONCE(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
