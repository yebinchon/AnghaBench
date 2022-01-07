; ModuleID = '/home/carl/AnghaBench/linux/fs/fscache/extr_page.c_fscache_mark_page_cached.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fscache/extr_page.c_fscache_mark_page_cached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_retrieval = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.fscache_cookie* }
%struct.fscache_cookie = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32, %struct.page*)*, i32 }
%struct.page = type { i32 }

@fscache_page_cached = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"- mark %p{%lx}\00", align 1
@fscache_mark_page_cached.once_only = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Cookie type %s marked page %lx multiple times\0A\00", align 1
@fscache_n_marks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fscache_mark_page_cached(%struct.fscache_retrieval* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.fscache_retrieval*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.fscache_cookie*, align 8
  store %struct.fscache_retrieval* %0, %struct.fscache_retrieval** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %6 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %3, align 8
  %7 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.fscache_cookie*, %struct.fscache_cookie** %10, align 8
  store %struct.fscache_cookie* %11, %struct.fscache_cookie** %5, align 8
  %12 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = load i32, i32* @fscache_page_cached, align 4
  %15 = call i32 @trace_fscache_page(%struct.fscache_cookie* %12, %struct.page* %13, i32 %14)
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = load %struct.page*, %struct.page** %4, align 8
  %18 = getelementptr inbounds %struct.page, %struct.page* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.page* %16, i32 %19)
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i64 @TestSetPageFsCache(%struct.page* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %2
  %25 = load i32, i32* @fscache_mark_page_cached.once_only, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  store i32 1, i32* @fscache_mark_page_cached.once_only, align 4
  %28 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %29 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.page*, %struct.page** %4, align 8
  %34 = getelementptr inbounds %struct.page, %struct.page* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %27, %24
  br label %38

38:                                               ; preds = %37, %2
  %39 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %40 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32, %struct.page*)*, i32 (i32, i32, %struct.page*)** %42, align 8
  %44 = icmp ne i32 (i32, i32, %struct.page*)* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %38
  %46 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %47 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32 (i32, i32, %struct.page*)*, i32 (i32, i32, %struct.page*)** %49, align 8
  %51 = load %struct.fscache_cookie*, %struct.fscache_cookie** %5, align 8
  %52 = getelementptr inbounds %struct.fscache_cookie, %struct.fscache_cookie* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %3, align 8
  %55 = getelementptr inbounds %struct.fscache_retrieval, %struct.fscache_retrieval* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.page*, %struct.page** %4, align 8
  %58 = call i32 %50(i32 %53, i32 %56, %struct.page* %57)
  br label %59

59:                                               ; preds = %45, %38
  ret void
}

declare dso_local i32 @trace_fscache_page(%struct.fscache_cookie*, %struct.page*, i32) #1

declare dso_local i32 @_debug(i8*, %struct.page*, i32) #1

declare dso_local i64 @TestSetPageFsCache(%struct.page*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
