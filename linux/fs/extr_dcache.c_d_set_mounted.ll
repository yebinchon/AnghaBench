; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_set_mounted.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_set_mounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.dentry* }

@ENOENT = common dso_local global i32 0, align 4
@rename_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@DCACHE_MOUNTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @d_set_mounted(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load i32, i32* @ENOENT, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = call i32 @write_seqlock(i32* @rename_lock)
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 2
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %3, align 8
  br label %11

11:                                               ; preds = %32, %1
  %12 = load %struct.dentry*, %struct.dentry** %3, align 8
  %13 = call i32 @IS_ROOT(%struct.dentry* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = call i32 @d_unhashed(%struct.dentry* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.dentry*, %struct.dentry** %3, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  br label %60

28:                                               ; preds = %16
  %29 = load %struct.dentry*, %struct.dentry** %3, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  br label %32

32:                                               ; preds = %28
  %33 = load %struct.dentry*, %struct.dentry** %3, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 2
  %35 = load %struct.dentry*, %struct.dentry** %34, align 8
  store %struct.dentry* %35, %struct.dentry** %3, align 8
  br label %11

36:                                               ; preds = %11
  %37 = load %struct.dentry*, %struct.dentry** %2, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.dentry*, %struct.dentry** %2, align 8
  %41 = call i32 @d_unlinked(%struct.dentry* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  %46 = load %struct.dentry*, %struct.dentry** %2, align 8
  %47 = call i32 @d_mountpoint(%struct.dentry* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @DCACHE_MOUNTED, align 4
  %51 = load %struct.dentry*, %struct.dentry** %2, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55, %36
  %57 = load %struct.dentry*, %struct.dentry** %2, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  br label %60

60:                                               ; preds = %56, %24
  %61 = call i32 @write_sequnlock(i32* @rename_lock)
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local i32 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @d_unhashed(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @d_unlinked(%struct.dentry*) #1

declare dso_local i32 @d_mountpoint(%struct.dentry*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
