; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_dump_page.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_domain.c_tomoyo_dump_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { %struct.page**, i32 }
%struct.page = type { i32 }
%struct.tomoyo_page_dump = type { i64, %struct.page* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4
@FOLL_FORCE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tomoyo_dump_page(%struct.linux_binprm* %0, i64 %1, %struct.tomoyo_page_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.linux_binprm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tomoyo_page_dump*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tomoyo_page_dump* %2, %struct.tomoyo_page_dump** %7, align 8
  %11 = load %struct.tomoyo_page_dump*, %struct.tomoyo_page_dump** %7, align 8
  %12 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @PAGE_SIZE, align 8
  %17 = load i32, i32* @GFP_NOFS, align 4
  %18 = call i64 @kzalloc(i64 %16, i32 %17)
  %19 = load %struct.tomoyo_page_dump*, %struct.tomoyo_page_dump** %7, align 8
  %20 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.tomoyo_page_dump*, %struct.tomoyo_page_dump** %7, align 8
  %22 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %69

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26, %3
  %28 = load %struct.linux_binprm*, %struct.linux_binprm** %5, align 8
  %29 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %28, i32 0, i32 0
  %30 = load %struct.page**, %struct.page*** %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = udiv i64 %31, %32
  %34 = getelementptr inbounds %struct.page*, %struct.page** %30, i64 %33
  %35 = load %struct.page*, %struct.page** %34, align 8
  store %struct.page* %35, %struct.page** %8, align 8
  %36 = load %struct.page*, %struct.page** %8, align 8
  %37 = load %struct.tomoyo_page_dump*, %struct.tomoyo_page_dump** %7, align 8
  %38 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %37, i32 0, i32 1
  %39 = load %struct.page*, %struct.page** %38, align 8
  %40 = icmp ne %struct.page* %36, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %27
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @PAGE_SIZE, align 8
  %44 = urem i64 %42, %43
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = load %struct.page*, %struct.page** %8, align 8
  %47 = call i8* @kmap_atomic(%struct.page* %46)
  store i8* %47, i8** %10, align 8
  %48 = load %struct.page*, %struct.page** %8, align 8
  %49 = load %struct.tomoyo_page_dump*, %struct.tomoyo_page_dump** %7, align 8
  %50 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %49, i32 0, i32 1
  store %struct.page* %48, %struct.page** %50, align 8
  %51 = load %struct.tomoyo_page_dump*, %struct.tomoyo_page_dump** %7, align 8
  %52 = getelementptr inbounds %struct.tomoyo_page_dump, %struct.tomoyo_page_dump* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = zext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = load i32, i32* %9, align 4
  %63 = zext i32 %62 to i64
  %64 = sub i64 %61, %63
  %65 = call i32 @memcpy(i64 %56, i8* %60, i64 %64)
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @kunmap_atomic(i8* %66)
  br label %68

68:                                               ; preds = %41, %27
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %25
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @kzalloc(i64, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
