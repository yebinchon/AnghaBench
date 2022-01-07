; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_seek.c_page_cache_seek_hole_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_seek.c_page_cache_seek_hole_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.pagevec = type { %struct.page** }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@SEEK_HOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i64, i64, i32)* @page_cache_seek_hole_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @page_cache_seek_hole_data(%struct.inode* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.pagevec, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @PAGE_SHIFT, align 8
  %19 = ashr i64 %17, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @PAGE_SIZE, align 8
  %24 = call i64 @DIV_ROUND_UP(i64 %22, i64 %23)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i64, i64* @ENOENT, align 8
  %30 = sub nsw i64 0, %29
  store i64 %30, i64* %5, align 8
  br label %95

31:                                               ; preds = %4
  %32 = call i32 @pagevec_init(%struct.pagevec* %13)
  br label %33

33:                                               ; preds = %71, %31
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %11, align 8
  %38 = sub nsw i64 %37, 1
  %39 = call i32 @pagevec_lookup_range(%struct.pagevec* %13, i32 %36, i64* %10, i64 %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %75

43:                                               ; preds = %33
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %66, %43
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %13, i32 0, i32 0
  %50 = load %struct.page**, %struct.page*** %49, align 8
  %51 = load i32, i32* %15, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.page*, %struct.page** %50, i64 %52
  %54 = load %struct.page*, %struct.page** %53, align 8
  store %struct.page* %54, %struct.page** %16, align 8
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = load %struct.page*, %struct.page** %16, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @page_seek_hole_data(%struct.inode* %55, %struct.page* %56, i64* %12, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %81

61:                                               ; preds = %48
  %62 = load %struct.page*, %struct.page** %16, align 8
  %63 = call i64 @page_offset(%struct.page* %62)
  %64 = load i64, i64* @PAGE_SIZE, align 8
  %65 = add nsw i64 %63, %64
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %15, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %15, align 4
  br label %44

69:                                               ; preds = %44
  %70 = call i32 @pagevec_release(%struct.pagevec* %13)
  br label %71

71:                                               ; preds = %69
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %11, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %33, label %75

75:                                               ; preds = %71, %42
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @SEEK_HOLE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %89

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %60
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add nsw i64 %83, %84
  %86 = icmp slt i64 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %92

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88, %79
  %90 = load i64, i64* @ENOENT, align 8
  %91 = sub nsw i64 0, %90
  store i64 %91, i64* %12, align 8
  br label %92

92:                                               ; preds = %89, %87
  %93 = call i32 @pagevec_release(%struct.pagevec* %13)
  %94 = load i64, i64* %12, align 8
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %92, %28
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @pagevec_init(%struct.pagevec*) #1

declare dso_local i32 @pagevec_lookup_range(%struct.pagevec*, i32, i64*, i64) #1

declare dso_local i64 @page_seek_hole_data(%struct.inode*, %struct.page*, i64*, i32) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @pagevec_release(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
