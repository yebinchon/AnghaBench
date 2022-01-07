; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_migrate.c_fallback_migrate_page.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_migrate.c_fallback_migrate_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { i32 }
%struct.page = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)* @fallback_migrate_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fallback_migrate_page(%struct.address_space* %0, %struct.page* %1, %struct.page* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.address_space* %0, %struct.address_space** %6, align 8
  store %struct.page* %1, %struct.page** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.page*, %struct.page** %8, align 8
  %11 = call i64 @PageDirty(%struct.page* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %16 [
    i32 129, label %15
    i32 128, label %15
  ]

15:                                               ; preds = %13, %13
  br label %19

16:                                               ; preds = %13
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %49

19:                                               ; preds = %15
  %20 = load %struct.address_space*, %struct.address_space** %6, align 8
  %21 = load %struct.page*, %struct.page** %8, align 8
  %22 = call i32 @writeout(%struct.address_space* %20, %struct.page* %21)
  store i32 %22, i32* %5, align 4
  br label %49

23:                                               ; preds = %4
  %24 = load %struct.page*, %struct.page** %8, align 8
  %25 = call i64 @page_has_private(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @try_to_release_page(%struct.page* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 129
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %37, %35 ], [ %40, %38 ]
  store i32 %42, i32* %5, align 4
  br label %49

43:                                               ; preds = %27, %23
  %44 = load %struct.address_space*, %struct.address_space** %6, align 8
  %45 = load %struct.page*, %struct.page** %7, align 8
  %46 = load %struct.page*, %struct.page** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @migrate_page(%struct.address_space* %44, %struct.page* %45, %struct.page* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %41, %19, %16
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @PageDirty(%struct.page*) #1

declare dso_local i32 @writeout(%struct.address_space*, %struct.page*) #1

declare dso_local i64 @page_has_private(%struct.page*) #1

declare dso_local i32 @try_to_release_page(%struct.page*, i32) #1

declare dso_local i32 @migrate_page(%struct.address_space*, %struct.page*, %struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
