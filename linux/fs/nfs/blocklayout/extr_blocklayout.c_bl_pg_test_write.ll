; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_bl_pg_test_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/blocklayout/extr_blocklayout.c_bl_pg_test_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_pageio_descriptor = type { i32 }
%struct.nfs_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*)* @bl_pg_test_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bl_pg_test_write(%struct.nfs_pageio_descriptor* %0, %struct.nfs_page* %1, %struct.nfs_page* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfs_pageio_descriptor*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  store %struct.nfs_pageio_descriptor* %0, %struct.nfs_pageio_descriptor** %5, align 8
  store %struct.nfs_page* %1, %struct.nfs_page** %6, align 8
  store %struct.nfs_page* %2, %struct.nfs_page** %7, align 8
  %8 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %9 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = call i32 @is_aligned_req(%struct.nfs_pageio_descriptor* %8, %struct.nfs_page* %9, i32 %10, i32 1)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %19

14:                                               ; preds = %3
  %15 = load %struct.nfs_pageio_descriptor*, %struct.nfs_pageio_descriptor** %5, align 8
  %16 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %17 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %18 = call i64 @pnfs_generic_pg_test(%struct.nfs_pageio_descriptor* %15, %struct.nfs_page* %16, %struct.nfs_page* %17)
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i64, i64* %4, align 8
  ret i64 %20
}

declare dso_local i32 @is_aligned_req(%struct.nfs_pageio_descriptor*, %struct.nfs_page*, i32, i32) #1

declare dso_local i64 @pnfs_generic_pg_test(%struct.nfs_pageio_descriptor*, %struct.nfs_page*, %struct.nfs_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
