; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_migrate_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_migrate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32 }

@MIGRATEPAGE_SUCCESS = common dso_local global i32 0, align 4
@MIGRATE_SYNC_NO_COPY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @migrate_page(%struct.address_space* %0, %struct.page* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.page*, %struct.page** %8, align 8
  %12 = call i32 @PageWriteback(%struct.page* %11)
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.address_space*, %struct.address_space** %6, align 8
  %15 = load %struct.page*, %struct.page** %7, align 8
  %16 = load %struct.page*, %struct.page** %8, align 8
  %17 = call i32 @migrate_page_move_mapping(%struct.address_space* %14, %struct.page* %15, %struct.page* %16, i32 0)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  br label %37

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @MIGRATE_SYNC_NO_COPY, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %7, align 8
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = call i32 @migrate_page_copy(%struct.page* %28, %struct.page* %29)
  br label %35

31:                                               ; preds = %23
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = load %struct.page*, %struct.page** %8, align 8
  %34 = call i32 @migrate_page_states(%struct.page* %32, %struct.page* %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @MIGRATEPAGE_SUCCESS, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %21
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @PageWriteback(%struct.page*) #1

declare dso_local i32 @migrate_page_move_mapping(%struct.address_space*, %struct.page*, %struct.page*, i32) #1

declare dso_local i32 @migrate_page_copy(%struct.page*, %struct.page*) #1

declare dso_local i32 @migrate_page_states(%struct.page*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
