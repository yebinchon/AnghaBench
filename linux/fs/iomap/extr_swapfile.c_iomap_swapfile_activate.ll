; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_swapfile.c_iomap_swapfile_activate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_swapfile.c_iomap_swapfile_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i64, i64, i64 }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iomap_ops = type { i32 }
%struct.iomap_swapfile_info = type { i32, i64, i64, i64, %struct.TYPE_2__, %struct.swap_info_struct* }
%struct.TYPE_2__ = type { i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@IOMAP_REPORT = common dso_local global i32 0, align 4
@iomap_swapfile_activate_actor = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iomap_swapfile_activate(%struct.swap_info_struct* %0, %struct.file* %1, i64* %2, %struct.iomap_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.swap_info_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.iomap_ops*, align 8
  %10 = alloca %struct.iomap_swapfile_info, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i64* %2, i64** %8, align 8
  store %struct.iomap_ops* %3, %struct.iomap_ops** %9, align 8
  %16 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 2
  store i64 -1, i64* %18, align 8
  %19 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 4
  %21 = bitcast %struct.TYPE_2__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 8, i1 false)
  %22 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 5
  %23 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  store %struct.swap_info_struct* %23, %struct.swap_info_struct** %22, align 8
  %24 = load %struct.file*, %struct.file** %7, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.address_space*, %struct.address_space** %25, align 8
  store %struct.address_space* %26, %struct.address_space** %11, align 8
  %27 = load %struct.address_space*, %struct.address_space** %11, align 8
  %28 = getelementptr inbounds %struct.address_space, %struct.address_space* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %12, align 8
  store i32 0, i32* %13, align 4
  %30 = load %struct.inode*, %struct.inode** %12, align 8
  %31 = call i32 @i_size_read(%struct.inode* %30)
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i32 @ALIGN_DOWN(i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = call i32 @vfs_fsync(%struct.file* %34, i32 1)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %5, align 4
  br label %99

40:                                               ; preds = %4
  br label %41

41:                                               ; preds = %56, %40
  %42 = load i32, i32* %14, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load %struct.inode*, %struct.inode** %12, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @IOMAP_REPORT, align 4
  %49 = load %struct.iomap_ops*, %struct.iomap_ops** %9, align 8
  %50 = load i32, i32* @iomap_swapfile_activate_actor, align 4
  %51 = call i32 @iomap_apply(%struct.inode* %45, i32 %46, i32 %47, i32 %48, %struct.iomap_ops* %49, %struct.iomap_swapfile_info* %10, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %5, align 4
  br label %99

56:                                               ; preds = %44
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %14, align 4
  br label %41

63:                                               ; preds = %41
  %64 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = call i32 @iomap_swapfile_add_extent(%struct.iomap_swapfile_info* %10)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %5, align 4
  br label %99

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74, %63
  %76 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 1, %77
  %79 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %78, %80
  %82 = load i64*, i64** %8, align 8
  store i64 %81, i64* %82, align 8
  %83 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %86 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, 1
  %90 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %91 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, 1
  %95 = load %struct.swap_info_struct*, %struct.swap_info_struct** %6, align 8
  %96 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = getelementptr inbounds %struct.iomap_swapfile_info, %struct.iomap_swapfile_info* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %75, %72, %54, %38
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ALIGN_DOWN(i32, i32) #2

declare dso_local i32 @i_size_read(%struct.inode*) #2

declare dso_local i32 @vfs_fsync(%struct.file*, i32) #2

declare dso_local i32 @iomap_apply(%struct.inode*, i32, i32, i32, %struct.iomap_ops*, %struct.iomap_swapfile_info*, i32) #2

declare dso_local i32 @iomap_swapfile_add_extent(%struct.iomap_swapfile_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
