; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_pg_test.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_pg_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.nfs_page = type { i32 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*)* @filelayout_pg_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @filelayout_pg_test(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1, %struct.nfs_page* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfs_pageio_descriptor*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %5, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %6, align 8
  store %struct.nfs_page* %2, %struct.nfs_page** %7, align 8
  %14 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %15 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %12, align 8
  %20 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %21 = getelementptr inbounds %struct.nfs_pageio_descriptor, %struct.nfs_pageio_descriptor* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call %struct.TYPE_5__* @FILELAYOUT_LSEG(%struct.TYPE_6__* %22)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %27 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %28 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %29 = call i32 @pnfs_generic_pg_test(%struct.nfs_pageio_descriptor* %26, %struct.nfs_page* %27, %struct.nfs_page* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %80

33:                                               ; preds = %3
  %34 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %35 = icmp ne %struct.nfs_page* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %38 = call i64 @req_offset(%struct.nfs_page* %37)
  %39 = load i64, i64* %12, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %9, align 8
  %41 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %42 = call i64 @req_offset(%struct.nfs_page* %41)
  %43 = load i64, i64* %12, align 8
  %44 = sub nsw i64 %42, %43
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i32 @do_div(i64 %45, i64 %46)
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* %13, align 8
  %50 = call i32 @do_div(i64 %48, i64 %49)
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  store i64 0, i64* %4, align 8
  br label %80

55:                                               ; preds = %36
  br label %56

56:                                               ; preds = %55, %33
  %57 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %58 = call i64 @req_offset(%struct.nfs_page* %57)
  %59 = load i64, i64* %12, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @div_u64_rem(i64 %60, i64 %61, i64* %11)
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %13, align 8
  %65 = icmp sgt i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @WARN_ON_ONCE(i32 %66)
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  store i64 0, i64* %4, align 8
  br label %80

72:                                               ; preds = %56
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %11, align 8
  %75 = trunc i64 %74 to i32
  %76 = zext i32 %75 to i64
  %77 = sub nsw i64 %73, %76
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @min(i64 %77, i32 %78)
  store i64 %79, i64* %4, align 8
  br label %80

80:                                               ; preds = %72, %71, %54, %32
  %81 = load i64, i64* %4, align 8
  ret i64 %81
}

declare dso_local %struct.TYPE_5__* @FILELAYOUT_LSEG(%struct.TYPE_6__*) #1

declare dso_local i32 @pnfs_generic_pg_test(%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*) #1

declare dso_local i64 @req_offset(%struct.nfs_page*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @div_u64_rem(i64, i64, i64*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
