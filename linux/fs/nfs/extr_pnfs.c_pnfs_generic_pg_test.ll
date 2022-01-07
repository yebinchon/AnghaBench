; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_generic_pg_test.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_pnfs.c_pnfs_generic_pg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nfs_page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pnfs_generic_pg_test(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1, %struct.nfs_page* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfs_pageio_descriptor*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %5, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %6, align 8
  store %struct.nfs_page* %2, %struct.nfs_page** %7, align 8
  %12 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %13 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %14 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %15 = call i32 @nfs_generic_pg_test(%struct.nfs_pageio_descriptor* %12, %struct.nfs_page* %13, %struct.nfs_page* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %59

19:                                               ; preds = %3
  %20 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %21 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %56

24:                                               ; preds = %19
  %25 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @pnfs_end_offset(i32 %30, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %39 = call i64 @req_offset(%struct.nfs_page* %38)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  store i64 0, i64* %4, align 8
  br label %59

44:                                               ; preds = %24
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i64, i64* %11, align 8
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %44
  br label %56

56:                                               ; preds = %55, %19
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %4, align 8
  br label %59

59:                                               ; preds = %56, %43, %18
  %60 = load i64, i64* %4, align 8
  ret i64 %60
}

declare dso_local i32 @nfs_generic_pg_test(%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*) #1

declare dso_local i64 @pnfs_end_offset(i32, i32) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
