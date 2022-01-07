; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_ilock_demote.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_ilock_demote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_ilock_demote(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %7 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %5, %10
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %15 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %13, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = call i32 @mrdemote(i32* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @mrdemote(i32* %39)
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = call %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__* %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i32 @downgrade_write(i32* %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @_RET_IP_, align 4
  %55 = call i32 @trace_xfs_ilock_demote(%struct.TYPE_6__* %52, i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mrdemote(i32*) #1

declare dso_local i32 @downgrade_write(i32*) #1

declare dso_local %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__*) #1

declare dso_local i32 @trace_xfs_ilock_demote(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
