; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_write_disk_quota.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_write_disk_quota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_quota = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_quota*, i64)* @gfs2_write_disk_quota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_write_disk_quota(%struct.gfs2_inode* %0, %struct.gfs2_quota* %1, i64 %2) #0 {
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_quota*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_quota* %1, %struct.gfs2_quota** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 4, i32* %9, align 4
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @PAGE_SHIFT, align 8
  %16 = lshr i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @offset_in_page(i64 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add i32 %19, %20
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add i32 %25, %26
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %24, %3
  %31 = load %struct.gfs2_quota*, %struct.gfs2_quota** %5, align 8
  %32 = bitcast %struct.gfs2_quota* %31 to i8*
  store i8* %32, i8** %13, align 8
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub i32 %37, %38
  %40 = call i32 @gfs2_write_buf_to_page(%struct.gfs2_inode* %33, i64 %34, i32 %35, i8* %36, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = sub i64 0, %55
  %57 = getelementptr i8, i8* %53, i64 %56
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @gfs2_write_buf_to_page(%struct.gfs2_inode* %47, i64 %49, i32 0, i8* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %46, %43, %30
  %61 = load i32, i32* %12, align 4
  ret i32 %61
}

declare dso_local i32 @offset_in_page(i64) #1

declare dso_local i32 @gfs2_write_buf_to_page(%struct.gfs2_inode*, i64, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
