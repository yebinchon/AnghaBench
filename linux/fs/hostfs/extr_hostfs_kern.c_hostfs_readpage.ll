; ModuleID = '/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hostfs/extr_hostfs_kern.c_hostfs_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.page*)* @hostfs_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostfs_readpage(%struct.file* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %9 = load %struct.page*, %struct.page** %4, align 8
  %10 = call i32 @page_offset(%struct.page* %9)
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i8* @kmap(%struct.page* %11)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = call %struct.TYPE_2__* @FILE_HOSTFS_I(%struct.file* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = call i32 @read_file(i32 %16, i32* %6, i8* %17, i64 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @ClearPageUptodate(%struct.page* %23)
  %25 = load %struct.page*, %struct.page** %4, align 8
  %26 = call i32 @SetPageError(%struct.page* %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %8, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %33, %35
  %37 = call i32 @memset(i8* %32, i32 0, i64 %36)
  %38 = load %struct.page*, %struct.page** %4, align 8
  %39 = call i32 @ClearPageError(%struct.page* %38)
  %40 = load %struct.page*, %struct.page** %4, align 8
  %41 = call i32 @SetPageUptodate(%struct.page* %40)
  br label %42

42:                                               ; preds = %28, %22
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = call i32 @flush_dcache_page(%struct.page* %43)
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = call i32 @kunmap(%struct.page* %45)
  %47 = load %struct.page*, %struct.page** %4, align 8
  %48 = call i32 @unlock_page(%struct.page* %47)
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @read_file(i32, i32*, i8*, i64) #1

declare dso_local %struct.TYPE_2__* @FILE_HOSTFS_I(%struct.file*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @ClearPageError(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
