; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode_item.c_xfs_inode_item_format_convert.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode_item.c_xfs_inode_item_format_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_iovec = type { i32, %struct.xfs_inode_log_format_32* }
%struct.xfs_inode_log_format_32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfs_inode_log_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_inode_item_format_convert(%struct.xfs_log_iovec* %0, %struct.xfs_inode_log_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_log_iovec*, align 8
  %5 = alloca %struct.xfs_inode_log_format*, align 8
  %6 = alloca %struct.xfs_inode_log_format_32*, align 8
  store %struct.xfs_log_iovec* %0, %struct.xfs_log_iovec** %4, align 8
  store %struct.xfs_inode_log_format* %1, %struct.xfs_inode_log_format** %5, align 8
  %7 = load %struct.xfs_log_iovec*, %struct.xfs_log_iovec** %4, align 8
  %8 = getelementptr inbounds %struct.xfs_log_iovec, %struct.xfs_log_iovec* %7, i32 0, i32 1
  %9 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %8, align 8
  store %struct.xfs_inode_log_format_32* %9, %struct.xfs_inode_log_format_32** %6, align 8
  %10 = load %struct.xfs_log_iovec*, %struct.xfs_log_iovec** %4, align 8
  %11 = getelementptr inbounds %struct.xfs_log_iovec, %struct.xfs_log_iovec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 40
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EFSCORRUPTED, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %6, align 8
  %20 = getelementptr inbounds %struct.xfs_inode_log_format_32, %struct.xfs_inode_log_format_32* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xfs_inode_log_format*, %struct.xfs_inode_log_format** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_inode_log_format, %struct.xfs_inode_log_format* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 4
  %24 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %6, align 8
  %25 = getelementptr inbounds %struct.xfs_inode_log_format_32, %struct.xfs_inode_log_format_32* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xfs_inode_log_format*, %struct.xfs_inode_log_format** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_inode_log_format, %struct.xfs_inode_log_format* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %6, align 8
  %30 = getelementptr inbounds %struct.xfs_inode_log_format_32, %struct.xfs_inode_log_format_32* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfs_inode_log_format*, %struct.xfs_inode_log_format** %5, align 8
  %33 = getelementptr inbounds %struct.xfs_inode_log_format, %struct.xfs_inode_log_format* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 4
  %34 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %6, align 8
  %35 = getelementptr inbounds %struct.xfs_inode_log_format_32, %struct.xfs_inode_log_format_32* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xfs_inode_log_format*, %struct.xfs_inode_log_format** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_inode_log_format, %struct.xfs_inode_log_format* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %6, align 8
  %40 = getelementptr inbounds %struct.xfs_inode_log_format_32, %struct.xfs_inode_log_format_32* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xfs_inode_log_format*, %struct.xfs_inode_log_format** %5, align 8
  %43 = getelementptr inbounds %struct.xfs_inode_log_format, %struct.xfs_inode_log_format* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %6, align 8
  %45 = getelementptr inbounds %struct.xfs_inode_log_format_32, %struct.xfs_inode_log_format_32* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xfs_inode_log_format*, %struct.xfs_inode_log_format** %5, align 8
  %48 = getelementptr inbounds %struct.xfs_inode_log_format, %struct.xfs_inode_log_format* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.xfs_inode_log_format*, %struct.xfs_inode_log_format** %5, align 8
  %50 = getelementptr inbounds %struct.xfs_inode_log_format, %struct.xfs_inode_log_format* %49, i32 0, i32 3
  %51 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %6, align 8
  %52 = getelementptr inbounds %struct.xfs_inode_log_format_32, %struct.xfs_inode_log_format_32* %51, i32 0, i32 3
  %53 = call i32 @memcpy(i32* %50, i32* %52, i32 4)
  %54 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %6, align 8
  %55 = getelementptr inbounds %struct.xfs_inode_log_format_32, %struct.xfs_inode_log_format_32* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xfs_inode_log_format*, %struct.xfs_inode_log_format** %5, align 8
  %58 = getelementptr inbounds %struct.xfs_inode_log_format, %struct.xfs_inode_log_format* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %6, align 8
  %60 = getelementptr inbounds %struct.xfs_inode_log_format_32, %struct.xfs_inode_log_format_32* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xfs_inode_log_format*, %struct.xfs_inode_log_format** %5, align 8
  %63 = getelementptr inbounds %struct.xfs_inode_log_format, %struct.xfs_inode_log_format* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.xfs_inode_log_format_32*, %struct.xfs_inode_log_format_32** %6, align 8
  %65 = getelementptr inbounds %struct.xfs_inode_log_format_32, %struct.xfs_inode_log_format_32* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.xfs_inode_log_format*, %struct.xfs_inode_log_format** %5, align 8
  %68 = getelementptr inbounds %struct.xfs_inode_log_format, %struct.xfs_inode_log_format* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %18, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
