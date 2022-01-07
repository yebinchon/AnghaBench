; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_btree.c_hfsplus_btree_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_btree.c_hfsplus_btree_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_btree = type { i32, i32, i32, i32, %struct.page*, i64, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.super_block*, i32, i32 }
%struct.page = type { %struct.address_space* }
%struct.address_space = type { i32* }
%struct.super_block = type { i32 }
%struct.hfs_btree_header_rec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.inode = type { %struct.address_space* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid btree extent records (0 size)\0A\00", align 1
@HFSPLUS_EXT_KEYLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid extent max_key_len %d\0A\00", align 1
@HFS_TREE_VARIDXKEYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid extent btree flag\0A\00", align 1
@hfsplus_ext_cmp_key = common dso_local global i32 0, align 4
@HFSPLUS_CAT_KEYLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"invalid catalog max_key_len %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid catalog btree flag\0A\00", align 1
@HFSPLUS_SB_HFSX = common dso_local global i32 0, align 4
@HFSPLUS_KEY_BINARY = common dso_local global i32 0, align 4
@hfsplus_cat_bin_cmp_key = common dso_local global i32 0, align 4
@hfsplus_cat_case_cmp_key = common dso_local global i32 0, align 4
@HFSPLUS_SB_CASEFOLD = common dso_local global i32 0, align 4
@HFSPLUS_ATTR_KEYLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"invalid attributes max_key_len %d\0A\00", align 1
@hfsplus_attr_bin_cmp_key = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"unknown B*Tree requested\0A\00", align 1
@HFS_TREE_BIGKEYS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"invalid btree flag\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@hfsplus_aops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hfs_btree* @hfs_btree_open(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.hfs_btree*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfs_btree*, align 8
  %7 = alloca %struct.hfs_btree_header_rec*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hfs_btree* @kzalloc(i32 120, i32 %12)
  store %struct.hfs_btree* %13, %struct.hfs_btree** %6, align 8
  %14 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %15 = icmp ne %struct.hfs_btree* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.hfs_btree* null, %struct.hfs_btree** %3, align 8
  br label %291

17:                                               ; preds = %2
  %18 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %19 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %18, i32 0, i32 17
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %22 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %21, i32 0, i32 16
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %26 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %25, i32 0, i32 15
  store %struct.super_block* %24, %struct.super_block** %26, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %29 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call %struct.page* @hfsplus_iget(%struct.super_block* %30, i32 %31)
  %33 = bitcast %struct.page* %32 to %struct.inode*
  store %struct.inode* %33, %struct.inode** %9, align 8
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = bitcast %struct.inode* %34 to %struct.page*
  %36 = call i64 @IS_ERR(%struct.page* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  br label %288

39:                                               ; preds = %17
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = bitcast %struct.inode* %40 to %struct.page*
  %42 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %43 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %42, i32 0, i32 4
  store %struct.page* %41, %struct.page** %43, align 8
  %44 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %45 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %44, i32 0, i32 4
  %46 = load %struct.page*, %struct.page** %45, align 8
  %47 = call %struct.TYPE_4__* @HFSPLUS_I(%struct.page* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %39
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %277

53:                                               ; preds = %39
  %54 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %55 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %54, i32 0, i32 4
  %56 = load %struct.page*, %struct.page** %55, align 8
  %57 = getelementptr inbounds %struct.page, %struct.page* %56, i32 0, i32 0
  %58 = load %struct.address_space*, %struct.address_space** %57, align 8
  store %struct.address_space* %58, %struct.address_space** %8, align 8
  %59 = load %struct.address_space*, %struct.address_space** %8, align 8
  %60 = call %struct.page* @read_mapping_page(%struct.address_space* %59, i32 0, i32* null)
  store %struct.page* %60, %struct.page** %10, align 8
  %61 = load %struct.page*, %struct.page** %10, align 8
  %62 = call i64 @IS_ERR(%struct.page* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %277

65:                                               ; preds = %53
  %66 = load %struct.page*, %struct.page** %10, align 8
  %67 = call i64 @kmap(%struct.page* %66)
  %68 = add i64 %67, 4
  %69 = inttoptr i64 %68 to %struct.hfs_btree_header_rec*
  store %struct.hfs_btree_header_rec* %69, %struct.hfs_btree_header_rec** %7, align 8
  %70 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %71 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %70, i32 0, i32 10
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @be32_to_cpu(i32 %72)
  %74 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %75 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %74, i32 0, i32 14
  store i8* %73, i8** %75, align 8
  %76 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %77 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @be32_to_cpu(i32 %78)
  %80 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %81 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %80, i32 0, i32 13
  store i8* %79, i8** %81, align 8
  %82 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %83 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @be32_to_cpu(i32 %84)
  %86 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %87 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %86, i32 0, i32 12
  store i8* %85, i8** %87, align 8
  %88 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %89 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @be32_to_cpu(i32 %90)
  %92 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %93 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %92, i32 0, i32 11
  store i8* %91, i8** %93, align 8
  %94 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %95 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @be32_to_cpu(i32 %96)
  %98 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %99 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %98, i32 0, i32 6
  store i8* %97, i8** %99, align 8
  %100 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %101 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @be32_to_cpu(i32 %102)
  %104 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %105 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %104, i32 0, i32 10
  store i8* %103, i8** %105, align 8
  %106 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %107 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @be32_to_cpu(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %112 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %114 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @be16_to_cpu(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %119 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %121 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @be16_to_cpu(i32 %122)
  %124 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %125 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %124, i32 0, i32 8
  store i8* %123, i8** %125, align 8
  %126 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %127 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @be16_to_cpu(i32 %128)
  %130 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %131 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %130, i32 0, i32 9
  store i8* %129, i8** %131, align 8
  %132 = load i32, i32* %5, align 4
  switch i32 %132, label %228 [
    i32 128, label %133
    i32 129, label %160
    i32 130, label %210
  ]

133:                                              ; preds = %65
  %134 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %135 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %134, i32 0, i32 8
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @HFSPLUS_EXT_KEYLEN, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 %138, 4
  %140 = inttoptr i64 %139 to i8*
  %141 = icmp ne i8* %136, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %133
  %143 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %144 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %143, i32 0, i32 8
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %145)
  br label %274

147:                                              ; preds = %133
  %148 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %149 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @HFS_TREE_VARIDXKEYS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %274

156:                                              ; preds = %147
  %157 = load i32, i32* @hfsplus_ext_cmp_key, align 4
  %158 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %159 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 8
  br label %230

160:                                              ; preds = %65
  %161 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %162 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %161, i32 0, i32 8
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* @HFSPLUS_CAT_KEYLEN, align 4
  %165 = sext i32 %164 to i64
  %166 = sub i64 %165, 4
  %167 = inttoptr i64 %166 to i8*
  %168 = icmp ne i8* %163, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %160
  %170 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %171 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %170, i32 0, i32 8
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %172)
  br label %274

174:                                              ; preds = %160
  %175 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %176 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @HFS_TREE_VARIDXKEYS, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %174
  %182 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %274

183:                                              ; preds = %174
  %184 = load i32, i32* @HFSPLUS_SB_HFSX, align 4
  %185 = load %struct.super_block*, %struct.super_block** %4, align 8
  %186 = call %struct.TYPE_3__* @HFSPLUS_SB(%struct.super_block* %185)
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = call i32 @test_bit(i32 %184, i32* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %200

190:                                              ; preds = %183
  %191 = load %struct.hfs_btree_header_rec*, %struct.hfs_btree_header_rec** %7, align 8
  %192 = getelementptr inbounds %struct.hfs_btree_header_rec, %struct.hfs_btree_header_rec* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @HFSPLUS_KEY_BINARY, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %190
  %197 = load i32, i32* @hfsplus_cat_bin_cmp_key, align 4
  %198 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %199 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %198, i32 0, i32 7
  store i32 %197, i32* %199, align 8
  br label %209

200:                                              ; preds = %190, %183
  %201 = load i32, i32* @hfsplus_cat_case_cmp_key, align 4
  %202 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %203 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %202, i32 0, i32 7
  store i32 %201, i32* %203, align 8
  %204 = load i32, i32* @HFSPLUS_SB_CASEFOLD, align 4
  %205 = load %struct.super_block*, %struct.super_block** %4, align 8
  %206 = call %struct.TYPE_3__* @HFSPLUS_SB(%struct.super_block* %205)
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = call i32 @set_bit(i32 %204, i32* %207)
  br label %209

209:                                              ; preds = %200, %196
  br label %230

210:                                              ; preds = %65
  %211 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %212 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %211, i32 0, i32 8
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* @HFSPLUS_ATTR_KEYLEN, align 4
  %215 = sext i32 %214 to i64
  %216 = sub i64 %215, 4
  %217 = inttoptr i64 %216 to i8*
  %218 = icmp ne i8* %213, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %210
  %220 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %221 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %220, i32 0, i32 8
  %222 = load i8*, i8** %221, align 8
  %223 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %222)
  br label %274

224:                                              ; preds = %210
  %225 = load i32, i32* @hfsplus_attr_bin_cmp_key, align 4
  %226 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %227 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %226, i32 0, i32 7
  store i32 %225, i32* %227, align 8
  br label %230

228:                                              ; preds = %65
  %229 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %274

230:                                              ; preds = %224, %209, %156
  %231 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %232 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @HFS_TREE_BIGKEYS, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %230
  %238 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %274

239:                                              ; preds = %230
  %240 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %241 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* %11, align 4
  %244 = call i32 @is_power_of_2(i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %239
  br label %274

247:                                              ; preds = %239
  %248 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %249 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %248, i32 0, i32 6
  %250 = load i8*, i8** %249, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %253, label %252

252:                                              ; preds = %247
  br label %274

253:                                              ; preds = %247
  %254 = load i32, i32* %11, align 4
  %255 = call i64 @ffs(i32 %254)
  %256 = sub nsw i64 %255, 1
  %257 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %258 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %257, i32 0, i32 5
  store i64 %256, i64* %258, align 8
  %259 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %260 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @PAGE_SIZE, align 4
  %263 = add i32 %261, %262
  %264 = sub i32 %263, 1
  %265 = load i32, i32* @PAGE_SHIFT, align 4
  %266 = lshr i32 %264, %265
  %267 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %268 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 4
  %269 = load %struct.page*, %struct.page** %10, align 8
  %270 = call i32 @kunmap(%struct.page* %269)
  %271 = load %struct.page*, %struct.page** %10, align 8
  %272 = call i32 @put_page(%struct.page* %271)
  %273 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  store %struct.hfs_btree* %273, %struct.hfs_btree** %3, align 8
  br label %291

274:                                              ; preds = %252, %246, %237, %228, %219, %181, %169, %154, %142
  %275 = load %struct.page*, %struct.page** %10, align 8
  %276 = call i32 @put_page(%struct.page* %275)
  br label %277

277:                                              ; preds = %274, %64, %51
  %278 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %279 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %278, i32 0, i32 4
  %280 = load %struct.page*, %struct.page** %279, align 8
  %281 = getelementptr inbounds %struct.page, %struct.page* %280, i32 0, i32 0
  %282 = load %struct.address_space*, %struct.address_space** %281, align 8
  %283 = getelementptr inbounds %struct.address_space, %struct.address_space* %282, i32 0, i32 0
  store i32* @hfsplus_aops, i32** %283, align 8
  %284 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %285 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %284, i32 0, i32 4
  %286 = load %struct.page*, %struct.page** %285, align 8
  %287 = call i32 @iput(%struct.page* %286)
  br label %288

288:                                              ; preds = %277, %38
  %289 = load %struct.hfs_btree*, %struct.hfs_btree** %6, align 8
  %290 = call i32 @kfree(%struct.hfs_btree* %289)
  store %struct.hfs_btree* null, %struct.hfs_btree** %3, align 8
  br label %291

291:                                              ; preds = %288, %253, %16
  %292 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  ret %struct.hfs_btree* %292
}

declare dso_local %struct.hfs_btree* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.page* @hfsplus_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local %struct.TYPE_4__* @HFSPLUS_I(%struct.page*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i64 @kmap(%struct.page*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.TYPE_3__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @iput(%struct.page*) #1

declare dso_local i32 @kfree(%struct.hfs_btree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
