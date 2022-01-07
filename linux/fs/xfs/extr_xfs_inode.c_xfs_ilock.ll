; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_ilock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_ilock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@XFS_IOLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_LOCK_MASK = common dso_local global i32 0, align 4
@XFS_LOCK_SUBCLASS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_ilock(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @_RET_IP_, align 4
  %8 = call i32 @trace_xfs_ilock(%struct.TYPE_6__* %5, i32 %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %11 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %15 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %16 = or i32 %14, %15
  %17 = icmp ne i32 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %22 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %26 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %27 = or i32 %25, %26
  %28 = icmp ne i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %33 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %37 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %38 = or i32 %36, %37
  %39 = icmp ne i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @XFS_LOCK_MASK, align 4
  %44 = load i32, i32* @XFS_LOCK_SUBCLASS_MASK, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = and i32 %42, %46
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = call %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__* %56)
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @XFS_IOLOCK_DEP(i32 %59)
  %61 = call i32 @down_write_nested(i32* %58, i32 %60)
  br label %75

62:                                               ; preds = %2
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %69 = call %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__* %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @XFS_IOLOCK_DEP(i32 %71)
  %73 = call i32 @down_read_nested(i32* %70, i32 %72)
  br label %74

74:                                               ; preds = %67, %62
  br label %75

75:                                               ; preds = %74, %55
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @XFS_MMAPLOCK_DEP(i32 %83)
  %85 = call i32 @mrupdate_nested(i32* %82, i32 %84)
  br label %98

86:                                               ; preds = %75
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @XFS_MMAPLOCK_DEP(i32 %94)
  %96 = call i32 @mraccess_nested(i32* %93, i32 %95)
  br label %97

97:                                               ; preds = %91, %86
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @XFS_ILOCK_DEP(i32 %106)
  %108 = call i32 @mrupdate_nested(i32* %105, i32 %107)
  br label %121

109:                                              ; preds = %98
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %4, align 4
  %118 = call i32 @XFS_ILOCK_DEP(i32 %117)
  %119 = call i32 @mraccess_nested(i32* %116, i32 %118)
  br label %120

120:                                              ; preds = %114, %109
  br label %121

121:                                              ; preds = %120, %103
  ret void
}

declare dso_local i32 @trace_xfs_ilock(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @down_write_nested(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__*) #1

declare dso_local i32 @XFS_IOLOCK_DEP(i32) #1

declare dso_local i32 @down_read_nested(i32*, i32) #1

declare dso_local i32 @mrupdate_nested(i32*, i32) #1

declare dso_local i32 @XFS_MMAPLOCK_DEP(i32) #1

declare dso_local i32 @mraccess_nested(i32*, i32) #1

declare dso_local i32 @XFS_ILOCK_DEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
