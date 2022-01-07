; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_set_range_uptodate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_set_range_uptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iomap_page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @iomap_set_range_uptodate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iomap_set_range_uptodate(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iomap_page*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.page*, %struct.page** %4, align 8
  %14 = call %struct.iomap_page* @to_iomap_page(%struct.page* %13)
  store %struct.iomap_page* %14, %struct.iomap_page** %7, align 8
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %8, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = lshr i32 %20, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %25, %26
  %28 = sub i32 %27, 1
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = lshr i32 %28, %31
  store i32 %32, i32* %10, align 4
  store i32 1, i32* %12, align 4
  %33 = load %struct.iomap_page*, %struct.iomap_page** %7, align 8
  %34 = icmp ne %struct.iomap_page* %33, null
  br i1 %34, label %35, label %71

35:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %67, %35
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = call i32 @i_blocksize(%struct.inode* %39)
  %41 = udiv i32 %38, %40
  %42 = icmp ult i32 %37, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp uge i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.iomap_page*, %struct.iomap_page** %7, align 8
  %54 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @set_bit(i32 %52, i32 %55)
  br label %66

57:                                               ; preds = %47, %43
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.iomap_page*, %struct.iomap_page** %7, align 8
  %60 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @test_bit(i32 %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %64, %57
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %36

70:                                               ; preds = %36
  br label %71

71:                                               ; preds = %70, %3
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = load %struct.page*, %struct.page** %4, align 8
  %76 = call i32 @PageError(%struct.page* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load %struct.page*, %struct.page** %4, align 8
  %80 = call i32 @SetPageUptodate(%struct.page* %79)
  br label %81

81:                                               ; preds = %78, %74, %71
  ret void
}

declare dso_local %struct.iomap_page* @to_iomap_page(%struct.page*) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @PageError(%struct.page*) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
