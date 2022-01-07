; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_swsusp_save.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_swsusp_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Creating hibernation image:\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Need to copy %u pages\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Not enough free memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@copy_bm = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Memory allocation failed\0A\00", align 1
@orig_bm = common dso_local global i32 0, align 4
@nr_copy_pages = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@nr_meta_pages = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"Hibernation image created (%d pages copied)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swsusp_save() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @drain_local_pages(i32* null)
  %6 = call i32 (...) @count_data_pages()
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @count_highmem_pages()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = add i32 %8, %9
  %11 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @enough_free_mem(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %0
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %44

20:                                               ; preds = %0
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @swsusp_alloc(i32* @copy_bm, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %1, align 4
  br label %44

29:                                               ; preds = %20
  %30 = call i32 @drain_local_pages(i32* null)
  %31 = call i32 @copy_data_pages(i32* @copy_bm, i32* @orig_bm)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  store i32 %35, i32* @nr_copy_pages, align 4
  %36 = load i32, i32* %2, align 4
  %37 = zext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i32 @DIV_ROUND_UP(i32 %39, i32 %40)
  store i32 %41, i32* @nr_meta_pages, align 4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %29, %25, %16
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @drain_local_pages(i32*) #1

declare dso_local i32 @count_data_pages(...) #1

declare dso_local i32 @count_highmem_pages(...) #1

declare dso_local i32 @enough_free_mem(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @swsusp_alloc(i32*, i32, i32) #1

declare dso_local i32 @copy_data_pages(i32*, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
