; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_read_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_read_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, %struct.xfs_buf_ops* }
%struct.xfs_buftarg = type { i32 }
%struct.xfs_buf_map = type { i32 }
%struct.xfs_buf_ops = type { i32 }

@XBF_READ = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@XBF_DONE = common dso_local global i32 0, align 4
@xb_get_read = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_buf* @xfs_buf_read_map(%struct.xfs_buftarg* %0, %struct.xfs_buf_map* %1, i32 %2, i32 %3, %struct.xfs_buf_ops* %4) #0 {
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.xfs_buftarg*, align 8
  %8 = alloca %struct.xfs_buf_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xfs_buf_ops*, align 8
  %12 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_buftarg* %0, %struct.xfs_buftarg** %7, align 8
  store %struct.xfs_buf_map* %1, %struct.xfs_buf_map** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.xfs_buf_ops* %4, %struct.xfs_buf_ops** %11, align 8
  %13 = load i32, i32* @XBF_READ, align 4
  %14 = load i32, i32* %10, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %10, align 4
  %16 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %7, align 8
  %17 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.xfs_buf* @xfs_buf_get_map(%struct.xfs_buftarg* %16, %struct.xfs_buf_map* %17, i32 %18, i32 %19)
  store %struct.xfs_buf* %20, %struct.xfs_buf** %12, align 8
  %21 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %22 = icmp ne %struct.xfs_buf* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  store %struct.xfs_buf* null, %struct.xfs_buf** %6, align 8
  br label %78

24:                                               ; preds = %5
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @_RET_IP_, align 4
  %28 = call i32 @trace_xfs_buf_read(%struct.xfs_buf* %25, i32 %26, i32 %27)
  %29 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %30 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @XBF_DONE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %24
  %36 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %7, align 8
  %37 = getelementptr inbounds %struct.xfs_buftarg, %struct.xfs_buftarg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @xb_get_read, align 4
  %40 = call i32 @XFS_STATS_INC(i32 %38, i32 %39)
  %41 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %11, align 8
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %43 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %42, i32 0, i32 1
  store %struct.xfs_buf_ops* %41, %struct.xfs_buf_ops** %43, align 8
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @_xfs_buf_read(%struct.xfs_buf* %44, i32 %45)
  %47 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  store %struct.xfs_buf* %47, %struct.xfs_buf** %6, align 8
  br label %78

48:                                               ; preds = %24
  %49 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %50 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %11, align 8
  %51 = call i32 @xfs_buf_reverify(%struct.xfs_buf* %49, %struct.xfs_buf_ops* %50)
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @XBF_ASYNC, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %58 = call i32 @xfs_buf_relse(%struct.xfs_buf* %57)
  store %struct.xfs_buf* null, %struct.xfs_buf** %6, align 8
  br label %78

59:                                               ; preds = %48
  %60 = load i32, i32* @XBF_READ, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %63 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %67 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %66, i32 0, i32 1
  %68 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %67, align 8
  %69 = icmp ne %struct.xfs_buf_ops* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %59
  %71 = load %struct.xfs_buf_ops*, %struct.xfs_buf_ops** %11, align 8
  %72 = icmp eq %struct.xfs_buf_ops* %71, null
  br label %73

73:                                               ; preds = %70, %59
  %74 = phi i1 [ true, %59 ], [ %72, %70 ]
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  store %struct.xfs_buf* %77, %struct.xfs_buf** %6, align 8
  br label %78

78:                                               ; preds = %73, %56, %35, %23
  %79 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  ret %struct.xfs_buf* %79
}

declare dso_local %struct.xfs_buf* @xfs_buf_get_map(%struct.xfs_buftarg*, %struct.xfs_buf_map*, i32, i32) #1

declare dso_local i32 @trace_xfs_buf_read(%struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @XFS_STATS_INC(i32, i32) #1

declare dso_local i32 @_xfs_buf_read(%struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_buf_reverify(%struct.xfs_buf*, %struct.xfs_buf_ops*) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
