; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_write_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @orangefs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.address_space*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.page*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.address_space* %1, %struct.address_space** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.page* %5, %struct.page** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load %struct.page*, %struct.page** %13, align 8
  %19 = getelementptr inbounds %struct.page, %struct.page* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %15, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %12, align 4
  %25 = add i32 %23, %24
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load %struct.inode*, %struct.inode** %15, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ugt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %7
  %32 = load %struct.inode*, %struct.inode** %15, align 8
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @i_size_write(%struct.inode* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %7
  %36 = load %struct.page*, %struct.page** %13, align 8
  %37 = call i32 @PageUptodate(%struct.page* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %83, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load %struct.page*, %struct.page** %13, align 8
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add i32 %49, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = sub i32 %52, %53
  %55 = call i32 @zero_user(%struct.page* %48, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %47, %39
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.page*, %struct.page** %13, align 8
  %59 = call i32 @page_offset(%struct.page* %58)
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add i32 %66, %67
  %69 = load %struct.inode*, %struct.inode** %15, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %65, %61
  %74 = load %struct.page*, %struct.page** %13, align 8
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add i32 %75, %76
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = call i32 @zero_user_segment(%struct.page* %74, i32 %77, i32 %78)
  %80 = load %struct.page*, %struct.page** %13, align 8
  %81 = call i32 @SetPageUptodate(%struct.page* %80)
  br label %82

82:                                               ; preds = %73, %65, %56
  br label %83

83:                                               ; preds = %82, %35
  %84 = load %struct.page*, %struct.page** %13, align 8
  %85 = call i32 @set_page_dirty(%struct.page* %84)
  %86 = load %struct.page*, %struct.page** %13, align 8
  %87 = call i32 @unlock_page(%struct.page* %86)
  %88 = load %struct.page*, %struct.page** %13, align 8
  %89 = call i32 @put_page(%struct.page* %88)
  %90 = load %struct.file*, %struct.file** %8, align 8
  %91 = call i32 @file_inode(%struct.file* %90)
  %92 = call i32 @mark_inode_dirty_sync(i32 %91)
  %93 = load i32, i32* %12, align 4
  ret i32 %93
}

declare dso_local i32 @i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i32) #1

declare dso_local i32 @page_offset(%struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @mark_inode_dirty_sync(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
