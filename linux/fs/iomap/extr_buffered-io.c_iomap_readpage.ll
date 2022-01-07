; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iomap_ops = type { i32 }
%struct.iomap_readpage_ctx = type { i32, i64, %struct.page* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@iomap_readpage_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iomap_readpage(%struct.page* %0, %struct.iomap_ops* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.iomap_ops*, align 8
  %5 = alloca %struct.iomap_readpage_ctx, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.iomap_ops* %1, %struct.iomap_ops** %4, align 8
  %9 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %5, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %5, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %5, i32 0, i32 2
  %12 = load %struct.page*, %struct.page** %3, align 8
  store %struct.page* %12, %struct.page** %11, align 8
  %13 = load %struct.page*, %struct.page** %3, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %45, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = call i64 @page_offset(%struct.page* %24)
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub i32 %29, %30
  %32 = load %struct.iomap_ops*, %struct.iomap_ops** %4, align 8
  %33 = load i32, i32* @iomap_readpage_actor, align 4
  %34 = call i64 @iomap_apply(%struct.inode* %23, i64 %28, i32 %31, i32 0, %struct.iomap_ops* %32, %struct.iomap_readpage_ctx* %5, i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = load i64, i64* %8, align 8
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @WARN_ON_ONCE(i32 %40)
  %42 = load %struct.page*, %struct.page** %3, align 8
  %43 = call i32 @SetPageError(%struct.page* %42)
  br label %51

44:                                               ; preds = %22
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = load i32, i32* %7, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %7, align 4
  br label %18

51:                                               ; preds = %37, %18
  %52 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %5, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %5, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @submit_bio(i64 %57)
  %59 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @WARN_ON_ONCE(i32 %63)
  br label %71

65:                                               ; preds = %51
  %66 = getelementptr inbounds %struct.iomap_readpage_ctx, %struct.iomap_readpage_ctx* %5, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @WARN_ON_ONCE(i32 %67)
  %69 = load %struct.page*, %struct.page** %3, align 8
  %70 = call i32 @unlock_page(%struct.page* %69)
  br label %71

71:                                               ; preds = %65, %55
  ret i32 0
}

declare dso_local i64 @iomap_apply(%struct.inode*, i64, i32, i32, %struct.iomap_ops*, %struct.iomap_readpage_ctx*, i32) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @SetPageError(%struct.page*) #1

declare dso_local i32 @submit_bio(i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
