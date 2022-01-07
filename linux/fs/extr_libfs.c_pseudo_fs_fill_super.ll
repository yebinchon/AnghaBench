; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_libfs.c_pseudo_fs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_libfs.c_pseudo_fs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.fs_context = type { %struct.pseudo_fs_context* }
%struct.pseudo_fs_context = type { i32, i32, i64, i32 }
%struct.inode = type { i32, i32, i32, i32, i32 }

@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@simple_super_operations = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @pseudo_fs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseudo_fs_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.pseudo_fs_context*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %8 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %8, i32 0, i32 0
  %10 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %9, align 8
  store %struct.pseudo_fs_context* %10, %struct.pseudo_fs_context** %6, align 8
  %11 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 8
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 7
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 6
  store i32 %17, i32* %19, align 4
  %20 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %6, align 8
  %21 = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %6, align 8
  %26 = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = inttoptr i64 %27 to i32*
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32* [ %30, %29 ], [ @simple_super_operations, %31 ]
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 4
  store i32* %33, i32** %35, align 8
  %36 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %6, align 8
  %37 = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = call %struct.inode* @new_inode(%struct.super_block* %43)
  store %struct.inode* %44, %struct.inode** %7, align 8
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = icmp ne %struct.inode* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %32
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %85

50:                                               ; preds = %32
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @S_IFDIR, align 4
  %54 = load i32, i32* @S_IRUSR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @S_IWUSR, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call i32 @current_time(%struct.inode* %60)
  %62 = load %struct.inode*, %struct.inode** %7, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 4
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 4
  store i32 %61, i32* %67, align 4
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = call i32 @d_make_root(%struct.inode* %68)
  %70 = load %struct.super_block*, %struct.super_block** %4, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.super_block*, %struct.super_block** %4, align 8
  %73 = getelementptr inbounds %struct.super_block, %struct.super_block* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %50
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %85

79:                                               ; preds = %50
  %80 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %6, align 8
  %81 = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.super_block*, %struct.super_block** %4, align 8
  %84 = getelementptr inbounds %struct.super_block, %struct.super_block* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %79, %76, %47
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
