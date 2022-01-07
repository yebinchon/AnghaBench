; ModuleID = '/home/carl/AnghaBench/linux/fs/ramfs/extr_file-nommu.c_ramfs_nommu_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ramfs/extr_file-nommu.c_ramfs_nommu_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @ramfs_nommu_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ramfs_nommu_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.inode*, align 8
  %17 = alloca %struct.page**, align 8
  %18 = alloca %struct.page**, align 8
  %19 = alloca %struct.page*, align 8
  %20 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %21 = load %struct.file*, %struct.file** %6, align 8
  %22 = call %struct.inode* @file_inode(%struct.file* %21)
  store %struct.inode* %22, %struct.inode** %16, align 8
  store %struct.page** null, %struct.page*** %17, align 8
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = add i64 %23, %24
  %26 = sub i64 %25, 1
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %12, align 8
  %29 = load %struct.inode*, %struct.inode** %16, align 8
  %30 = call i64 @i_size_read(%struct.inode* %29)
  store i64 %30, i64* %20, align 8
  %31 = load i64, i64* @ENOSYS, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %15, align 8
  %33 = load i64, i64* %20, align 8
  %34 = load i64, i64* @PAGE_SIZE, align 8
  %35 = add i64 %33, %34
  %36 = sub i64 %35, 1
  %37 = load i64, i64* @PAGE_SHIFT, align 8
  %38 = lshr i64 %36, %37
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  br label %115

43:                                               ; preds = %5
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 %44, %45
  %47 = load i64, i64* %12, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %115

50:                                               ; preds = %43
  %51 = load i64, i64* %12, align 8
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.page** @kcalloc(i64 %51, i32 8, i32 %52)
  store %struct.page** %53, %struct.page*** %17, align 8
  %54 = load %struct.page**, %struct.page*** %17, align 8
  %55 = icmp ne %struct.page** %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %112

57:                                               ; preds = %50
  %58 = load %struct.inode*, %struct.inode** %16, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %12, align 8
  %62 = load %struct.page**, %struct.page*** %17, align 8
  %63 = call i64 @find_get_pages(i32 %60, i64* %9, i64 %61, %struct.page** %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %12, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %96

68:                                               ; preds = %57
  %69 = load %struct.page**, %struct.page*** %17, align 8
  store %struct.page** %69, %struct.page*** %18, align 8
  %70 = load %struct.page**, %struct.page*** %18, align 8
  %71 = getelementptr inbounds %struct.page*, %struct.page** %70, i32 1
  store %struct.page** %71, %struct.page*** %18, align 8
  %72 = load %struct.page*, %struct.page** %70, align 8
  store %struct.page* %72, %struct.page** %19, align 8
  %73 = load %struct.page*, %struct.page** %19, align 8
  %74 = getelementptr inbounds %struct.page, %struct.page* %73, i32 1
  store %struct.page* %74, %struct.page** %19, align 8
  %75 = load i64, i64* %12, align 8
  store i64 %75, i64* %14, align 8
  br label %76

76:                                               ; preds = %88, %68
  %77 = load i64, i64* %14, align 8
  %78 = icmp ugt i64 %77, 1
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load %struct.page**, %struct.page*** %18, align 8
  %81 = getelementptr inbounds %struct.page*, %struct.page** %80, i32 1
  store %struct.page** %81, %struct.page*** %18, align 8
  %82 = load %struct.page*, %struct.page** %80, align 8
  %83 = load %struct.page*, %struct.page** %19, align 8
  %84 = getelementptr inbounds %struct.page, %struct.page* %83, i32 1
  store %struct.page* %84, %struct.page** %19, align 8
  %85 = icmp ne %struct.page* %82, %83
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %96

87:                                               ; preds = %79
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %89, -1
  store i64 %90, i64* %14, align 8
  br label %76

91:                                               ; preds = %76
  %92 = load %struct.page**, %struct.page*** %17, align 8
  %93 = getelementptr inbounds %struct.page*, %struct.page** %92, i64 0
  %94 = load %struct.page*, %struct.page** %93, align 8
  %95 = call i64 @page_address(%struct.page* %94)
  store i64 %95, i64* %15, align 8
  br label %96

96:                                               ; preds = %91, %86, %67
  %97 = load %struct.page**, %struct.page*** %17, align 8
  store %struct.page** %97, %struct.page*** %18, align 8
  %98 = load i64, i64* %13, align 8
  store i64 %98, i64* %14, align 8
  br label %99

99:                                               ; preds = %108, %96
  %100 = load i64, i64* %14, align 8
  %101 = icmp ugt i64 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.page**, %struct.page*** %18, align 8
  %104 = getelementptr inbounds %struct.page*, %struct.page** %103, i32 1
  store %struct.page** %104, %struct.page*** %18, align 8
  %105 = load %struct.page*, %struct.page** %103, align 8
  %106 = ptrtoint %struct.page* %105 to i32
  %107 = call i32 @put_page(i32 %106)
  br label %108

108:                                              ; preds = %102
  %109 = load i64, i64* %14, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %14, align 8
  br label %99

111:                                              ; preds = %99
  br label %112

112:                                              ; preds = %111, %56
  %113 = load %struct.page**, %struct.page*** %17, align 8
  %114 = call i32 @kfree(%struct.page** %113)
  br label %115

115:                                              ; preds = %112, %49, %42
  %116 = load i64, i64* %15, align 8
  ret i64 %116
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.page** @kcalloc(i64, i32, i32) #1

declare dso_local i64 @find_get_pages(i32, i64*, i64, %struct.page**) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @kfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
