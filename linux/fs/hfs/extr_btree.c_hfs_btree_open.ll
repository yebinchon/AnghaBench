; ModuleID = '/home/carl/AnghaBench/linux/fs/hfs/extr_btree.c_hfs_btree_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfs/extr_btree.c_hfs_btree_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_btree = type { i32, i32, i32, %struct.TYPE_8__*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.super_block*, i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.address_space* }
%struct.address_space = type { i32* }
%struct.super_block = type { i32 }
%struct.hfs_btree_header_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32 }
%struct.hfs_mdb = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.hfs_mdb* }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid btree extent records\0A\00", align 1
@hfs_btree_aops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"invalid btree extent records (0 size)\0A\00", align 1
@HFS_MAX_EXT_KEYLEN = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"invalid extent max_key_len %d\0A\00", align 1
@HFS_MAX_CAT_KEYLEN = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"invalid catalog max_key_len %d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@hfs_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hfs_btree* @hfs_btree_open(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hfs_btree*, align 8
  %9 = alloca %struct.hfs_btree_header_rec*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.hfs_mdb*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hfs_btree* @kzalloc(i32 128, i32 %14)
  store %struct.hfs_btree* %15, %struct.hfs_btree** %8, align 8
  %16 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %17 = icmp ne %struct.hfs_btree* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.hfs_btree* null, %struct.hfs_btree** %4, align 8
  br label %318

19:                                               ; preds = %3
  %20 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %21 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %20, i32 0, i32 17
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %24 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %23, i32 0, i32 16
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %28 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %27, i32 0, i32 15
  store %struct.super_block* %26, %struct.super_block** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %31 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %34 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %33, i32 0, i32 14
  store i32 %32, i32* %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.TYPE_8__* @iget_locked(%struct.super_block* %35, i32 %36)
  %38 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %39 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %38, i32 0, i32 3
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %39, align 8
  %40 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %41 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %40, i32 0, i32 3
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %19
  br label %315

45:                                               ; preds = %19
  %46 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %47 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %46, i32 0, i32 3
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @I_NEW, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  %57 = load %struct.super_block*, %struct.super_block** %5, align 8
  %58 = call %struct.TYPE_9__* @HFS_SB(%struct.super_block* %57)
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.hfs_mdb*, %struct.hfs_mdb** %59, align 8
  store %struct.hfs_mdb* %60, %struct.hfs_mdb** %13, align 8
  %61 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %62 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %61, i32 0, i32 3
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = call %struct.TYPE_10__* @HFS_I(%struct.TYPE_8__* %63)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %67 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = call %struct.TYPE_10__* @HFS_I(%struct.TYPE_8__* %68)
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load i32, i32* %6, align 4
  switch i32 %72, label %155 [
    i32 128, label %73
    i32 129, label %117
  ]

73:                                               ; preds = %45
  %74 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %75 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %74, i32 0, i32 3
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = load %struct.hfs_mdb*, %struct.hfs_mdb** %13, align 8
  %78 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hfs_mdb*, %struct.hfs_mdb** %13, align 8
  %81 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hfs_mdb*, %struct.hfs_mdb** %13, align 8
  %84 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.hfs_mdb*, %struct.hfs_mdb** %13, align 8
  %87 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @be32_to_cpu(i32 %88)
  %90 = call i32 @hfs_inode_read_fork(%struct.TYPE_8__* %76, i32 %79, i32 %82, i32 %85, i8* %89)
  %91 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %92 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %91, i32 0, i32 3
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = call %struct.TYPE_10__* @HFS_I(%struct.TYPE_8__* %93)
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %98 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %97, i32 0, i32 3
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = call %struct.TYPE_10__* @HFS_I(%struct.TYPE_8__* %99)
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %96, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %73
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %107 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %106, i32 0, i32 3
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = call i32 @unlock_new_inode(%struct.TYPE_8__* %108)
  br label %304

110:                                              ; preds = %73
  %111 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %112 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %111, i32 0, i32 3
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load %struct.address_space*, %struct.address_space** %114, align 8
  %116 = getelementptr inbounds %struct.address_space, %struct.address_space* %115, i32 0, i32 0
  store i32* @hfs_btree_aops, i32** %116, align 8
  br label %157

117:                                              ; preds = %45
  %118 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %119 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %118, i32 0, i32 3
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load %struct.hfs_mdb*, %struct.hfs_mdb** %13, align 8
  %122 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.hfs_mdb*, %struct.hfs_mdb** %13, align 8
  %125 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.hfs_mdb*, %struct.hfs_mdb** %13, align 8
  %128 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.hfs_mdb*, %struct.hfs_mdb** %13, align 8
  %131 = getelementptr inbounds %struct.hfs_mdb, %struct.hfs_mdb* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @be32_to_cpu(i32 %132)
  %134 = call i32 @hfs_inode_read_fork(%struct.TYPE_8__* %120, i32 %123, i32 %126, i32 %129, i8* %133)
  %135 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %136 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %135, i32 0, i32 3
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = call %struct.TYPE_10__* @HFS_I(%struct.TYPE_8__* %137)
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %117
  %143 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %144 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %145 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %144, i32 0, i32 3
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = call i32 @unlock_new_inode(%struct.TYPE_8__* %146)
  br label %304

148:                                              ; preds = %117
  %149 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %150 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %149, i32 0, i32 3
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load %struct.address_space*, %struct.address_space** %152, align 8
  %154 = getelementptr inbounds %struct.address_space, %struct.address_space* %153, i32 0, i32 0
  store i32* @hfs_btree_aops, i32** %154, align 8
  br label %157

155:                                              ; preds = %45
  %156 = call i32 (...) @BUG()
  br label %157

157:                                              ; preds = %155, %148, %110
  %158 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %159 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %158, i32 0, i32 3
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = call i32 @unlock_new_inode(%struct.TYPE_8__* %160)
  %162 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %163 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %162, i32 0, i32 3
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = load %struct.address_space*, %struct.address_space** %165, align 8
  store %struct.address_space* %166, %struct.address_space** %10, align 8
  %167 = load %struct.address_space*, %struct.address_space** %10, align 8
  %168 = call %struct.page* @read_mapping_page(%struct.address_space* %167, i32 0, i32* null)
  store %struct.page* %168, %struct.page** %11, align 8
  %169 = load %struct.page*, %struct.page** %11, align 8
  %170 = call i64 @IS_ERR(%struct.page* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %157
  br label %304

173:                                              ; preds = %157
  %174 = load %struct.page*, %struct.page** %11, align 8
  %175 = call i64 @kmap(%struct.page* %174)
  %176 = add i64 %175, 4
  %177 = inttoptr i64 %176 to %struct.hfs_btree_header_rec*
  store %struct.hfs_btree_header_rec* %177, %struct.hfs_btree_header_rec** %9, align 8
  %178 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %9, align 8
  %179 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @be32_to_cpu(i32 %180)
  %182 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %183 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %182, i32 0, i32 13
  store i8* %181, i8** %183, align 8
  %184 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %9, align 8
  %185 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @be32_to_cpu(i32 %186)
  %188 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %189 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %188, i32 0, i32 12
  store i8* %187, i8** %189, align 8
  %190 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %9, align 8
  %191 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @be32_to_cpu(i32 %192)
  %194 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %195 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %194, i32 0, i32 11
  store i8* %193, i8** %195, align 8
  %196 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %9, align 8
  %197 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = call i8* @be32_to_cpu(i32 %198)
  %200 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %201 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %200, i32 0, i32 10
  store i8* %199, i8** %201, align 8
  %202 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %9, align 8
  %203 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @be32_to_cpu(i32 %204)
  %206 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %207 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %206, i32 0, i32 6
  store i8* %205, i8** %207, align 8
  %208 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %9, align 8
  %209 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = call i8* @be32_to_cpu(i32 %210)
  %212 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %213 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %212, i32 0, i32 9
  store i8* %211, i8** %213, align 8
  %214 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %9, align 8
  %215 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = call i8* @be32_to_cpu(i32 %216)
  %218 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %219 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %218, i32 0, i32 8
  store i8* %217, i8** %219, align 8
  %220 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %9, align 8
  %221 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = call i8* @be16_to_cpu(i32 %222)
  %224 = ptrtoint i8* %223 to i32
  %225 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %226 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %9, align 8
  %228 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i8* @be16_to_cpu(i32 %229)
  %231 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %232 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %231, i32 0, i32 5
  store i8* %230, i8** %232, align 8
  %233 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %9, align 8
  %234 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @be16_to_cpu(i32 %235)
  %237 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %238 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %237, i32 0, i32 7
  store i8* %236, i8** %238, align 8
  %239 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %240 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %12, align 4
  %242 = load i32, i32* %12, align 4
  %243 = call i32 @is_power_of_2(i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %173
  br label %301

246:                                              ; preds = %173
  %247 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %248 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %247, i32 0, i32 6
  %249 = load i8*, i8** %248, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %252, label %251

251:                                              ; preds = %246
  br label %301

252:                                              ; preds = %246
  %253 = load i32, i32* %6, align 4
  switch i32 %253, label %278 [
    i32 128, label %254
    i32 129, label %266
  ]

254:                                              ; preds = %252
  %255 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %256 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %255, i32 0, i32 5
  %257 = load i8*, i8** %256, align 8
  %258 = load i8*, i8** @HFS_MAX_EXT_KEYLEN, align 8
  %259 = icmp ne i8* %257, %258
  br i1 %259, label %260, label %265

260:                                              ; preds = %254
  %261 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %262 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %261, i32 0, i32 5
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %263)
  br label %301

265:                                              ; preds = %254
  br label %280

266:                                              ; preds = %252
  %267 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %268 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %267, i32 0, i32 5
  %269 = load i8*, i8** %268, align 8
  %270 = load i8*, i8** @HFS_MAX_CAT_KEYLEN, align 8
  %271 = icmp ne i8* %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %266
  %273 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %274 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %273, i32 0, i32 5
  %275 = load i8*, i8** %274, align 8
  %276 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %275)
  br label %301

277:                                              ; preds = %266
  br label %280

278:                                              ; preds = %252
  %279 = call i32 (...) @BUG()
  br label %280

280:                                              ; preds = %278, %277, %265
  %281 = load i32, i32* %12, align 4
  %282 = call i64 @ffs(i32 %281)
  %283 = sub nsw i64 %282, 1
  %284 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %285 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %284, i32 0, i32 4
  store i64 %283, i64* %285, align 8
  %286 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %287 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @PAGE_SIZE, align 4
  %290 = add i32 %288, %289
  %291 = sub i32 %290, 1
  %292 = load i32, i32* @PAGE_SHIFT, align 4
  %293 = lshr i32 %291, %292
  %294 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %295 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %294, i32 0, i32 2
  store i32 %293, i32* %295, align 8
  %296 = load %struct.page*, %struct.page** %11, align 8
  %297 = call i32 @kunmap(%struct.page* %296)
  %298 = load %struct.page*, %struct.page** %11, align 8
  %299 = call i32 @put_page(%struct.page* %298)
  %300 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  store %struct.hfs_btree* %300, %struct.hfs_btree** %4, align 8
  br label %318

301:                                              ; preds = %272, %260, %251, %245
  %302 = load %struct.page*, %struct.page** %11, align 8
  %303 = call i32 @put_page(%struct.page* %302)
  br label %304

304:                                              ; preds = %301, %172, %142, %104
  %305 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %306 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %305, i32 0, i32 3
  %307 = load %struct.TYPE_8__*, %struct.TYPE_8__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 1
  %309 = load %struct.address_space*, %struct.address_space** %308, align 8
  %310 = getelementptr inbounds %struct.address_space, %struct.address_space* %309, i32 0, i32 0
  store i32* @hfs_aops, i32** %310, align 8
  %311 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %312 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %311, i32 0, i32 3
  %313 = load %struct.TYPE_8__*, %struct.TYPE_8__** %312, align 8
  %314 = call i32 @iput(%struct.TYPE_8__* %313)
  br label %315

315:                                              ; preds = %304, %44
  %316 = load %struct.hfs_btree*, %struct.hfs_btree** %8, align 8
  %317 = call i32 @kfree(%struct.hfs_btree* %316)
  store %struct.hfs_btree* null, %struct.hfs_btree** %4, align 8
  br label %318

318:                                              ; preds = %315, %280, %18
  %319 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  ret %struct.hfs_btree* %319
}

declare dso_local %struct.hfs_btree* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.TYPE_8__* @iget_locked(%struct.super_block*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_9__* @HFS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_10__* @HFS_I(%struct.TYPE_8__*) #1

declare dso_local i32 @hfs_inode_read_fork(%struct.TYPE_8__*, i32, i32, i32, i8*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @unlock_new_inode(%struct.TYPE_8__*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @iput(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.hfs_btree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
