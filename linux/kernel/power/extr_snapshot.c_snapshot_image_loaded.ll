; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_snapshot_image_loaded.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_snapshot_image_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snapshot_handle = type { i64 }

@nr_copy_pages = common dso_local global i64 0, align 8
@nr_meta_pages = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snapshot_image_loaded(%struct.snapshot_handle* %0) #0 {
  %2 = alloca %struct.snapshot_handle*, align 8
  store %struct.snapshot_handle* %0, %struct.snapshot_handle** %2, align 8
  %3 = load i64, i64* @nr_copy_pages, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = call i32 (...) @last_highmem_page_copied()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load %struct.snapshot_handle*, %struct.snapshot_handle** %2, align 8
  %10 = getelementptr inbounds %struct.snapshot_handle, %struct.snapshot_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @nr_meta_pages, align 8
  %13 = load i64, i64* @nr_copy_pages, align 8
  %14 = add nsw i64 %12, %13
  %15 = icmp sle i64 %11, %14
  br label %16

16:                                               ; preds = %8, %5, %1
  %17 = phi i1 [ true, %5 ], [ true, %1 ], [ %15, %8 ]
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  ret i32 %19
}

declare dso_local i32 @last_highmem_page_copied(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
