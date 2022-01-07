; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_vfs_lock_two_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_vfs_lock_two_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.page*)* @vfs_lock_two_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_lock_two_pages(%struct.page* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = load %struct.page*, %struct.page** %3, align 8
  %6 = getelementptr inbounds %struct.page, %struct.page* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %7, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @swap(%struct.page* %13, %struct.page* %14)
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i32 @lock_page(%struct.page* %17)
  %19 = load %struct.page*, %struct.page** %3, align 8
  %20 = load %struct.page*, %struct.page** %4, align 8
  %21 = icmp ne %struct.page* %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @lock_page(%struct.page* %23)
  br label %25

25:                                               ; preds = %22, %16
  ret void
}

declare dso_local i32 @swap(%struct.page*, %struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
