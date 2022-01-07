; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_namei.c_hpfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32 }
%struct.dentry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, i8*, i32 }
%struct.hpfs_dirent = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @hpfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.fnode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.hpfs_dirent, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load %struct.dentry*, %struct.dentry** %7, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  store %struct.inode* null, %struct.inode** %17, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @hpfs_chk_name(i8* %27, i32* %11)
  store i32 %28, i32* %18, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %4
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %18, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ %37, %35 ], [ %39, %38 ]
  store i32 %41, i32* %5, align 4
  br label %230

42:                                               ; preds = %4
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_11__* @hpfs_sb(i32 %45)
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %230

53:                                               ; preds = %42
  %54 = load %struct.inode*, %struct.inode** %6, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @hpfs_lock(i32 %56)
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %18, align 4
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %63)
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.fnode* @hpfs_alloc_fnode(i32 %62, i32 %66, i32* %14, %struct.buffer_head** %12)
  store %struct.fnode* %67, %struct.fnode** %13, align 8
  %68 = load %struct.fnode*, %struct.fnode** %13, align 8
  %69 = icmp ne %struct.fnode* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %53
  br label %224

71:                                               ; preds = %53
  %72 = call i32 @memset(%struct.hpfs_dirent* %16, i32 0, i32 48)
  %73 = load i32, i32* %8, align 4
  %74 = and i32 %73, 146
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 0
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %76, %71
  %79 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 46
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 2
  store i32 %85, i32* %86, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i8* @cpu_to_le32(i32 %87)
  %89 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 6
  store i8* %88, i8** %89, align 8
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @local_get_seconds(i32 %92)
  %94 = call i8* @cpu_to_le32(i32 %93)
  %95 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 4
  store i8* %94, i8** %95, align 8
  %96 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 3
  store i8* %94, i8** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %6, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call %struct.inode* @new_inode(i32 %100)
  store %struct.inode* %101, %struct.inode** %17, align 8
  %102 = load %struct.inode*, %struct.inode** %17, align 8
  %103 = icmp ne %struct.inode* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %78
  br label %216

105:                                              ; preds = %78
  %106 = load %struct.inode*, %struct.inode** %17, align 8
  %107 = call i32 @hpfs_init_inode(%struct.inode* %106)
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.inode*, %struct.inode** %17, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.inode*, %struct.inode** %6, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.inode*, %struct.inode** %17, align 8
  %115 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %114)
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 8
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %16, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @le32_to_cpu(i8* %121)
  %123 = call i32 @local_to_gmt(i32 %119, i32 %122)
  %124 = load %struct.inode*, %struct.inode** %17, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 6
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 8
  %127 = load %struct.inode*, %struct.inode** %17, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 7
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  store i32 %123, i32* %129, align 8
  %130 = load %struct.inode*, %struct.inode** %17, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i32 %123, i32* %132, align 8
  %133 = load %struct.inode*, %struct.inode** %17, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i64 0, i64* %135, align 8
  %136 = load %struct.inode*, %struct.inode** %17, align 8
  %137 = getelementptr inbounds %struct.inode, %struct.inode* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  %139 = load %struct.inode*, %struct.inode** %17, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load %struct.inode*, %struct.inode** %17, align 8
  %143 = call %struct.TYPE_12__* @hpfs_i(%struct.inode* %142)
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = call i32 (...) @current_fsuid()
  %146 = load %struct.inode*, %struct.inode** %17, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 4
  %148 = call i32 (...) @current_fsgid()
  %149 = load %struct.inode*, %struct.inode** %17, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 4
  store i32 %148, i32* %150, align 8
  %151 = load %struct.inode*, %struct.inode** %17, align 8
  %152 = call i32 @set_nlink(%struct.inode* %151, i32 1)
  %153 = load %struct.inode*, %struct.inode** %17, align 8
  %154 = getelementptr inbounds %struct.inode, %struct.inode* %153, i32 0, i32 3
  store i64 0, i64* %154, align 8
  %155 = load %struct.inode*, %struct.inode** %17, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.inode*, %struct.inode** %17, align 8
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @init_special_inode(%struct.inode* %157, i32 %158, i32 %159)
  %161 = load %struct.inode*, %struct.inode** %6, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @hpfs_add_dirent(%struct.inode* %161, i8* %162, i32 %163, %struct.hpfs_dirent* %16)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %168

167:                                              ; preds = %105
  br label %213

168:                                              ; preds = %105
  %169 = load i32, i32* %15, align 4
  %170 = icmp eq i32 %169, -1
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load i32, i32* @EEXIST, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %18, align 4
  br label %213

174:                                              ; preds = %168
  %175 = load i32, i32* %11, align 4
  %176 = load %struct.fnode*, %struct.fnode** %13, align 8
  %177 = getelementptr inbounds %struct.fnode, %struct.fnode* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.fnode*, %struct.fnode** %13, align 8
  %179 = getelementptr inbounds %struct.fnode, %struct.fnode* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i8*, i8** %10, align 8
  %182 = load i32, i32* %11, align 4
  %183 = icmp ugt i32 %182, 15
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  br label %187

185:                                              ; preds = %174
  %186 = load i32, i32* %11, align 4
  br label %187

187:                                              ; preds = %185, %184
  %188 = phi i32 [ 15, %184 ], [ %186, %185 ]
  %189 = call i32 @memcpy(i32 %180, i8* %181, i32 %188)
  %190 = load %struct.inode*, %struct.inode** %6, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i8* @cpu_to_le32(i32 %192)
  %194 = load %struct.fnode*, %struct.fnode** %13, align 8
  %195 = getelementptr inbounds %struct.fnode, %struct.fnode* %194, i32 0, i32 1
  store i8* %193, i8** %195, align 8
  %196 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %197 = call i32 @mark_buffer_dirty(%struct.buffer_head* %196)
  %198 = load %struct.inode*, %struct.inode** %17, align 8
  %199 = call i32 @insert_inode_hash(%struct.inode* %198)
  %200 = load %struct.inode*, %struct.inode** %17, align 8
  %201 = call i32 @hpfs_write_inode_nolock(%struct.inode* %200)
  %202 = load %struct.inode*, %struct.inode** %6, align 8
  %203 = call i32 @hpfs_update_directory_times(%struct.inode* %202)
  %204 = load %struct.dentry*, %struct.dentry** %7, align 8
  %205 = load %struct.inode*, %struct.inode** %17, align 8
  %206 = call i32 @d_instantiate(%struct.dentry* %204, %struct.inode* %205)
  %207 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %208 = call i32 @brelse(%struct.buffer_head* %207)
  %209 = load %struct.inode*, %struct.inode** %6, align 8
  %210 = getelementptr inbounds %struct.inode, %struct.inode* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @hpfs_unlock(i32 %211)
  store i32 0, i32* %5, align 4
  br label %230

213:                                              ; preds = %171, %167
  %214 = load %struct.inode*, %struct.inode** %17, align 8
  %215 = call i32 @iput(%struct.inode* %214)
  br label %216

216:                                              ; preds = %213, %104
  %217 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %218 = call i32 @brelse(%struct.buffer_head* %217)
  %219 = load %struct.inode*, %struct.inode** %6, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* %14, align 4
  %223 = call i32 @hpfs_free_sectors(i32 %221, i32 %222, i32 1)
  br label %224

224:                                              ; preds = %216, %70
  %225 = load %struct.inode*, %struct.inode** %6, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 @hpfs_unlock(i32 %227)
  %229 = load i32, i32* %18, align 4
  store i32 %229, i32* %5, align 4
  br label %230

230:                                              ; preds = %224, %187, %50, %40
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i32 @hpfs_chk_name(i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @hpfs_sb(i32) #1

declare dso_local i32 @hpfs_lock(i32) #1

declare dso_local %struct.fnode* @hpfs_alloc_fnode(i32, i32, i32*, %struct.buffer_head**) #1

declare dso_local %struct.TYPE_12__* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @memset(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @local_get_seconds(i32) #1

declare dso_local %struct.inode* @new_inode(i32) #1

declare dso_local i32 @hpfs_init_inode(%struct.inode*) #1

declare dso_local i32 @local_to_gmt(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @hpfs_add_dirent(%struct.inode*, i8*, i32, %struct.hpfs_dirent*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @hpfs_write_inode_nolock(%struct.inode*) #1

declare dso_local i32 @hpfs_update_directory_times(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_unlock(i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @hpfs_free_sectors(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
