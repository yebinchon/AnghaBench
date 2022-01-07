; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_get_buf_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_trans_buf.c_xfs_trans_get_buf_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_buf_log_item*, i32, %struct.xfs_trans*, i32 }
%struct.xfs_buf_log_item = type { i32, i32 }
%struct.xfs_trans = type { i32 }
%struct.xfs_buftarg = type { i32 }
%struct.xfs_buf_map = type { i32 }

@XBF_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_buf* @xfs_trans_get_buf_map(%struct.xfs_trans* %0, %struct.xfs_buftarg* %1, %struct.xfs_buf_map* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.xfs_buf*, align 8
  %7 = alloca %struct.xfs_trans*, align 8
  %8 = alloca %struct.xfs_buftarg*, align 8
  %9 = alloca %struct.xfs_buf_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_buf*, align 8
  %13 = alloca %struct.xfs_buf_log_item*, align 8
  store %struct.xfs_trans* %0, %struct.xfs_trans** %7, align 8
  store %struct.xfs_buftarg* %1, %struct.xfs_buftarg** %8, align 8
  store %struct.xfs_buf_map* %2, %struct.xfs_buf_map** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %15 = icmp ne %struct.xfs_trans* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %8, align 8
  %18 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call %struct.xfs_buf* @xfs_buf_get_map(%struct.xfs_buftarg* %17, %struct.xfs_buf_map* %18, i32 %19, i32 %20)
  store %struct.xfs_buf* %21, %struct.xfs_buf** %6, align 8
  br label %100

22:                                               ; preds = %5
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %24 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %8, align 8
  %25 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.xfs_buf* @xfs_trans_buf_item_match(%struct.xfs_trans* %23, %struct.xfs_buftarg* %24, %struct.xfs_buf_map* %25, i32 %26)
  store %struct.xfs_buf* %27, %struct.xfs_buf** %12, align 8
  %28 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %29 = icmp ne %struct.xfs_buf* %28, null
  br i1 %29, label %30, label %75

30:                                               ; preds = %22
  %31 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %32 = call i32 @xfs_buf_islocked(%struct.xfs_buf* %31)
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %35 = getelementptr inbounds %struct.xfs_trans, %struct.xfs_trans* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @XFS_FORCED_SHUTDOWN(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %41 = call i32 @xfs_buf_stale(%struct.xfs_buf* %40)
  %42 = load i32, i32* @XBF_DONE, align 4
  %43 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %44 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %39, %30
  %48 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %49 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %48, i32 0, i32 2
  %50 = load %struct.xfs_trans*, %struct.xfs_trans** %49, align 8
  %51 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %52 = icmp eq %struct.xfs_trans* %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %56 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %55, i32 0, i32 0
  %57 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %56, align 8
  store %struct.xfs_buf_log_item* %57, %struct.xfs_buf_log_item** %13, align 8
  %58 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %13, align 8
  %59 = icmp ne %struct.xfs_buf_log_item* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %13, align 8
  %63 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %62, i32 0, i32 1
  %64 = call i64 @atomic_read(i32* %63)
  %65 = icmp sgt i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %13, align 8
  %69 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %13, align 8
  %73 = call i32 @trace_xfs_trans_get_buf_recur(%struct.xfs_buf_log_item* %72)
  %74 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  store %struct.xfs_buf* %74, %struct.xfs_buf** %6, align 8
  br label %100

75:                                               ; preds = %22
  %76 = load %struct.xfs_buftarg*, %struct.xfs_buftarg** %8, align 8
  %77 = load %struct.xfs_buf_map*, %struct.xfs_buf_map** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call %struct.xfs_buf* @xfs_buf_get_map(%struct.xfs_buftarg* %76, %struct.xfs_buf_map* %77, i32 %78, i32 %79)
  store %struct.xfs_buf* %80, %struct.xfs_buf** %12, align 8
  %81 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %82 = icmp eq %struct.xfs_buf* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store %struct.xfs_buf* null, %struct.xfs_buf** %6, align 8
  br label %100

84:                                               ; preds = %75
  %85 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %86 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @ASSERT(i32 %90)
  %92 = load %struct.xfs_trans*, %struct.xfs_trans** %7, align 8
  %93 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %94 = call i32 @_xfs_trans_bjoin(%struct.xfs_trans* %92, %struct.xfs_buf* %93, i32 1)
  %95 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %96 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %95, i32 0, i32 0
  %97 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %96, align 8
  %98 = call i32 @trace_xfs_trans_get_buf(%struct.xfs_buf_log_item* %97)
  %99 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  store %struct.xfs_buf* %99, %struct.xfs_buf** %6, align 8
  br label %100

100:                                              ; preds = %84, %83, %47, %16
  %101 = load %struct.xfs_buf*, %struct.xfs_buf** %6, align 8
  ret %struct.xfs_buf* %101
}

declare dso_local %struct.xfs_buf* @xfs_buf_get_map(%struct.xfs_buftarg*, %struct.xfs_buf_map*, i32, i32) #1

declare dso_local %struct.xfs_buf* @xfs_trans_buf_item_match(%struct.xfs_trans*, %struct.xfs_buftarg*, %struct.xfs_buf_map*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_islocked(%struct.xfs_buf*) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @xfs_buf_stale(%struct.xfs_buf*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @trace_xfs_trans_get_buf_recur(%struct.xfs_buf_log_item*) #1

declare dso_local i32 @_xfs_trans_bjoin(%struct.xfs_trans*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @trace_xfs_trans_get_buf(%struct.xfs_buf_log_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
