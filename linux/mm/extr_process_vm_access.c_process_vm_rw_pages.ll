; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_process_vm_access.c_process_vm_rw_pages.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_process_vm_access.c_process_vm_rw_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.iov_iter = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page**, i32, i64, %struct.iov_iter*, i32)* @process_vm_rw_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_vm_rw_pages(%struct.page** %0, i32 %1, i64 %2, %struct.iov_iter* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.page**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.iov_iter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.page** %0, %struct.page*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.iov_iter* %3, %struct.iov_iter** %10, align 8
  store i32 %4, i32* %11, align 4
  br label %15

15:                                               ; preds = %68, %5
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %20 = call i64 @iov_iter_count(%struct.iov_iter* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %69

24:                                               ; preds = %22
  %25 = load %struct.page**, %struct.page*** %7, align 8
  %26 = getelementptr inbounds %struct.page*, %struct.page** %25, i32 1
  store %struct.page** %26, %struct.page*** %7, align 8
  %27 = load %struct.page*, %struct.page** %25, align 8
  store %struct.page* %27, %struct.page** %12, align 8
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub i32 %28, %29
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i64, i64* %9, align 8
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %35, %24
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.page*, %struct.page** %12, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i64, i64* %13, align 8
  %44 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %45 = call i64 @copy_page_from_iter(%struct.page* %41, i32 %42, i64 %43, %struct.iov_iter* %44)
  store i64 %45, i64* %14, align 8
  %46 = load %struct.page*, %struct.page** %12, align 8
  %47 = call i32 @set_page_dirty_lock(%struct.page* %46)
  br label %54

48:                                               ; preds = %37
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %53 = call i64 @copy_page_to_iter(%struct.page* %49, i32 %50, i64 %51, %struct.iov_iter* %52)
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i64, i64* %14, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %13, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.iov_iter*, %struct.iov_iter** %10, align 8
  %63 = call i64 @iov_iter_count(%struct.iov_iter* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %6, align 4
  br label %70

68:                                               ; preds = %61, %54
  store i32 0, i32* %8, align 4
  br label %15

69:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i64 @copy_page_from_iter(%struct.page*, i32, i64, %struct.iov_iter*) #1

declare dso_local i32 @set_page_dirty_lock(%struct.page*) #1

declare dso_local i64 @copy_page_to_iter(%struct.page*, i32, i64, %struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
