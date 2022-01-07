; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_migrate_page_copy.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_migrate_page_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @migrate_page_copy(%struct.page* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %5 = load %struct.page*, %struct.page** %4, align 8
  %6 = call i64 @PageHuge(%struct.page* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i64 @PageTransHuge(%struct.page* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8, %2
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = load %struct.page*, %struct.page** %4, align 8
  %15 = call i32 @copy_huge_page(%struct.page* %13, %struct.page* %14)
  br label %20

16:                                               ; preds = %8
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = load %struct.page*, %struct.page** %4, align 8
  %19 = call i32 @copy_highpage(%struct.page* %17, %struct.page* %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i32 @migrate_page_states(%struct.page* %21, %struct.page* %22)
  ret void
}

declare dso_local i64 @PageHuge(%struct.page*) #1

declare dso_local i64 @PageTransHuge(%struct.page*) #1

declare dso_local i32 @copy_huge_page(%struct.page*, %struct.page*) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local i32 @migrate_page_states(%struct.page*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
