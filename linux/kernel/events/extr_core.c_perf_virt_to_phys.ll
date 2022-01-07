; ModuleID = '/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_virt_to_phys.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/events/extr_core.c_perf_virt_to_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.page = type { i32 }

@TASK_SIZE = common dso_local global i32 0, align 4
@VMALLOC_START = common dso_local global i32 0, align 4
@VMALLOC_END = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @perf_virt_to_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_virt_to_phys(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store %struct.page* null, %struct.page** %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @TASK_SIZE, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i64 @virt_addr_valid(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @VMALLOC_START, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @VMALLOC_END, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i64 @virt_to_phys(i8* %30)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %27, %23, %13
  br label %57

34:                                               ; preds = %9
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %50

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @__get_user_pages_fast(i32 %40, i32 1, i32 0, %struct.page** %5)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = call i32 @page_to_phys(%struct.page* %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = srem i32 %46, %47
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %39, %34
  %51 = load %struct.page*, %struct.page** %5, align 8
  %52 = icmp ne %struct.page* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.page*, %struct.page** %5, align 8
  %55 = call i32 @put_page(%struct.page* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %8
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @virt_addr_valid(i8*) #1

declare dso_local i64 @virt_to_phys(i8*) #1

declare dso_local i32 @__get_user_pages_fast(i32, i32, i32, %struct.page**) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
