; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_new_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_dir.c_new_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_leaf = type { i32, i8*, i8*, i8*, i8*, i64, i8*, i64, i32 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_dirent = type { i32 }
%struct.timespec64 = type { i32, i32 }

@GFS2_METATYPE_LF = common dso_local global i32 0, align 4
@GFS2_FORMAT_LF = common dso_local global i32 0, align 4
@GFS2_FORMAT_DE = common dso_local global i32 0, align 4
@empty_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gfs2_leaf* (%struct.inode*, %struct.buffer_head**, i32)* @new_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gfs2_leaf* @new_leaf(%struct.inode* %0, %struct.buffer_head** %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_leaf*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.gfs2_leaf*, align 8
  %14 = alloca %struct.gfs2_dirent*, align 8
  %15 = alloca %struct.timespec64, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %8, align 8
  store i32 1, i32* %9, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call i64 @current_time(%struct.inode* %18)
  %20 = bitcast %struct.timespec64* %15 to i64*
  store i64 %19, i64* %20, align 4
  %21 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %22 = call i32 @gfs2_alloc_blocks(%struct.gfs2_inode* %21, i32* %10, i32* %9, i32 0, i32* null)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.gfs2_leaf* null, %struct.gfs2_leaf** %4, align 8
  br label %100

26:                                               ; preds = %3
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.buffer_head* @gfs2_meta_new(i32 %29, i32 %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %12, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %33 = icmp ne %struct.buffer_head* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store %struct.gfs2_leaf* null, %struct.gfs2_leaf** %4, align 8
  br label %100

35:                                               ; preds = %26
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = call i32 @GFS2_SB(%struct.inode* %36)
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @gfs2_trans_remove_revoke(i32 %37, i32 %38, i32 1)
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %41 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %44 = call i32 @gfs2_trans_add_meta(i32 %42, %struct.buffer_head* %43)
  %45 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %46 = load i32, i32* @GFS2_METATYPE_LF, align 4
  %47 = load i32, i32* @GFS2_FORMAT_LF, align 4
  %48 = call i32 @gfs2_metatype_set(%struct.buffer_head* %45, i32 %46, i32 %47)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %52, %struct.gfs2_leaf** %13, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @cpu_to_be16(i32 %53)
  %55 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %56 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 8
  %57 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %58 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @GFS2_FORMAT_DE, align 4
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %62 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %64 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %66 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_be64(i32 %67)
  %69 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %70 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = call i8* @cpu_to_be32(i32 1)
  %72 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %73 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %72, i32 0, i32 3
  store i8* %71, i8** %73, align 8
  %74 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %15, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %78 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %15, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @cpu_to_be64(i32 %80)
  %82 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %83 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %85 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @memset(i32 %86, i32 0, i32 4)
  %88 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  %89 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %88, i64 1
  %90 = bitcast %struct.gfs2_leaf* %89 to %struct.gfs2_dirent*
  store %struct.gfs2_dirent* %90, %struct.gfs2_dirent** %14, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %92 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %93, 72
  %95 = load %struct.gfs2_dirent*, %struct.gfs2_dirent** %14, align 8
  %96 = call i32 @gfs2_qstr2dirent(i32* @empty_name, i64 %94, %struct.gfs2_dirent* %95)
  %97 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %98 = load %struct.buffer_head**, %struct.buffer_head*** %6, align 8
  store %struct.buffer_head* %97, %struct.buffer_head** %98, align 8
  %99 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %13, align 8
  store %struct.gfs2_leaf* %99, %struct.gfs2_leaf** %4, align 8
  br label %100

100:                                              ; preds = %35, %34, %25
  %101 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %4, align 8
  ret %struct.gfs2_leaf* %101
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i64 @current_time(%struct.inode*) #1

declare dso_local i32 @gfs2_alloc_blocks(%struct.gfs2_inode*, i32*, i32*, i32, i32*) #1

declare dso_local %struct.buffer_head* @gfs2_meta_new(i32, i32) #1

declare dso_local i32 @gfs2_trans_remove_revoke(i32, i32, i32) #1

declare dso_local i32 @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_metatype_set(%struct.buffer_head*, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @gfs2_qstr2dirent(i32*, i64, %struct.gfs2_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
