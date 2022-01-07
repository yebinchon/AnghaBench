; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_check_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dev.c_fuse_check_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32, i32*, i32 }

@PAGE_FLAGS_CHECK_AT_PREP = common dso_local global i32 0, align 4
@PG_locked = common dso_local global i32 0, align 4
@PG_referenced = common dso_local global i32 0, align 4
@PG_uptodate = common dso_local global i32 0, align 4
@PG_lru = common dso_local global i32 0, align 4
@PG_active = common dso_local global i32 0, align 4
@PG_reclaim = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"trying to steal weird page\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"  page=%p index=%li flags=%08lx, count=%i, mapcount=%i, mapping=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @fuse_check_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_check_page(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  %4 = load %struct.page*, %struct.page** %3, align 8
  %5 = call i64 @page_mapcount(%struct.page* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %1
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %42, label %12

12:                                               ; preds = %7
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = call i32 @page_count(%struct.page* %13)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @PAGE_FLAGS_CHECK_AT_PREP, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @PG_locked, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @PG_referenced, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i32, i32* @PG_uptodate, align 4
  %28 = shl i32 1, %27
  %29 = or i32 %26, %28
  %30 = load i32, i32* @PG_lru, align 4
  %31 = shl i32 1, %30
  %32 = or i32 %29, %31
  %33 = load i32, i32* @PG_active, align 4
  %34 = shl i32 1, %33
  %35 = or i32 %32, %34
  %36 = load i32, i32* @PG_reclaim, align 4
  %37 = shl i32 1, %36
  %38 = or i32 %35, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %21, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %16, %12, %7, %1
  %43 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.page*, %struct.page** %3, align 8
  %45 = load %struct.page*, %struct.page** %3, align 8
  %46 = getelementptr inbounds %struct.page, %struct.page* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.page*, %struct.page** %3, align 8
  %49 = getelementptr inbounds %struct.page, %struct.page* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.page*, %struct.page** %3, align 8
  %52 = call i32 @page_count(%struct.page* %51)
  %53 = load %struct.page*, %struct.page** %3, align 8
  %54 = call i64 @page_mapcount(%struct.page* %53)
  %55 = load %struct.page*, %struct.page** %3, align 8
  %56 = getelementptr inbounds %struct.page, %struct.page* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), %struct.page* %44, i32 %47, i32 %50, i32 %52, i64 %54, i32* %57)
  store i32 1, i32* %2, align 4
  br label %60

59:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
