; ModuleID = '/home/carl/AnghaBench/linux/fs/romfs/extr_mmap-nommu.c_romfs_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/fs/romfs/extr_mmap-nommu.c_romfs_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i64 }
%struct.TYPE_6__ = type { i64 }

@ENOSYS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @romfs_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @romfs_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.mtd_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %22, align 8
  store %struct.inode* %23, %struct.inode** %12, align 8
  %24 = load %struct.inode*, %struct.inode** %12, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.mtd_info*, %struct.mtd_info** %27, align 8
  store %struct.mtd_info* %28, %struct.mtd_info** %13, align 8
  %29 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %30 = icmp ne %struct.mtd_info* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @ENOSYS, align 4
  %33 = sub nsw i32 0, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %6, align 8
  br label %133

35:                                               ; preds = %5
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = add i64 %36, %37
  %39 = sub i64 %38, 1
  %40 = load i64, i64* @PAGE_SHIFT, align 8
  %41 = lshr i64 %39, %40
  store i64 %41, i64* %17, align 8
  %42 = load %struct.inode*, %struct.inode** %12, align 8
  %43 = call i64 @i_size_read(%struct.inode* %42)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @PAGE_SHIFT, align 8
  %46 = shl i64 %44, %45
  store i64 %46, i64* %15, align 8
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = add i64 %47, %48
  %50 = sub i64 %49, 1
  %51 = load i64, i64* @PAGE_SHIFT, align 8
  %52 = lshr i64 %50, %51
  store i64 %52, i64* %16, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %16, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %35
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %10, align 8
  %59 = sub i64 %57, %58
  %60 = load i64, i64* %17, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56, %35
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub nsw i64 0, %63
  store i64 %64, i64* %6, align 8
  br label %133

65:                                               ; preds = %56
  %66 = load i64, i64* %8, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i64, i64* @EINVAL, align 8
  %70 = sub nsw i64 0, %69
  store i64 %70, i64* %6, align 8
  br label %133

71:                                               ; preds = %65
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %74 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ugt i64 %72, %75
  br i1 %76, label %85, label %77

77:                                               ; preds = %71
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %80 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PAGE_SHIFT, align 8
  %83 = lshr i64 %81, %82
  %84 = icmp uge i64 %78, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77, %71
  %86 = load i64, i64* @EINVAL, align 8
  %87 = sub nsw i64 0, %86
  store i64 %87, i64* %6, align 8
  br label %133

88:                                               ; preds = %77
  %89 = load %struct.inode*, %struct.inode** %12, align 8
  %90 = call %struct.TYPE_6__* @ROMFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %15, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %97 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp uge i64 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %88
  %101 = load i64, i64* @EINVAL, align 8
  %102 = sub nsw i64 0, %101
  store i64 %102, i64* %6, align 8
  br label %133

103:                                              ; preds = %88
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %104, %105
  %107 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %108 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ugt i64 %106, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %113 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %15, align 8
  %116 = sub i64 %114, %115
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %111, %103
  %118 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @mtd_get_unmapped_area(%struct.mtd_info* %118, i64 %119, i64 %120, i64 %121)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* @EOPNOTSUPP, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load i32, i32* @ENOSYS, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %18, align 4
  br label %130

130:                                              ; preds = %127, %117
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  store i64 %132, i64* %6, align 8
  br label %133

133:                                              ; preds = %130, %100, %85, %68, %62, %31
  %134 = load i64, i64* %6, align 8
  ret i64 %134
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @ROMFS_I(%struct.inode*) #1

declare dso_local i32 @mtd_get_unmapped_area(%struct.mtd_info*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
