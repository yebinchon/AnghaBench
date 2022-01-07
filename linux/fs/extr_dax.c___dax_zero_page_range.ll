; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dax.c___dax_zero_page_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dax.c___dax_zero_page_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.dax_device = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__dax_zero_page_range(%struct.block_device* %0, %struct.dax_device* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca %struct.dax_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.block_device* %0, %struct.block_device** %7, align 8
  store %struct.dax_device* %1, %struct.dax_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.block_device*, %struct.block_device** %7, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @dax_range_is_aligned(%struct.block_device* %17, i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = lshr i32 %24, 9
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  store i64 %27, i64* %12, align 8
  %28 = load %struct.block_device*, %struct.block_device** %7, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32, i32* %11, align 4
  %31 = lshr i32 %30, 9
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call i32 @blkdev_issue_zeroout(%struct.block_device* %28, i64 %29, i32 %31, i32 %32, i32 0)
  store i32 %33, i32* %6, align 4
  br label %73

34:                                               ; preds = %5
  %35 = load %struct.block_device*, %struct.block_device** %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i64 @bdev_dax_pgoff(%struct.block_device* %35, i64 %36, i32 %37, i32* %13)
  store i64 %38, i64* %14, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i64, i64* %14, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  br label %73

44:                                               ; preds = %34
  %45 = call i64 (...) @dax_read_lock()
  store i64 %45, i64* %15, align 8
  %46 = load %struct.dax_device*, %struct.dax_device** %8, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i64 @dax_direct_access(%struct.dax_device* %46, i32 %47, i32 1, i8** %16, i32* null)
  store i64 %48, i64* %14, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @dax_read_unlock(i64 %52)
  %54 = load i64, i64* %14, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %73

56:                                               ; preds = %44
  %57 = load i8*, i8** %16, align 8
  %58 = load i32, i32* %10, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr i8, i8* %57, i64 %59
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @memset(i8* %60, i32 0, i32 %61)
  %63 = load %struct.dax_device*, %struct.dax_device** %8, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr i8, i8* %64, i64 %66
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @dax_flush(%struct.dax_device* %63, i8* %67, i32 %68)
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @dax_read_unlock(i64 %70)
  br label %72

72:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %51, %41, %22
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @dax_range_is_aligned(%struct.block_device*, i32, i32) #1

declare dso_local i32 @blkdev_issue_zeroout(%struct.block_device*, i64, i32, i32, i32) #1

declare dso_local i64 @bdev_dax_pgoff(%struct.block_device*, i64, i32, i32*) #1

declare dso_local i64 @dax_read_lock(...) #1

declare dso_local i64 @dax_direct_access(%struct.dax_device*, i32, i32, i8**, i32*) #1

declare dso_local i32 @dax_read_unlock(i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dax_flush(%struct.dax_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
