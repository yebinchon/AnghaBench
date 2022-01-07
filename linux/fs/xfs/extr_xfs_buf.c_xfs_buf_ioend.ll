; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_ioend.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_ioend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32, i32, i32 (%struct.xfs_buf*)*, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.xfs_buf*)* }

@XBF_READ = common dso_local global i32 0, align 4
@_RET_IP_ = common dso_local global i32 0, align 4
@XBF_WRITE = common dso_local global i32 0, align 4
@XBF_READ_AHEAD = common dso_local global i32 0, align 4
@XBF_DONE = common dso_local global i32 0, align 4
@XBF_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_ioend(%struct.xfs_buf* %0) #0 {
  %2 = alloca %struct.xfs_buf*, align 8
  %3 = alloca i32, align 4
  store %struct.xfs_buf* %0, %struct.xfs_buf** %2, align 8
  %4 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %5 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @XBF_READ, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %10 = load i32, i32* @_RET_IP_, align 4
  %11 = call i32 @trace_xfs_buf_iodone(%struct.xfs_buf* %9, i32 %10)
  %12 = load i32, i32* @XBF_READ, align 4
  %13 = load i32, i32* @XBF_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @XBF_READ_AHEAD, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %19 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %23 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %1
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %28 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %33 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %34 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @xfs_buf_ioerror(%struct.xfs_buf* %32, i64 %35)
  br label %37

37:                                               ; preds = %31, %26, %1
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %42 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %40
  %46 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %47 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %52 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %51, i32 0, i32 2
  %53 = load i32 (%struct.xfs_buf*)*, i32 (%struct.xfs_buf*)** %52, align 8
  %54 = icmp ne i32 (%struct.xfs_buf*)* %53, null
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %59 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32 (%struct.xfs_buf*)*, i32 (%struct.xfs_buf*)** %61, align 8
  %63 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %64 = call i32 %62(%struct.xfs_buf* %63)
  br label %65

65:                                               ; preds = %50, %45, %40, %37
  %66 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %67 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @XBF_DONE, align 4
  %72 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %73 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %78 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %77, i32 0, i32 2
  %79 = load i32 (%struct.xfs_buf*)*, i32 (%struct.xfs_buf*)** %78, align 8
  %80 = icmp ne i32 (%struct.xfs_buf*)* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %83 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %82, i32 0, i32 2
  %84 = load i32 (%struct.xfs_buf*)*, i32 (%struct.xfs_buf*)** %83, align 8
  %85 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %86 = call i32 %84(%struct.xfs_buf* %85)
  br label %102

87:                                               ; preds = %76
  %88 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %89 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @XBF_ASYNC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %96 = call i32 @xfs_buf_relse(%struct.xfs_buf* %95)
  br label %101

97:                                               ; preds = %87
  %98 = load %struct.xfs_buf*, %struct.xfs_buf** %2, align 8
  %99 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %98, i32 0, i32 1
  %100 = call i32 @complete(i32* %99)
  br label %101

101:                                              ; preds = %97, %94
  br label %102

102:                                              ; preds = %101, %81
  ret void
}

declare dso_local i32 @trace_xfs_buf_iodone(%struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_buf_ioerror(%struct.xfs_buf*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_buf_relse(%struct.xfs_buf*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
