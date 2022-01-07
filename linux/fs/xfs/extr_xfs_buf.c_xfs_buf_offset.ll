; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_offset.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_buf.c_xfs_buf_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i8*, %struct.page**, i64 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xfs_buf_offset(%struct.xfs_buf* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %13 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr i8, i8* %14, i64 %15
  store i8* %16, i8** %3, align 8
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %19 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %5, align 8
  %23 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %23, i32 0, i32 1
  %25 = load %struct.page**, %struct.page*** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  %29 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %28
  %30 = load %struct.page*, %struct.page** %29, align 8
  store %struct.page* %30, %struct.page** %6, align 8
  %31 = load %struct.page*, %struct.page** %6, align 8
  %32 = call i8* @page_address(%struct.page* %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = and i64 %33, %36
  %38 = getelementptr i8, i8* %32, i64 %37
  store i8* %38, i8** %3, align 8
  br label %39

39:                                               ; preds = %17, %11
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i8* @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
