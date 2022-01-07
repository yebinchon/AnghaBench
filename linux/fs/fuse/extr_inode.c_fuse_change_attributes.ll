; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_change_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_inode.c_fuse_change_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, %struct.timespec64 }
%struct.timespec64 = type { i32, i32 }
%struct.fuse_attr = type { i64, i32, i32 }
%struct.fuse_conn = type { i32, i64, i32 }
%struct.fuse_inode = type { i64, i32, i32 }

@FUSE_I_SIZE_UNSTABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_change_attributes(%struct.inode* %0, %struct.fuse_attr* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fuse_attr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fuse_conn*, align 8
  %10 = alloca %struct.fuse_inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.timespec64, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timespec64, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.fuse_attr* %1, %struct.fuse_attr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %16)
  store %struct.fuse_conn* %17, %struct.fuse_conn** %9, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %18)
  store %struct.fuse_inode* %19, %struct.fuse_inode** %10, align 8
  %20 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %21 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %24 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %23, i32 0, i32 1
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %4
  %29 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %30 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28, %4
  %35 = load i32, i32* @FUSE_I_SIZE_UNSTABLE, align 4
  %36 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %37 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %36, i32 0, i32 2
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %28
  %41 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %42 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock(i32* %42)
  br label %128

44:                                               ; preds = %34
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 3
  %47 = bitcast %struct.timespec64* %13 to i8*
  %48 = bitcast %struct.timespec64* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 8 %48, i64 8, i1 false)
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @fuse_change_attributes_common(%struct.inode* %49, %struct.fuse_attr* %50, i64 %51)
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %44
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @S_ISREG(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %58, %44
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %67 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @i_size_write(%struct.inode* %65, i64 %68)
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.fuse_inode*, %struct.fuse_inode** %10, align 8
  %72 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %71, i32 0, i32 1
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %128, label %76

76:                                               ; preds = %70
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @S_ISREG(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %128

82:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %85 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %82
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %91 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @truncate_pagecache(%struct.inode* %89, i64 %92)
  %94 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %95 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %88
  store i32 1, i32* %14, align 4
  br label %99

99:                                               ; preds = %98, %88
  br label %119

100:                                              ; preds = %82
  %101 = load %struct.fuse_conn*, %struct.fuse_conn** %9, align 8
  %102 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %15, i32 0, i32 0
  %107 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %108 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %106, align 4
  %110 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %15, i32 0, i32 1
  %111 = load %struct.fuse_attr*, %struct.fuse_attr** %6, align 8
  %112 = getelementptr inbounds %struct.fuse_attr, %struct.fuse_attr* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %110, align 4
  %114 = call i32 @timespec64_equal(%struct.timespec64* %13, %struct.timespec64* %15)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %105
  store i32 1, i32* %14, align 4
  br label %117

117:                                              ; preds = %116, %105
  br label %118

118:                                              ; preds = %117, %100
  br label %119

119:                                              ; preds = %118, %99
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @invalidate_inode_pages2(i32 %125)
  br label %127

127:                                              ; preds = %122, %119
  br label %128

128:                                              ; preds = %40, %127, %76, %70
  ret void
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fuse_change_attributes_common(%struct.inode*, %struct.fuse_attr*, i64) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @truncate_pagecache(%struct.inode*, i64) #1

declare dso_local i32 @timespec64_equal(%struct.timespec64*, %struct.timespec64*) #1

declare dso_local i32 @invalidate_inode_pages2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
