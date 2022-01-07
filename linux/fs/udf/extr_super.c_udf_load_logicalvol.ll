; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_logicalvol.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_logicalvol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.logicalVolDesc = type { %struct.TYPE_8__, i32*, i32*, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.udf_sb_info = type { i32, i32, %struct.udf_part_map* }
%struct.udf_part_map = type { i8*, i8*, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.udf_meta_data }
%struct.udf_meta_data = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.genericPartitionMap = type { i32, i64 }
%struct.buffer_head = type { i64 }
%struct.genericPartitionMap1 = type { i32, i32 }
%struct.udfPartitionMap2 = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.metadataPartitionMap = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.long_ad = type { i32 }
%struct.sparablePartitionMap = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@TAG_IDENT_LVD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [78 x i8] c"error loading logical volume descriptor: Partition table too long (%u > %lu)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"logical volume\00", align 1
@UDF_TYPE1_MAP15 = common dso_local global i32 0, align 4
@UDF_ID_VIRTUAL = common dso_local global i32 0, align 4
@UDF_VIRTUAL_MAP15 = common dso_local global i32 0, align 4
@udf_get_pblock_virt15 = common dso_local global i32* null, align 8
@UDF_VIRTUAL_MAP20 = common dso_local global i32 0, align 4
@udf_get_pblock_virt20 = common dso_local global i32* null, align 8
@UDF_ID_SPARABLE = common dso_local global i32 0, align 4
@UDF_ID_METADATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Parsing Logical vol part %d type %u  id=%s\0A\00", align 1
@UDF_METADATA_MAP25 = common dso_local global i32 0, align 4
@udf_get_pblock_meta25 = common dso_local global i32* null, align 8
@MF_DUPLICATE_MD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Metadata Ident suffix=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Metadata part num=%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Metadata part alloc unit size=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Metadata file loc=%u\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Mirror file loc=%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Bitmap file loc=%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"Flags: %d %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Unknown ident: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Partition (%d:%u) type %u on volume %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"FileSet found in LogicalVolDesc at block=%u, partition=%u\0A\00", align 1
@UDF_FLAG_RW_INCOMPAT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [49 x i8] c"Damaged or missing LVID, forcing readonly mount\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, %struct.kernel_lb_addr*)* @udf_load_logicalvol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_logicalvol(%struct.super_block* %0, i32 %1, %struct.kernel_lb_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kernel_lb_addr*, align 8
  %8 = alloca %struct.logicalVolDesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.udf_sb_info*, align 8
  %13 = alloca %struct.genericPartitionMap*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.udf_part_map*, align 8
  %19 = alloca %struct.genericPartitionMap1*, align 8
  %20 = alloca %struct.udfPartitionMap2*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.udf_meta_data*, align 8
  %23 = alloca %struct.metadataPartitionMap*, align 8
  %24 = alloca %struct.long_ad*, align 8
  %25 = alloca %struct.kernel_lb_addr, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %7, align 8
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %26)
  store %struct.udf_sb_info* %27, %struct.udf_sb_info** %12, align 8
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.buffer_head* @udf_read_tagged(%struct.super_block* %28, i32 %29, i32 %30, i64* %14)
  store %struct.buffer_head* %31, %struct.buffer_head** %15, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %33 = icmp ne %struct.buffer_head* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %427

37:                                               ; preds = %3
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @TAG_IDENT_LVD, align 8
  %40 = icmp ne i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.logicalVolDesc*
  store %struct.logicalVolDesc* %46, %struct.logicalVolDesc** %8, align 8
  %47 = load %struct.logicalVolDesc*, %struct.logicalVolDesc** %8, align 8
  %48 = getelementptr inbounds %struct.logicalVolDesc, %struct.logicalVolDesc* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i8* @le32_to_cpu(i32 %49)
  %51 = ptrtoint i8* %50 to i32
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = zext i32 %52 to i64
  %54 = load %struct.super_block*, %struct.super_block** %5, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = sub i64 %57, 40
  %59 = icmp ugt i64 %53, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %37
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = load i32, i32* %16, align 4
  %63 = load %struct.super_block*, %struct.super_block** %5, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = sub i64 %66, 40
  %68 = trunc i64 %67 to i32
  %69 = call i32 @udf_err(%struct.super_block* %61, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %68)
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %17, align 4
  br label %423

72:                                               ; preds = %37
  %73 = load %struct.super_block*, %struct.super_block** %5, align 8
  %74 = load %struct.logicalVolDesc*, %struct.logicalVolDesc** %8, align 8
  %75 = getelementptr inbounds %struct.logicalVolDesc, %struct.logicalVolDesc* %74, i32 0, i32 4
  %76 = call i32 @udf_verify_domain_identifier(%struct.super_block* %73, i32* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %423

80:                                               ; preds = %72
  %81 = load %struct.super_block*, %struct.super_block** %5, align 8
  %82 = load %struct.logicalVolDesc*, %struct.logicalVolDesc** %8, align 8
  %83 = getelementptr inbounds %struct.logicalVolDesc, %struct.logicalVolDesc* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @le32_to_cpu(i32 %84)
  %86 = call i32 @udf_sb_alloc_partition_maps(%struct.super_block* %81, i8* %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %423

90:                                               ; preds = %80
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %355, %90
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.udf_sb_info*, %struct.udf_sb_info** %12, align 8
  %94 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ult i32 %98, %99
  br label %101

101:                                              ; preds = %97, %91
  %102 = phi i1 [ false, %91 ], [ %100, %97 ]
  br i1 %102, label %103, label %365

103:                                              ; preds = %101
  %104 = load %struct.udf_sb_info*, %struct.udf_sb_info** %12, align 8
  %105 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %104, i32 0, i32 2
  %106 = load %struct.udf_part_map*, %struct.udf_part_map** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %106, i64 %108
  store %struct.udf_part_map* %109, %struct.udf_part_map** %18, align 8
  %110 = load %struct.logicalVolDesc*, %struct.logicalVolDesc** %8, align 8
  %111 = getelementptr inbounds %struct.logicalVolDesc, %struct.logicalVolDesc* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = bitcast i32* %115 to %struct.genericPartitionMap*
  store %struct.genericPartitionMap* %116, %struct.genericPartitionMap** %13, align 8
  %117 = load %struct.genericPartitionMap*, %struct.genericPartitionMap** %13, align 8
  %118 = getelementptr inbounds %struct.genericPartitionMap, %struct.genericPartitionMap* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %11, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %142

122:                                              ; preds = %103
  %123 = load %struct.genericPartitionMap*, %struct.genericPartitionMap** %13, align 8
  %124 = bitcast %struct.genericPartitionMap* %123 to %struct.genericPartitionMap1*
  store %struct.genericPartitionMap1* %124, %struct.genericPartitionMap1** %19, align 8
  %125 = load i32, i32* @UDF_TYPE1_MAP15, align 4
  %126 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %127 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.genericPartitionMap1*, %struct.genericPartitionMap1** %19, align 8
  %129 = getelementptr inbounds %struct.genericPartitionMap1, %struct.genericPartitionMap1* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i8* @le16_to_cpu(i32 %130)
  %132 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %133 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load %struct.genericPartitionMap1*, %struct.genericPartitionMap1** %19, align 8
  %135 = getelementptr inbounds %struct.genericPartitionMap1, %struct.genericPartitionMap1* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i8* @le16_to_cpu(i32 %136)
  %138 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %139 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %138, i32 0, i32 1
  store i8* %137, i8** %139, align 8
  %140 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %141 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %140, i32 0, i32 2
  store i32* null, i32** %141, align 8
  br label %345

142:                                              ; preds = %103
  %143 = load i32, i32* %11, align 4
  %144 = icmp eq i32 %143, 2
  br i1 %144, label %145, label %344

145:                                              ; preds = %142
  %146 = load %struct.genericPartitionMap*, %struct.genericPartitionMap** %13, align 8
  %147 = bitcast %struct.genericPartitionMap* %146 to %struct.udfPartitionMap2*
  store %struct.udfPartitionMap2* %147, %struct.udfPartitionMap2** %20, align 8
  %148 = load %struct.udfPartitionMap2*, %struct.udfPartitionMap2** %20, align 8
  %149 = getelementptr inbounds %struct.udfPartitionMap2, %struct.udfPartitionMap2* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @UDF_ID_VIRTUAL, align 4
  %153 = load i32, i32* @UDF_ID_VIRTUAL, align 4
  %154 = call i32 @strlen(i32 %153)
  %155 = call i32 @strncmp(i32 %151, i32 %152, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %184, label %157

157:                                              ; preds = %145
  %158 = load %struct.udfPartitionMap2*, %struct.udfPartitionMap2** %20, align 8
  %159 = getelementptr inbounds %struct.udfPartitionMap2, %struct.udfPartitionMap2* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i32*
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @le16_to_cpu(i32 %164)
  %166 = ptrtoint i8* %165 to i32
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* %21, align 4
  %168 = icmp slt i32 %167, 512
  br i1 %168, label %169, label %176

169:                                              ; preds = %157
  %170 = load i32, i32* @UDF_VIRTUAL_MAP15, align 4
  %171 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %172 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load i32*, i32** @udf_get_pblock_virt15, align 8
  %174 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %175 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %174, i32 0, i32 2
  store i32* %173, i32** %175, align 8
  br label %183

176:                                              ; preds = %157
  %177 = load i32, i32* @UDF_VIRTUAL_MAP20, align 4
  %178 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %179 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 8
  %180 = load i32*, i32** @udf_get_pblock_virt20, align 8
  %181 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %182 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %181, i32 0, i32 2
  store i32* %180, i32** %182, align 8
  br label %183

183:                                              ; preds = %176, %169
  br label %331

184:                                              ; preds = %145
  %185 = load %struct.udfPartitionMap2*, %struct.udfPartitionMap2** %20, align 8
  %186 = getelementptr inbounds %struct.udfPartitionMap2, %struct.udfPartitionMap2* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @UDF_ID_SPARABLE, align 4
  %190 = load i32, i32* @UDF_ID_SPARABLE, align 4
  %191 = call i32 @strlen(i32 %190)
  %192 = call i32 @strncmp(i32 %188, i32 %189, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %204, label %194

194:                                              ; preds = %184
  %195 = load %struct.super_block*, %struct.super_block** %5, align 8
  %196 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %197 = load %struct.genericPartitionMap*, %struct.genericPartitionMap** %13, align 8
  %198 = bitcast %struct.genericPartitionMap* %197 to %struct.sparablePartitionMap*
  %199 = call i32 @udf_load_sparable_map(%struct.super_block* %195, %struct.udf_part_map* %196, %struct.sparablePartitionMap* %198)
  store i32 %199, i32* %17, align 4
  %200 = load i32, i32* %17, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %194
  br label %423

203:                                              ; preds = %194
  br label %330

204:                                              ; preds = %184
  %205 = load %struct.udfPartitionMap2*, %struct.udfPartitionMap2** %20, align 8
  %206 = getelementptr inbounds %struct.udfPartitionMap2, %struct.udfPartitionMap2* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @UDF_ID_METADATA, align 4
  %210 = load i32, i32* @UDF_ID_METADATA, align 4
  %211 = call i32 @strlen(i32 %210)
  %212 = call i32 @strncmp(i32 %208, i32 %209, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %323, label %214

214:                                              ; preds = %204
  %215 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %216 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  store %struct.udf_meta_data* %217, %struct.udf_meta_data** %22, align 8
  %218 = load %struct.logicalVolDesc*, %struct.logicalVolDesc** %8, align 8
  %219 = getelementptr inbounds %struct.logicalVolDesc, %struct.logicalVolDesc* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = bitcast i32* %223 to %struct.metadataPartitionMap*
  store %struct.metadataPartitionMap* %224, %struct.metadataPartitionMap** %23, align 8
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* @UDF_ID_METADATA, align 4
  %228 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %225, i32 %226, i32 %227)
  %229 = load i32, i32* @UDF_METADATA_MAP25, align 4
  %230 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %231 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 8
  %232 = load i32*, i32** @udf_get_pblock_meta25, align 8
  %233 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %234 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %233, i32 0, i32 2
  store i32* %232, i32** %234, align 8
  %235 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %236 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @le32_to_cpu(i32 %237)
  %239 = load %struct.udf_meta_data*, %struct.udf_meta_data** %22, align 8
  %240 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %239, i32 0, i32 5
  store i8* %238, i8** %240, align 8
  %241 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %242 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = call i8* @le32_to_cpu(i32 %243)
  %245 = load %struct.udf_meta_data*, %struct.udf_meta_data** %22, align 8
  %246 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %245, i32 0, i32 4
  store i8* %244, i8** %246, align 8
  %247 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %248 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i8* @le32_to_cpu(i32 %249)
  %251 = load %struct.udf_meta_data*, %struct.udf_meta_data** %22, align 8
  %252 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %251, i32 0, i32 3
  store i8* %250, i8** %252, align 8
  %253 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %254 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = call i8* @le32_to_cpu(i32 %255)
  %257 = load %struct.udf_meta_data*, %struct.udf_meta_data** %22, align 8
  %258 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  %259 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %260 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 8
  %262 = call i8* @le16_to_cpu(i32 %261)
  %263 = load %struct.udf_meta_data*, %struct.udf_meta_data** %22, align 8
  %264 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %263, i32 0, i32 1
  store i8* %262, i8** %264, align 8
  %265 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %266 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = and i32 %267, 1
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %214
  %271 = load i32, i32* @MF_DUPLICATE_MD, align 4
  %272 = load %struct.udf_meta_data*, %struct.udf_meta_data** %22, align 8
  %273 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 8
  br label %276

276:                                              ; preds = %270, %214
  %277 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %278 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %277, i32 0, i32 6
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = inttoptr i64 %280 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = call i8* @le16_to_cpu(i32 %282)
  %284 = ptrtoint i8* %283 to i32
  %285 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %284)
  %286 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %287 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = call i8* @le16_to_cpu(i32 %288)
  %290 = ptrtoint i8* %289 to i32
  %291 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %290)
  %292 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %293 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = call i8* @le32_to_cpu(i32 %294)
  %296 = ptrtoint i8* %295 to i32
  %297 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %296)
  %298 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %299 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = call i8* @le32_to_cpu(i32 %300)
  %302 = ptrtoint i8* %301 to i32
  %303 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %302)
  %304 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %305 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = call i8* @le32_to_cpu(i32 %306)
  %308 = ptrtoint i8* %307 to i32
  %309 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %308)
  %310 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %311 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = call i8* @le32_to_cpu(i32 %312)
  %314 = ptrtoint i8* %313 to i32
  %315 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %314)
  %316 = load %struct.udf_meta_data*, %struct.udf_meta_data** %22, align 8
  %317 = getelementptr inbounds %struct.udf_meta_data, %struct.udf_meta_data* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.metadataPartitionMap*, %struct.metadataPartitionMap** %23, align 8
  %320 = getelementptr inbounds %struct.metadataPartitionMap, %struct.metadataPartitionMap* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %318, i32 %321)
  br label %329

323:                                              ; preds = %204
  %324 = load %struct.udfPartitionMap2*, %struct.udfPartitionMap2** %20, align 8
  %325 = getelementptr inbounds %struct.udfPartitionMap2, %struct.udfPartitionMap2* %324, i32 0, i32 2
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %327)
  br label %355

329:                                              ; preds = %276
  br label %330

330:                                              ; preds = %329, %203
  br label %331

331:                                              ; preds = %330, %183
  %332 = load %struct.udfPartitionMap2*, %struct.udfPartitionMap2** %20, align 8
  %333 = getelementptr inbounds %struct.udfPartitionMap2, %struct.udfPartitionMap2* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = call i8* @le16_to_cpu(i32 %334)
  %336 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %337 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %336, i32 0, i32 0
  store i8* %335, i8** %337, align 8
  %338 = load %struct.udfPartitionMap2*, %struct.udfPartitionMap2** %20, align 8
  %339 = getelementptr inbounds %struct.udfPartitionMap2, %struct.udfPartitionMap2* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = call i8* @le16_to_cpu(i32 %340)
  %342 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %343 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %342, i32 0, i32 1
  store i8* %341, i8** %343, align 8
  br label %344

344:                                              ; preds = %331, %142
  br label %345

345:                                              ; preds = %344, %122
  %346 = load i32, i32* %9, align 4
  %347 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %348 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %347, i32 0, i32 1
  %349 = load i8*, i8** %348, align 8
  %350 = load i32, i32* %11, align 4
  %351 = load %struct.udf_part_map*, %struct.udf_part_map** %18, align 8
  %352 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %351, i32 0, i32 0
  %353 = load i8*, i8** %352, align 8
  %354 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %346, i8* %349, i32 %350, i8* %353)
  br label %355

355:                                              ; preds = %345, %323
  %356 = load i32, i32* %9, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %9, align 4
  %358 = load %struct.genericPartitionMap*, %struct.genericPartitionMap** %13, align 8
  %359 = getelementptr inbounds %struct.genericPartitionMap, %struct.genericPartitionMap* %358, i32 0, i32 1
  %360 = load i64, i64* %359, align 8
  %361 = load i32, i32* %10, align 4
  %362 = sext i32 %361 to i64
  %363 = add nsw i64 %362, %360
  %364 = trunc i64 %363 to i32
  store i32 %364, i32* %10, align 4
  br label %91

365:                                              ; preds = %101
  %366 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %367 = icmp ne %struct.kernel_lb_addr* %366, null
  br i1 %367, label %368, label %389

368:                                              ; preds = %365
  %369 = load %struct.logicalVolDesc*, %struct.logicalVolDesc** %8, align 8
  %370 = getelementptr inbounds %struct.logicalVolDesc, %struct.logicalVolDesc* %369, i32 0, i32 1
  %371 = load i32*, i32** %370, align 8
  %372 = getelementptr inbounds i32, i32* %371, i64 0
  %373 = bitcast i32* %372 to %struct.long_ad*
  store %struct.long_ad* %373, %struct.long_ad** %24, align 8
  %374 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %375 = load %struct.long_ad*, %struct.long_ad** %24, align 8
  %376 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = call i64 @lelb_to_cpu(i32 %377)
  %379 = bitcast %struct.kernel_lb_addr* %25 to i64*
  store i64 %378, i64* %379, align 4
  %380 = bitcast %struct.kernel_lb_addr* %374 to i8*
  %381 = bitcast %struct.kernel_lb_addr* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %380, i8* align 4 %381, i64 8, i1 false)
  %382 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %383 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %386 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0), i32 %384, i32 %387)
  br label %389

389:                                              ; preds = %368, %365
  %390 = load %struct.logicalVolDesc*, %struct.logicalVolDesc** %8, align 8
  %391 = getelementptr inbounds %struct.logicalVolDesc, %struct.logicalVolDesc* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %403

395:                                              ; preds = %389
  %396 = load %struct.super_block*, %struct.super_block** %5, align 8
  %397 = load %struct.logicalVolDesc*, %struct.logicalVolDesc** %8, align 8
  %398 = getelementptr inbounds %struct.logicalVolDesc, %struct.logicalVolDesc* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = call i32 @leea_to_cpu(i64 %400)
  %402 = call i32 @udf_load_logicalvolint(%struct.super_block* %396, i32 %401)
  br label %403

403:                                              ; preds = %395, %389
  store i32 0, i32* %17, align 4
  %404 = load %struct.udf_sb_info*, %struct.udf_sb_info** %12, align 8
  %405 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %404, i32 0, i32 1
  %406 = load i32, i32* %405, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %422, label %408

408:                                              ; preds = %403
  %409 = load %struct.super_block*, %struct.super_block** %5, align 8
  %410 = call i64 @sb_rdonly(%struct.super_block* %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %408
  %413 = load %struct.super_block*, %struct.super_block** %5, align 8
  %414 = load i32, i32* @UDF_FLAG_RW_INCOMPAT, align 4
  %415 = call i32 @UDF_SET_FLAG(%struct.super_block* %413, i32 %414)
  br label %421

416:                                              ; preds = %408
  %417 = load %struct.super_block*, %struct.super_block** %5, align 8
  %418 = call i32 @udf_warn(%struct.super_block* %417, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.13, i64 0, i64 0))
  %419 = load i32, i32* @EACCES, align 4
  %420 = sub nsw i32 0, %419
  store i32 %420, i32* %17, align 4
  br label %421

421:                                              ; preds = %416, %412
  br label %422

422:                                              ; preds = %421, %403
  br label %423

423:                                              ; preds = %422, %202, %89, %79, %60
  %424 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %425 = call i32 @brelse(%struct.buffer_head* %424)
  %426 = load i32, i32* %17, align 4
  store i32 %426, i32* %4, align 4
  br label %427

427:                                              ; preds = %423, %34
  %428 = load i32, i32* %4, align 4
  ret i32 %428
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @udf_read_tagged(%struct.super_block*, i32, i32, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @udf_err(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i32 @udf_verify_domain_identifier(%struct.super_block*, i32*, i8*) #1

declare dso_local i32 @udf_sb_alloc_partition_maps(%struct.super_block*, i8*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @udf_load_sparable_map(%struct.super_block*, %struct.udf_part_map*, %struct.sparablePartitionMap*) #1

declare dso_local i32 @udf_debug(i8*, i32, ...) #1

declare dso_local i64 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_load_logicalvolint(%struct.super_block*, i32) #1

declare dso_local i32 @leea_to_cpu(i64) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @UDF_SET_FLAG(%struct.super_block*, i32) #1

declare dso_local i32 @udf_warn(%struct.super_block*, i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
