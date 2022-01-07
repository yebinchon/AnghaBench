; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page_io.c_end_swap_bio_read.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page_io.c_end_swap_bio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.task_struct*, %struct.TYPE_2__, i64 }
%struct.task_struct = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Read-error on swap-device (%u:%u:%llu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @end_swap_bio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @end_swap_bio_read(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = call %struct.page* @bio_first_page_all(%struct.bio* %5)
  store %struct.page* %6, %struct.page** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  store %struct.task_struct* %9, %struct.task_struct** %4, align 8
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call i32 @SetPageError(%struct.page* %15)
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @ClearPageUptodate(%struct.page* %17)
  %19 = load %struct.bio*, %struct.bio** %2, align 8
  %20 = call i32 @bio_dev(%struct.bio* %19)
  %21 = call i32 @MAJOR(i32 %20)
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = call i32 @bio_dev(%struct.bio* %22)
  %24 = call i32 @MINOR(i32 %23)
  %25 = load %struct.bio*, %struct.bio** %2, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @pr_alert(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i64 %28)
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.page*, %struct.page** %3, align 8
  %32 = call i32 @SetPageUptodate(%struct.page* %31)
  %33 = load %struct.page*, %struct.page** %3, align 8
  %34 = call i32 @swap_slot_free_notify(%struct.page* %33)
  br label %35

35:                                               ; preds = %30, %14
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @unlock_page(%struct.page* %36)
  %38 = load %struct.bio*, %struct.bio** %2, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 0
  %40 = load %struct.task_struct*, %struct.task_struct** %39, align 8
  %41 = call i32 @WRITE_ONCE(%struct.task_struct* %40, i32* null)
  %42 = load %struct.bio*, %struct.bio** %2, align 8
  %43 = call i32 @bio_put(%struct.bio* %42)
  %44 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %45 = icmp ne %struct.task_struct* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %48 = call i32 @blk_wake_io_task(%struct.task_struct* %47)
  %49 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %50 = call i32 @put_task_struct(%struct.task_struct* %49)
  br label %51

51:                                               ; preds = %46, %35
  ret void
}

declare dso_local %struct.page* @bio_first_page_all(%struct.bio*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @pr_alert(i8*, i32, i32, i64) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @bio_dev(%struct.bio*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @swap_slot_free_notify(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @WRITE_ONCE(%struct.task_struct*, i32*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @blk_wake_io_task(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
