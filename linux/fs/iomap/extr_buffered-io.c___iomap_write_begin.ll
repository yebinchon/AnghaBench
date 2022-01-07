; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c___iomap_write_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c___iomap_write_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.iomap = type { i32 }
%struct.iomap_page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, %struct.page*, %struct.iomap*)* @__iomap_write_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iomap_write_begin(%struct.inode* %0, i32 %1, i32 %2, %struct.page* %3, %struct.iomap* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.iomap*, align 8
  %12 = alloca %struct.iomap_page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.page* %3, %struct.page** %10, align 8
  store %struct.iomap* %4, %struct.iomap** %11, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = load %struct.page*, %struct.page** %10, align 8
  %23 = call %struct.iomap_page* @iomap_page_create(%struct.inode* %21, %struct.page* %22)
  store %struct.iomap_page* %23, %struct.iomap_page** %12, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = call i32 @i_blocksize(%struct.inode* %24)
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %27, 1
  %29 = xor i32 %28, -1
  %30 = and i32 %26, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add i32 %31, %32
  %34 = load i32, i32* %13, align 4
  %35 = add i32 %33, %34
  %36 = sub i32 %35, 1
  %37 = load i32, i32* %13, align 4
  %38 = sub nsw i32 %37, 1
  %39 = xor i32 %38, -1
  %40 = and i32 %36, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @offset_in_page(i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %43, %44
  store i32 %45, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %46 = load %struct.page*, %struct.page** %10, align 8
  %47 = call i64 @PageUptodate(%struct.page* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %104

50:                                               ; preds = %5
  br label %51

51:                                               ; preds = %96, %50
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = load %struct.iomap_page*, %struct.iomap_page** %12, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %14, align 4
  %56 = sub nsw i32 %54, %55
  %57 = call i32 @iomap_adjust_read_range(%struct.inode* %52, %struct.iomap_page* %53, i32* %14, i32 %56, i32* %18, i32* %19)
  %58 = load i32, i32* %19, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %102

61:                                               ; preds = %51
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %19, align 4
  %69 = add i32 %67, %68
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %95

75:                                               ; preds = %71
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %18, align 4
  %78 = load i32, i32* %19, align 4
  %79 = add i32 %77, %78
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %75, %65
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.page*, %struct.page** %10, align 8
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.iomap*, %struct.iomap** %11, align 8
  %90 = call i32 @iomap_read_page_sync(%struct.inode* %82, i32 %83, %struct.page* %84, i32 %85, i32 %86, i32 %87, i32 %88, %struct.iomap* %89)
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %20, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  br label %102

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %94, %75, %71
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %51, label %102

102:                                              ; preds = %96, %93, %60
  %103 = load i32, i32* %20, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %49
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local %struct.iomap_page* @iomap_page_create(%struct.inode*, %struct.page*) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @iomap_adjust_read_range(%struct.inode*, %struct.iomap_page*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @iomap_read_page_sync(%struct.inode*, i32, %struct.page*, i32, i32, i32, i32, %struct.iomap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
