; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_short_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_file.c_fuse_short_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fuse_args_pages = type { i32, i32* }
%struct.fuse_conn = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i64, %struct.fuse_args_pages*)* @fuse_short_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuse_short_read(%struct.inode* %0, i32 %1, i64 %2, %struct.fuse_args_pages* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.fuse_args_pages*, align 8
  %9 = alloca %struct.fuse_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store %struct.fuse_args_pages* %3, %struct.fuse_args_pages** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %14)
  store %struct.fuse_conn* %15, %struct.fuse_conn** %9, align 8
  %16 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %17 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %4
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = and i64 %25, %28
  store i64 %29, i64* %12, align 8
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %48, %20
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %8, align 8
  %34 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %8, align 8
  %39 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = call i32 @zero_user_segment(i32 %44, i64 %45, i32 %46)
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %31

51:                                               ; preds = %31
  br label %65

52:                                               ; preds = %4
  %53 = load %struct.fuse_args_pages*, %struct.fuse_args_pages** %8, align 8
  %54 = getelementptr inbounds %struct.fuse_args_pages, %struct.fuse_args_pages* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @page_offset(i32 %57)
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %58, %59
  store i64 %60, i64* %13, align 8
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @fuse_read_update_size(%struct.inode* %61, i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %52, %51
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @zero_user_segment(i32, i64, i32) #1

declare dso_local i64 @page_offset(i32) #1

declare dso_local i32 @fuse_read_update_size(%struct.inode*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
