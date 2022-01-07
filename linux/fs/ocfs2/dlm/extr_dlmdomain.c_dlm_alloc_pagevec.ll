; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_alloc_pagevec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_alloc_pagevec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Allocated DLM hash pagevec; %d pages (%lu expected), %lu buckets per page\0A\00", align 1
@DLM_HASH_PAGES = common dso_local global i64 0, align 8
@DLM_BUCKETS_PER_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i32)* @dlm_alloc_pagevec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @dlm_alloc_pagevec(i32 %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8** @kmalloc_array(i32 %6, i32 8, i32 %7)
  store i8** %8, i8*** %4, align 8
  %9 = load i8**, i8*** %4, align 8
  %10 = icmp ne i8** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8** null, i8*** %2, align 8
  br label %41

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %28, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @__get_free_page(i32 %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8* %20, i8** %24, align 8
  %25 = icmp ne i8* %20, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %37

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %13

31:                                               ; preds = %13
  %32 = load i32, i32* %3, align 4
  %33 = load i64, i64* @DLM_HASH_PAGES, align 8
  %34 = load i64, i64* @DLM_BUCKETS_PER_PAGE, align 8
  %35 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %33, i64 %34)
  %36 = load i8**, i8*** %4, align 8
  store i8** %36, i8*** %2, align 8
  br label %41

37:                                               ; preds = %26
  %38 = load i8**, i8*** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @dlm_free_pagevec(i8** %38, i32 %39)
  store i8** null, i8*** %2, align 8
  br label %41

41:                                               ; preds = %37, %31, %11
  %42 = load i8**, i8*** %2, align 8
  ret i8** %42
}

declare dso_local i8** @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64, i64) #1

declare dso_local i32 @dlm_free_pagevec(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
