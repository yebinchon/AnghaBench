; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.nfs_open_dir_context* }
%struct.nfs_open_dir_context = type { i64 }
%struct.dir_context = type { i64 }
%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i64*, i32, %struct.dir_context*, %struct.file* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NFS: readdir(%pD2) starting at cookie %llu\0A\00", align 1
@NFSIOS_VFSGETDENTS = common dso_local global i32 0, align 4
@EBADCOOKIE = common dso_local global i32 0, align 4
@ETOOSMALL = common dso_local global i32 0, align 4
@NFS_INO_ADVISE_RDPLUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"NFS: readdir(%pD2) returns %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @nfs_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dir_context*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.nfs_open_dir_context*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  %11 = load %struct.file*, %struct.file** %3, align 8
  %12 = call %struct.dentry* @file_dentry(%struct.file* %11)
  store %struct.dentry* %12, %struct.dentry** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.inode* @d_inode(%struct.dentry* %13)
  store %struct.inode* %14, %struct.inode** %6, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %8, align 8
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %16, align 8
  store %struct.nfs_open_dir_context* %17, %struct.nfs_open_dir_context** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @FILE, align 4
  %19 = load %struct.file*, %struct.file** %3, align 8
  %20 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %21 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 @dfprintk(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.file* %19, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = load i32, i32* @NFSIOS_VFSGETDENTS, align 4
  %27 = call i32 @nfs_inc_stats(%struct.inode* %25, i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = call i32 @memset(%struct.TYPE_8__* %28, i32 0, i32 48)
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 6
  store %struct.file* %30, %struct.file** %32, align 8
  %33 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 5
  store %struct.dir_context* %33, %struct.dir_context** %35, align 8
  %36 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %9, align 8
  %37 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  store i64* %37, i64** %39, align 8
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call %struct.TYPE_9__* @NFS_PROTO(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %48 = call i32 @nfs_use_readdirplus(%struct.inode* %46, %struct.dir_context* %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %52 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %2
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = call i64 @nfs_attribute_cache_expired(%struct.inode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %2
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = load %struct.file*, %struct.file** %3, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @nfs_revalidate_mapping(%struct.inode* %60, i32 %63)
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %59, %55
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %138

69:                                               ; preds = %65
  br label %70

70:                                               ; preds = %131, %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = call i32 @readdir_search_pagecache(%struct.TYPE_8__* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @EBADCOOKIE, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %96

77:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %77
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %95, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %90 = call i32 @uncached_readdir(%struct.TYPE_8__* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %131

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %83, %77
  br label %137

96:                                               ; preds = %70
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @ETOOSMALL, align 4
  %99 = sub nsw i32 0, %98
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %96
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load i32, i32* @NFS_INO_ADVISE_RDPLUS, align 4
  %108 = load %struct.inode*, %struct.inode** %6, align 8
  %109 = call %struct.TYPE_10__* @NFS_I(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = call i32 @clear_bit(i32 %107, i32* %110)
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = call i32 @nfs_zap_caches(%struct.inode* %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32 0, i32* %119, align 4
  br label %131

120:                                              ; preds = %101, %96
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %137

124:                                              ; preds = %120
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %126 = call i32 @nfs_do_filldir(%struct.TYPE_8__* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %137

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %106, %93
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  br i1 %136, label %70, label %137

137:                                              ; preds = %131, %129, %123, %95
  br label %138

138:                                              ; preds = %137, %68
  %139 = load i32, i32* %10, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %141, %138
  %143 = load i32, i32* @FILE, align 4
  %144 = load %struct.file*, %struct.file** %3, align 8
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @dfprintk(i32 %143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.file* %144, i32 %145)
  %147 = load i32, i32* %10, align 4
  ret i32 %147
}

declare dso_local %struct.dentry* @file_dentry(%struct.file*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dfprintk(i32, i8*, %struct.file*, i32) #1

declare dso_local i32 @nfs_inc_stats(%struct.inode*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @NFS_PROTO(%struct.inode*) #1

declare dso_local i32 @nfs_use_readdirplus(%struct.inode*, %struct.dir_context*) #1

declare dso_local i64 @nfs_attribute_cache_expired(%struct.inode*) #1

declare dso_local i32 @nfs_revalidate_mapping(%struct.inode*, i32) #1

declare dso_local i32 @readdir_search_pagecache(%struct.TYPE_8__*) #1

declare dso_local i32 @uncached_readdir(%struct.TYPE_8__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.TYPE_10__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_zap_caches(%struct.inode*) #1

declare dso_local i32 @nfs_do_filldir(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
