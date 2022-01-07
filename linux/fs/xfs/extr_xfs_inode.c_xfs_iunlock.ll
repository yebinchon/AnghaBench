; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_iunlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_iunlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@XFS_IOLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_LOCK_MASK = common dso_local global i32 0, align 4
@XFS_LOCK_SUBCLASS_MASK = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_iunlock(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %7 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %11 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %12 = or i32 %10, %11
  %13 = icmp ne i32 %9, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %18 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %22 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %23 = or i32 %21, %22
  %24 = icmp ne i32 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %29 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %33 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %34 = or i32 %32, %33
  %35 = icmp ne i32 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @XFS_LOCK_MASK, align 4
  %40 = load i32, i32* @XFS_LOCK_SUBCLASS_MASK, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = call %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__* %56)
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = call i32 @up_write(i32* %58)
  br label %71

60:                                               ; preds = %2
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = call %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__* %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = call i32 @up_read(i32* %68)
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %55
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = call i32 @mrunlock_excl(i32* %78)
  br label %90

80:                                               ; preds = %71
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = call i32 @mrunlock_shared(i32* %87)
  br label %89

89:                                               ; preds = %85, %80
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @mrunlock_excl(i32* %97)
  br label %109

99:                                               ; preds = %90
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = call i32 @mrunlock_shared(i32* %106)
  br label %108

108:                                              ; preds = %104, %99
  br label %109

109:                                              ; preds = %108, %95
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @_RET_IP_, align 4
  %113 = call i32 @trace_xfs_iunlock(%struct.TYPE_6__* %110, i32 %111, i32 %112)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mrunlock_excl(i32*) #1

declare dso_local i32 @mrunlock_shared(i32*) #1

declare dso_local i32 @trace_xfs_iunlock(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
