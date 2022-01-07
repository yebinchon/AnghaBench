; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xlog_cil_committed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_log_cil.c_xlog_cil_committed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_cil_ctx = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }

@XFS_MOUNT_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_cil_ctx*, i32)* @xlog_cil_committed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlog_cil_committed(%struct.xfs_cil_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.xfs_cil_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_mount*, align 8
  store %struct.xfs_cil_ctx* %0, %struct.xfs_cil_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = load %struct.xfs_mount*, %struct.xfs_mount** %11, align 8
  store %struct.xfs_mount* %12, %struct.xfs_mount** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = call i32 @wake_up_all(i32* %24)
  %26 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  br label %31

31:                                               ; preds = %15, %2
  %32 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %40 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @xfs_trans_committed_bulk(i32 %38, i32 %41, i32 %44, i32 %45)
  %47 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %47, i32 0, i32 0
  %49 = call i32 @xfs_extent_busy_sort(i32* %48)
  %50 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %51 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %51, i32 0, i32 0
  %53 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %54 = getelementptr inbounds %struct.xfs_mount, %struct.xfs_mount* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @XFS_MOUNT_DISCARD, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %31
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %59, %31
  %64 = phi i1 [ false, %31 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i32 @xfs_extent_busy_clear(%struct.xfs_mount* %50, i32* %52, i32 %65)
  %67 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %67, i32 0, i32 2
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = call i32 @spin_lock(i32* %70)
  %72 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %72, i32 0, i32 3
  %74 = call i32 @list_del(i32* %73)
  %75 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %76 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock(i32* %78)
  %80 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @xlog_cil_free_logvec(i32 %82)
  %84 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.xfs_cil_ctx, %struct.xfs_cil_ctx* %84, i32 0, i32 0
  %86 = call i32 @list_empty(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %63
  %89 = load %struct.xfs_mount*, %struct.xfs_mount** %5, align 8
  %90 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %91 = call i32 @xlog_discard_busy_extents(%struct.xfs_mount* %89, %struct.xfs_cil_ctx* %90)
  br label %95

92:                                               ; preds = %63
  %93 = load %struct.xfs_cil_ctx*, %struct.xfs_cil_ctx** %3, align 8
  %94 = call i32 @kmem_free(%struct.xfs_cil_ctx* %93)
  br label %95

95:                                               ; preds = %92, %88
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfs_trans_committed_bulk(i32, i32, i32, i32) #1

declare dso_local i32 @xfs_extent_busy_sort(i32*) #1

declare dso_local i32 @xfs_extent_busy_clear(%struct.xfs_mount*, i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @xlog_cil_free_logvec(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @xlog_discard_busy_extents(%struct.xfs_mount*, %struct.xfs_cil_ctx*) #1

declare dso_local i32 @kmem_free(%struct.xfs_cil_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
