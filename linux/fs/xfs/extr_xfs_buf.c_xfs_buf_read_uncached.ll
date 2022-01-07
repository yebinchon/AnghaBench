; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_read_uncached.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_read_uncached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buftarg = type { i32 }
%struct.xfs_buf = type { i32, i32, %struct.xfs_buf_ops*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.xfs_buf_ops = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@XFS_BUF_DADDR_NULL = common dso_local global i32 0, align 4
@XBF_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_buf_read_uncached(%struct.xfs_buftarg* %0, i32 %1, i64 %2, i32 %3, %struct.xfs_buf** %4, %struct.xfs_buf_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_buftarg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_buf**, align 8
  %13 = alloca %struct.xfs_buf_ops*, align 8
  %14 = alloca %struct.xfs_buf*, align 8
  %15 = alloca i32, align 4
  store %struct.xfs_buftarg* %0, %struct.xfs_buftarg** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.xfs_buf** %4, %struct.xfs_buf*** %12, align 8
  store %struct.xfs_buf_ops* %5, %struct.xfs_buf_ops** %13, align 8
  %16 = load %struct.xfs_buf**, %struct.xfs_buf*** %12, align 8
  store %struct.xfs_buf* null, %struct.xfs_buf** %16, align 8
  %17 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %8, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call %struct.xfs_buf* @xfs_buf_get_uncached(%struct.xfs_buftarg* %17, i64 %18, i32 %19)
  store %struct.xfs_buf* %20, %struct.xfs_buf** %14, align 8
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %22 = icmp ne %struct.xfs_buf* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %66

26:                                               ; preds = %6
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %28 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* @XFS_BUF_DADDR_NULL, align 4
  %34 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %35 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %38 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 4
  %42 = load i32, i32* @XBF_READ, align 4
  %43 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %44 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %13, align 8
  %48 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %49 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %48, i32 0, i32 2
  store %struct.xfs_buf_ops* %47, %struct.xfs_buf_ops** %49, align 8
  %50 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %51 = call i32 @xfs_buf_submit(%struct.xfs_buf* %50)
  %52 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %53 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %26
  %57 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %58 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %61 = call i32 @xfs_buf_relse(%struct.xfs_buf* %60)
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %7, align 4
  br label %66

63:                                               ; preds = %26
  %64 = load %struct.xfs_buf*, %struct.xfs_buf** %14, align 8
  %65 = load %struct.xfs_buf**, %struct.xfs_buf*** %12, align 8
  store %struct.xfs_buf* %64, %struct.xfs_buf** %65, align 8
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %56, %23
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local %struct.xfs_buf* @xfs_buf_get_uncached(%struct.xfs_buftarg*, i64, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_submit(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
