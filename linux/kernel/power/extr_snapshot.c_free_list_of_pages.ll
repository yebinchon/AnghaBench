; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_free_list_of_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_free_list_of_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linked_page = type { %struct.linked_page* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linked_page*, i32)* @free_list_of_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_list_of_pages(%struct.linked_page* %0, i32 %1) #0 {
  %3 = alloca %struct.linked_page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.linked_page*, align 8
  store %struct.linked_page* %0, %struct.linked_page** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %9, %2
  %7 = load %struct.linked_page*, %struct.linked_page** %3, align 8
  %8 = icmp ne %struct.linked_page* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.linked_page*, %struct.linked_page** %3, align 8
  %11 = getelementptr inbounds %struct.linked_page, %struct.linked_page* %10, i32 0, i32 0
  %12 = load %struct.linked_page*, %struct.linked_page** %11, align 8
  store %struct.linked_page* %12, %struct.linked_page** %5, align 8
  %13 = load %struct.linked_page*, %struct.linked_page** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @free_image_page(%struct.linked_page* %13, i32 %14)
  %16 = load %struct.linked_page*, %struct.linked_page** %5, align 8
  store %struct.linked_page* %16, %struct.linked_page** %3, align 8
  br label %6

17:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free_image_page(%struct.linked_page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
