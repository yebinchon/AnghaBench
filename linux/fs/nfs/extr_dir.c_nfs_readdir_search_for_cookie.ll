; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_search_for_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_dir.c_nfs_readdir_search_for_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_cache_array = type { i32, i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64*, i64, i32, i32, %struct.TYPE_10__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.nfs_open_dir_context* }
%struct.nfs_open_dir_context = type { i64, i32, i64 }
%struct.nfs_inode = type { i64 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [122 x i8] c"NFS: directory %pD2 contains a readdir loop.Please contact your server vendor.  The file: %.*s has duplicate cookie %llu\0A\00", align 1
@ELOOP = common dso_local global i32 0, align 4
@EBADCOOKIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_cache_array*, %struct.TYPE_11__*)* @nfs_readdir_search_for_cookie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_search_for_cookie(%struct.nfs_cache_array* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_cache_array*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_inode*, align 8
  %10 = alloca %struct.nfs_open_dir_context*, align 8
  store %struct.nfs_cache_array* %0, %struct.nfs_cache_array** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %11 = load i32, i32* @EAGAIN, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %144, %2
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %147

19:                                               ; preds = %13
  %20 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %20, i32 0, i32 3
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %143

33:                                               ; preds = %19
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = call i32 @file_inode(%struct.TYPE_12__* %36)
  %38 = call %struct.nfs_inode* @NFS_I(i32 %37)
  store %struct.nfs_inode* %38, %struct.nfs_inode** %9, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 5
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %42, align 8
  store %struct.nfs_open_dir_context* %43, %struct.nfs_open_dir_context** %10, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  store i64 %49, i64* %7, align 8
  %50 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %51 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %54 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %33
  %58 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %59 = call i32 @nfs_readdir_inode_mapping_valid(%struct.nfs_inode* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %57, %33
  %62 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %63 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %62, i32 0, i32 1
  store i32 0, i32* %63, align 8
  %64 = load %struct.nfs_inode*, %struct.nfs_inode** %9, align 8
  %65 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %68 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %134

69:                                               ; preds = %57
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %70, %75
  br i1 %76, label %77, label %133

77:                                               ; preds = %69
  %78 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %79 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %124

82:                                               ; preds = %77
  %83 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %84 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %85, %89
  br i1 %90, label %91, label %124

91:                                               ; preds = %82
  %92 = call i64 (...) @printk_ratelimit()
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %91
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %99 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %98, i32 0, i32 3
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %108 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %107, i32 0, i32 3
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @pr_notice(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str, i64 0, i64 0), %struct.TYPE_12__* %97, i32 %106, i32 %115, i64 %119)
  br label %121

121:                                              ; preds = %94, %91
  %122 = load i32, i32* @ELOOP, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %8, align 4
  br label %168

124:                                              ; preds = %82, %77
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %130 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load %struct.nfs_open_dir_context*, %struct.nfs_open_dir_context** %10, align 8
  %132 = getelementptr inbounds %struct.nfs_open_dir_context, %struct.nfs_open_dir_context* %131, i32 0, i32 1
  store i32 -1, i32* %132, align 8
  br label %133

133:                                              ; preds = %124, %69
  br label %134

134:                                              ; preds = %133, %61
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  store i64 %135, i64* %139, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  store i32 0, i32* %3, align 4
  br label %170

143:                                              ; preds = %19
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %6, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %6, align 4
  br label %13

147:                                              ; preds = %13
  %148 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %149 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp sge i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %147
  %153 = load i32, i32* @EBADCOOKIE, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %8, align 4
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %4, align 8
  %160 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %152
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  store i32 1, i32* %165, align 4
  br label %166

166:                                              ; preds = %163, %152
  br label %167

167:                                              ; preds = %166, %147
  br label %168

168:                                              ; preds = %167, %121
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %134
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.nfs_inode* @NFS_I(i32) #1

declare dso_local i32 @file_inode(%struct.TYPE_12__*) #1

declare dso_local i32 @nfs_readdir_inode_mapping_valid(%struct.nfs_inode*) #1

declare dso_local i64 @printk_ratelimit(...) #1

declare dso_local i32 @pr_notice(i8*, %struct.TYPE_12__*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
