; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c___xfs_buf_submit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c___xfs_buf_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i64, i32, i64, i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@_XBF_DELWRI_Q = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@XBF_DONE = common dso_local global i32 0, align 4
@XBF_WRITE = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xfs_buf_submit(%struct.xfs_buf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %8 = load i32, i32* @_RET_IP_, align 4
  %9 = call i32 @trace_xfs_buf_submit(%struct.xfs_buf* %7, i32 %8)
  %10 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @_XBF_DELWRI_Q, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %20 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @XFS_FORCED_SHUTDOWN(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  %25 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 @xfs_buf_ioerror(%struct.xfs_buf* %25, i32 %27)
  %29 = load i32, i32* @XBF_DONE, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %32 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %36 = call i32 @xfs_buf_stale(%struct.xfs_buf* %35)
  %37 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %38 = call i32 @xfs_buf_ioend(%struct.xfs_buf* %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %104

41:                                               ; preds = %2
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %43 = call i32 @xfs_buf_hold(%struct.xfs_buf* %42)
  %44 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %45 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @XBF_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %52 = call i32 @xfs_buf_wait_unpin(%struct.xfs_buf* %51)
  br label %53

53:                                               ; preds = %50, %41
  %54 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %55 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %57 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %56, i32 0, i32 2
  %58 = call i32 @atomic_set(i32* %57, i32 1)
  %59 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %60 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @XBF_ASYNC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %67 = call i32 @xfs_buf_ioacct_inc(%struct.xfs_buf* %66)
  br label %68

68:                                               ; preds = %65, %53
  %69 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %70 = call i32 @_xfs_buf_ioapply(%struct.xfs_buf* %69)
  %71 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %72 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %71, i32 0, i32 2
  %73 = call i32 @atomic_dec_and_test(i32* %72)
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %94

75:                                               ; preds = %68
  %76 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %77 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %82 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @XBF_ASYNC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %89 = call i32 @xfs_buf_ioend(%struct.xfs_buf* %88)
  br label %93

90:                                               ; preds = %80
  %91 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %92 = call i32 @xfs_buf_ioend_async(%struct.xfs_buf* %91)
  br label %93

93:                                               ; preds = %90, %87
  br label %94

94:                                               ; preds = %93, %68
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %99 = call i32 @xfs_buf_iowait(%struct.xfs_buf* %98)
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %102 = call i32 @xfs_buf_rele(%struct.xfs_buf* %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %24
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @trace_xfs_buf_submit(%struct.xfs_buf*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_FORCED_SHUTDOWN(i32) #1

declare dso_local i32 @xfs_buf_ioerror(%struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_buf_stale(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_ioend(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_hold(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_wait_unpin(%struct.xfs_buf*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @xfs_buf_ioacct_inc(%struct.xfs_buf*) #1

declare dso_local i32 @_xfs_buf_ioapply(%struct.xfs_buf*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @xfs_buf_ioend_async(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_iowait(%struct.xfs_buf*) #1

declare dso_local i32 @xfs_buf_rele(%struct.xfs_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
