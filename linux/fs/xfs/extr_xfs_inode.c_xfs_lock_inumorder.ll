; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_lock_inumorder.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_lock_inumorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XFS_ILOCK_PARENT = common dso_local global i32 0, align 4
@XFS_ILOCK_RTBITMAP = common dso_local global i32 0, align 4
@XFS_ILOCK_RTSUM = common dso_local global i32 0, align 4
@XFS_IOLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_IOLOCK_MAX_SUBCLASS = common dso_local global i32 0, align 4
@XFS_IOLOCK_SHIFT = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_MAX_SUBCLASS = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_SHIFT = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_MAX_SUBCLASS = common dso_local global i32 0, align 4
@XFS_ILOCK_SHIFT = common dso_local global i32 0, align 4
@XFS_LOCK_SUBCLASS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @xfs_lock_inumorder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_lock_inumorder(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @XFS_ILOCK_PARENT, align 4
  %8 = load i32, i32* @XFS_ILOCK_RTBITMAP, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @XFS_ILOCK_RTSUM, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %6, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @xfs_lockdep_subclass_ok(i32 %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %22 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @XFS_IOLOCK_MAX_SUBCLASS, align 4
  %29 = icmp sle i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @XFS_IOLOCK_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %26, %2
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %40 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @XFS_MMAPLOCK_MAX_SUBCLASS, align 4
  %47 = icmp sle i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @XFS_MMAPLOCK_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %44, %37
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %58 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @XFS_ILOCK_MAX_SUBCLASS, align 4
  %65 = icmp sle i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @XFS_ILOCK_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %62, %55
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @XFS_LOCK_SUBCLASS_MASK, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %77, %78
  ret i32 %79
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_lockdep_subclass_ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
