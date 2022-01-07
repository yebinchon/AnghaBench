; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_fsync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_file.c_gfs2_fsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.address_space* }
%struct.address_space = type { i64, %struct.inode* }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }

@I_DIRTY_ALL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@I_DIRTY_PAGES = common dso_local global i32 0, align 4
@I_DIRTY_SYNC = common dso_local global i32 0, align 4
@I_DIRTY_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32)* @gfs2_fsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_fsync(%struct.file* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gfs2_inode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.address_space*, %struct.address_space** %17, align 8
  store %struct.address_space* %18, %struct.address_space** %10, align 8
  %19 = load %struct.address_space*, %struct.address_space** %10, align 8
  %20 = getelementptr inbounds %struct.address_space, %struct.address_space* %19, i32 0, i32 1
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %11, align 8
  %22 = load %struct.inode*, %struct.inode** %11, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @I_DIRTY_ALL, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.inode*, %struct.inode** %11, align 8
  %28 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %27)
  store %struct.gfs2_inode* %28, %struct.gfs2_inode** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %29 = load %struct.address_space*, %struct.address_space** %10, align 8
  %30 = getelementptr inbounds %struct.address_space, %struct.address_space* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %4
  %34 = load %struct.address_space*, %struct.address_space** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @filemap_fdatawrite_range(%struct.address_space* %34, i32 %35, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %5, align 4
  br label %110

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %4
  %46 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %47 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @I_DIRTY_PAGES, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32, i32* @I_DIRTY_SYNC, align 4
  %59 = load i32, i32* @I_DIRTY_TIME, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %57, %54
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %64
  %68 = load %struct.inode*, %struct.inode** %11, align 8
  %69 = call i32 @sync_inode_metadata(%struct.inode* %68, i32 1)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %5, align 4
  br label %110

74:                                               ; preds = %67
  %75 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %76 = call i64 @gfs2_is_jdata(%struct.gfs2_inode* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.file*, %struct.file** %6, align 8
  %80 = call i32 @file_write_and_wait(%struct.file* %79)
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %5, align 4
  br label %110

86:                                               ; preds = %81
  %87 = load %struct.gfs2_inode*, %struct.gfs2_inode** %13, align 8
  %88 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @gfs2_ail_flush(i32 %89, i32 1)
  br label %91

91:                                               ; preds = %86, %64
  %92 = load %struct.address_space*, %struct.address_space** %10, align 8
  %93 = getelementptr inbounds %struct.address_space, %struct.address_space* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.file*, %struct.file** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @file_fdatawait_range(%struct.file* %97, i32 %98, i32 %99)
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %14, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %14, align 4
  br label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %15, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %108, %84, %72, %42
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawrite_range(%struct.address_space*, i32, i32) #1

declare dso_local i64 @gfs2_is_jdata(%struct.gfs2_inode*) #1

declare dso_local i32 @sync_inode_metadata(%struct.inode*, i32) #1

declare dso_local i32 @file_write_and_wait(%struct.file*) #1

declare dso_local i32 @gfs2_ail_flush(i32, i32) #1

declare dso_local i32 @file_fdatawait_range(%struct.file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
