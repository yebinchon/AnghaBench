; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_stale.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_stale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@XBF_STALE = common dso_local global i32 0, align 4
@_XBF_DELWRI_Q = common dso_local global i32 0, align 4
@XFS_BSTATE_DISPOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_stale(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %3 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %4 = call i32 @xfs_buf_islocked(%struct.xfs_buf* %3)
  %5 = call i32 @ASSERT(i32 %4)
  %6 = load i32, i32* @XBF_STALE, align 4
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %8 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @_XBF_DELWRI_Q, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %18 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %21 = call i32 @__xfs_buf_ioacct_dec(%struct.xfs_buf* %20)
  %22 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %23 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %22, i32 0, i32 5
  %24 = call i32 @atomic_set(i32* %23, i32 0)
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %26 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XFS_BSTATE_DISPOSE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %1
  %32 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %33 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %37 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %36, i32 0, i32 3
  %38 = call i64 @list_lru_del(i32* %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %42 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %41, i32 0, i32 2
  %43 = call i32 @atomic_dec(i32* %42)
  br label %44

44:                                               ; preds = %40, %31, %1
  %45 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %46 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %45, i32 0, i32 2
  %47 = call i32 @atomic_read(i32* %46)
  %48 = icmp sge i32 %47, 1
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %52 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock(i32* %52)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_islocked(%struct.xfs_buf*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__xfs_buf_ioacct_dec(%struct.xfs_buf*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i64 @list_lru_del(i32*, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
