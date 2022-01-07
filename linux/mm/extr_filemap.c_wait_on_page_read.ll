; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_filemap.c_wait_on_page_read.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_filemap.c_wait_on_page_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.page*)* @wait_on_page_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @wait_on_page_read(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %3 = load %struct.page*, %struct.page** %2, align 8
  %4 = call i32 @IS_ERR(%struct.page* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load %struct.page*, %struct.page** %2, align 8
  %8 = call i32 @wait_on_page_locked(%struct.page* %7)
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call i32 @PageUptodate(%struct.page* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load %struct.page*, %struct.page** %2, align 8
  %14 = call i32 @put_page(%struct.page* %13)
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.page* @ERR_PTR(i32 %16)
  store %struct.page* %17, %struct.page** %2, align 8
  br label %18

18:                                               ; preds = %12, %6
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %20
}

declare dso_local i32 @IS_ERR(%struct.page*) #1

declare dso_local i32 @wait_on_page_locked(%struct.page*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local %struct.page* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
