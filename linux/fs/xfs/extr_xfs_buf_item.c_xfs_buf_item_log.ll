; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_log.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf_item.c_xfs_buf_item_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf_log_item = type { i32, %struct.TYPE_3__*, %struct.xfs_buf* }
%struct.TYPE_3__ = type { i32* }
%struct.xfs_buf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_buf_item_log(%struct.xfs_buf_log_item* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.xfs_buf_log_item*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_buf_log_item* %0, %struct.xfs_buf_log_item** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %11, i32 0, i32 2
  %13 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  store %struct.xfs_buf* %13, %struct.xfs_buf** %10, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %93, %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %17 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %96

20:                                               ; preds = %14
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %96

25:                                               ; preds = %20
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %28 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @BBTOB(i32 %34)
  %36 = add nsw i64 %26, %35
  %37 = sub nsw i64 %36, 1
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %25
  %42 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %43 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @BBTOB(i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, i64* %8, align 8
  br label %93

53:                                               ; preds = %25
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %53
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %6, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %63, %59
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = sub nsw i64 %66, %67
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %8, align 8
  %71 = sub nsw i64 %69, %70
  %72 = load %struct.xfs_buf_log_item*, %struct.xfs_buf_log_item** %4, align 8
  %73 = getelementptr inbounds %struct.xfs_buf_log_item, %struct.xfs_buf_log_item* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = call i32 @xfs_buf_item_log_segment(i64 %68, i64 %71, i32* %80)
  %82 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %83 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @BBTOB(i32 %89)
  %91 = load i64, i64* %8, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %8, align 8
  br label %93

93:                                               ; preds = %65, %41
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %14

96:                                               ; preds = %24, %14
  ret void
}

declare dso_local i64 @BBTOB(i32) #1

declare dso_local i32 @xfs_buf_item_log_segment(i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
