; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32 }

@find_submount = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d_invalidate(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = call i64 @d_unhashed(%struct.dentry* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.dentry*, %struct.dentry** %2, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = call i32 @spin_unlock(i32* %13)
  br label %47

15:                                               ; preds = %1
  %16 = load %struct.dentry*, %struct.dentry** %2, align 8
  %17 = call i32 @__d_drop(%struct.dentry* %16)
  %18 = load %struct.dentry*, %struct.dentry** %2, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.dentry*, %struct.dentry** %2, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %47

26:                                               ; preds = %15
  %27 = load %struct.dentry*, %struct.dentry** %2, align 8
  %28 = call i32 @shrink_dcache_parent(%struct.dentry* %27)
  br label %29

29:                                               ; preds = %42, %26
  store %struct.dentry* null, %struct.dentry** %4, align 8
  %30 = load %struct.dentry*, %struct.dentry** %2, align 8
  %31 = load i32, i32* @find_submount, align 4
  %32 = call i32 @d_walk(%struct.dentry* %30, %struct.dentry** %4, i32 %31)
  %33 = load %struct.dentry*, %struct.dentry** %4, align 8
  %34 = icmp ne %struct.dentry* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.dentry*, %struct.dentry** %2, align 8
  %40 = call i32 @shrink_dcache_parent(%struct.dentry* %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %47

42:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  %43 = load %struct.dentry*, %struct.dentry** %4, align 8
  %44 = call i32 @detach_mounts(%struct.dentry* %43)
  %45 = load %struct.dentry*, %struct.dentry** %4, align 8
  %46 = call i32 @dput(%struct.dentry* %45)
  br label %29

47:                                               ; preds = %41, %25, %11
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__d_drop(%struct.dentry*) #1

declare dso_local i32 @shrink_dcache_parent(%struct.dentry*) #1

declare dso_local i32 @d_walk(%struct.dentry*, %struct.dentry**, i32) #1

declare dso_local i32 @detach_mounts(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
