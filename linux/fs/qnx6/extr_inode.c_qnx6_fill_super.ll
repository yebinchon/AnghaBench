; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_inode.c_qnx6_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, %struct.qnx6_sb_info*, i32*, i32, i64, i32, i64, i32* }
%struct.qnx6_sb_info = type { i32, i8*, i8*, i32, %struct.qnx6_super_block*, %struct.buffer_head*, i32 }
%struct.qnx6_super_block = type { %struct.TYPE_2__, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.buffer_head = type { i64 }
%struct.inode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@QNX6_BOOTBLOCK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QNX6_SUPERBLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to set blocksize\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid mount options.\0A\00", align 1
@MMI_FS = common dso_local global i32 0, align 4
@BYTESEX_LE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to read the first superblock\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"superblock #1 checksum error\0A\00", align 1
@QNX6_SUPERBLOCK_AREA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"unable to read the second superblock\0A\00", align 1
@QNX6_SUPER_MAGIC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [43 x i8] c"wrong signature (magic) in superblock #2.\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"superblock #2 checksum error\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"superblock #1 active\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"superblock #2 active\0A\00", align 1
@QNX6_PTR_MAX_LEVELS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"too many inode levels (max %i, sb %i)\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"too many longfilename levels (max %i, sb %i)\0A\00", align 1
@qnx6_sops = common dso_local global i32 0, align 4
@SB_RDONLY = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@QNX6_ROOT_INO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"get inode failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @qnx6_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qnx6_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.qnx6_super_block*, align 8
  %11 = alloca %struct.qnx6_super_block*, align 8
  %12 = alloca %struct.qnx6_sb_info*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.qnx6_sb_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store %struct.qnx6_super_block* null, %struct.qnx6_super_block** %10, align 8
  store %struct.qnx6_super_block* null, %struct.qnx6_super_block** %11, align 8
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* @QNX6_BOOTBLOCK_SIZE, align 4
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.qnx6_sb_info* @kzalloc(i32 56, i32 %22)
  store %struct.qnx6_sb_info* %23, %struct.qnx6_sb_info** %15, align 8
  %24 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %15, align 8
  %25 = icmp ne %struct.qnx6_sb_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %393

29:                                               ; preds = %3
  %30 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %15, align 8
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 2
  store %struct.qnx6_sb_info* %30, %struct.qnx6_sb_info** %32, align 8
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load i32, i32* @QNX6_SUPERBLOCK_SIZE, align 4
  %35 = sext i32 %34 to i64
  %36 = call i32 @sb_set_blocksize(%struct.super_block* %33, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %387

40:                                               ; preds = %29
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = call i32 @qnx6_parse_options(i8* %41, %struct.super_block* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %387

47:                                               ; preds = %40
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = load i32, i32* @MMI_FS, align 4
  %50 = call i64 @test_opt(%struct.super_block* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.qnx6_super_block* @qnx6_mmi_fill_super(%struct.super_block* %53, i32 %54)
  store %struct.qnx6_super_block* %55, %struct.qnx6_super_block** %10, align 8
  %56 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %57 = icmp ne %struct.qnx6_super_block* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %243

59:                                               ; preds = %52
  br label %387

60:                                               ; preds = %47
  %61 = load %struct.super_block*, %struct.super_block** %5, align 8
  %62 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %61)
  store %struct.qnx6_sb_info* %62, %struct.qnx6_sb_info** %12, align 8
  %63 = load i32, i32* @BYTESEX_LE, align 4
  %64 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %65 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* @QNX6_SUPERBLOCK_SIZE, align 4
  %69 = sdiv i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = call %struct.buffer_head* @qnx6_check_first_superblock(%struct.super_block* %66, i32 %69, i32 %70)
  store %struct.buffer_head* %71, %struct.buffer_head** %8, align 8
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = icmp ne %struct.buffer_head* %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %60
  %75 = load %struct.super_block*, %struct.super_block** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.buffer_head* @qnx6_check_first_superblock(%struct.super_block* %75, i32 0, i32 %76)
  store %struct.buffer_head* %77, %struct.buffer_head** %8, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %79 = icmp ne %struct.buffer_head* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %387

82:                                               ; preds = %74
  store i32 0, i32* %18, align 4
  br label %83

83:                                               ; preds = %82, %60
  %84 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %85 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.qnx6_super_block*
  store %struct.qnx6_super_block* %87, %struct.qnx6_super_block** %10, align 8
  %88 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %89 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %90 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @fs32_to_cpu(%struct.qnx6_sb_info* %88, i32 %91)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %94 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 8
  %97 = inttoptr i64 %96 to i8*
  %98 = call i64 @crc32_be(i32 0, i8* %97, i32 504)
  %99 = icmp ne i64 %92, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %83
  %101 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %374

102:                                              ; preds = %83
  %103 = load %struct.super_block*, %struct.super_block** %5, align 8
  %104 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %105 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %106 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @fs32_to_cpu(%struct.qnx6_sb_info* %104, i32 %107)
  %109 = call i32 @sb_set_blocksize(%struct.super_block* %103, i64 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %102
  %112 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %374

113:                                              ; preds = %102
  %114 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %115 = call i32 @brelse(%struct.buffer_head* %114)
  %116 = load %struct.super_block*, %struct.super_block** %5, align 8
  %117 = load i32, i32* %18, align 4
  %118 = load %struct.super_block*, %struct.super_block** %5, align 8
  %119 = getelementptr inbounds %struct.super_block, %struct.super_block* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = ashr i32 %117, %120
  %122 = call %struct.buffer_head* @sb_bread(%struct.super_block* %116, i32 %121)
  store %struct.buffer_head* %122, %struct.buffer_head** %8, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %124 = icmp ne %struct.buffer_head* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %113
  br label %387

126:                                              ; preds = %113
  %127 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %128 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to %struct.qnx6_super_block*
  store %struct.qnx6_super_block* %130, %struct.qnx6_super_block** %10, align 8
  %131 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %132 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %133 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @fs32_to_cpu(%struct.qnx6_sb_info* %131, i32 %134)
  %136 = load i32, i32* %18, align 4
  %137 = load %struct.super_block*, %struct.super_block** %5, align 8
  %138 = getelementptr inbounds %struct.super_block, %struct.super_block* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = ashr i32 %136, %139
  %141 = sext i32 %140 to i64
  %142 = add nsw i64 %135, %141
  %143 = load i32, i32* @QNX6_SUPERBLOCK_AREA, align 4
  %144 = load %struct.super_block*, %struct.super_block** %5, align 8
  %145 = getelementptr inbounds %struct.super_block, %struct.super_block* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = ashr i32 %143, %146
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %142, %148
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load %struct.super_block*, %struct.super_block** %5, align 8
  %153 = getelementptr inbounds %struct.super_block, %struct.super_block* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = ashr i32 %151, %154
  %156 = load i32, i32* @QNX6_SUPERBLOCK_AREA, align 4
  %157 = load %struct.super_block*, %struct.super_block** %5, align 8
  %158 = getelementptr inbounds %struct.super_block, %struct.super_block* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = ashr i32 %156, %159
  %161 = add nsw i32 %155, %160
  %162 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %163 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.super_block*, %struct.super_block** %5, align 8
  %165 = load i32, i32* %17, align 4
  %166 = call %struct.buffer_head* @sb_bread(%struct.super_block* %164, i32 %165)
  store %struct.buffer_head* %166, %struct.buffer_head** %9, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %168 = icmp ne %struct.buffer_head* %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %126
  %170 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %374

171:                                              ; preds = %126
  %172 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %173 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to %struct.qnx6_super_block*
  store %struct.qnx6_super_block* %175, %struct.qnx6_super_block** %11, align 8
  %176 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %177 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %11, align 8
  %178 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = call i64 @fs32_to_cpu(%struct.qnx6_sb_info* %176, i32 %179)
  %181 = load i64, i64* @QNX6_SUPER_MAGIC, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %171
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %183
  br label %374

189:                                              ; preds = %171
  %190 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %191 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %11, align 8
  %192 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @fs32_to_cpu(%struct.qnx6_sb_info* %190, i32 %193)
  %195 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %196 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = add nsw i64 %197, 8
  %199 = inttoptr i64 %198 to i8*
  %200 = call i64 @crc32_be(i32 0, i8* %199, i32 504)
  %201 = icmp ne i64 %194, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %189
  %203 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %374

204:                                              ; preds = %189
  %205 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %206 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %207 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i64 @fs64_to_cpu(%struct.qnx6_sb_info* %205, i32 %208)
  %210 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %211 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %11, align 8
  %212 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @fs64_to_cpu(%struct.qnx6_sb_info* %210, i32 %213)
  %215 = icmp sge i64 %209, %214
  br i1 %215, label %216, label %229

216:                                              ; preds = %204
  %217 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %218 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %219 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %218, i32 0, i32 5
  store %struct.buffer_head* %217, %struct.buffer_head** %219, align 8
  %220 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %221 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = inttoptr i64 %222 to %struct.qnx6_super_block*
  %224 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %225 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %224, i32 0, i32 4
  store %struct.qnx6_super_block* %223, %struct.qnx6_super_block** %225, align 8
  %226 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %227 = call i32 @brelse(%struct.buffer_head* %226)
  %228 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %242

229:                                              ; preds = %204
  %230 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %231 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %232 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %231, i32 0, i32 5
  store %struct.buffer_head* %230, %struct.buffer_head** %232, align 8
  %233 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %234 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to %struct.qnx6_super_block*
  %237 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %238 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %237, i32 0, i32 4
  store %struct.qnx6_super_block* %236, %struct.qnx6_super_block** %238, align 8
  %239 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %240 = call i32 @brelse(%struct.buffer_head* %239)
  %241 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %242

242:                                              ; preds = %229, %216
  br label %243

243:                                              ; preds = %242, %58
  %244 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %245 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @QNX6_PTR_MAX_LEVELS, align 8
  %249 = icmp sgt i64 %247, %248
  br i1 %249, label %250, label %257

250:                                              ; preds = %243
  %251 = load i64, i64* @QNX6_PTR_MAX_LEVELS, align 8
  %252 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %253 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  %256 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i64 %251, i64 %255)
  br label %374

257:                                              ; preds = %243
  %258 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %259 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @QNX6_PTR_MAX_LEVELS, align 8
  %263 = icmp sgt i64 %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %257
  %265 = load i64, i64* @QNX6_PTR_MAX_LEVELS, align 8
  %266 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %267 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0), i64 %265, i64 %269)
  br label %374

271:                                              ; preds = %257
  %272 = load %struct.super_block*, %struct.super_block** %5, align 8
  %273 = getelementptr inbounds %struct.super_block, %struct.super_block* %272, i32 0, i32 8
  store i32* @qnx6_sops, i32** %273, align 8
  %274 = load i64, i64* @QNX6_SUPER_MAGIC, align 8
  %275 = load %struct.super_block*, %struct.super_block** %5, align 8
  %276 = getelementptr inbounds %struct.super_block, %struct.super_block* %275, i32 0, i32 7
  store i64 %274, i64* %276, align 8
  %277 = load i32, i32* @SB_RDONLY, align 4
  %278 = load %struct.super_block*, %struct.super_block** %5, align 8
  %279 = getelementptr inbounds %struct.super_block, %struct.super_block* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 8
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load %struct.super_block*, %struct.super_block** %5, align 8
  %283 = getelementptr inbounds %struct.super_block, %struct.super_block* %282, i32 0, i32 5
  store i64 0, i64* %283, align 8
  %284 = load i32, i32* @U32_MAX, align 4
  %285 = load %struct.super_block*, %struct.super_block** %5, align 8
  %286 = getelementptr inbounds %struct.super_block, %struct.super_block* %285, i32 0, i32 4
  store i32 %284, i32* %286, align 8
  %287 = load %struct.super_block*, %struct.super_block** %5, align 8
  %288 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %287)
  store %struct.qnx6_sb_info* %288, %struct.qnx6_sb_info** %12, align 8
  %289 = load %struct.super_block*, %struct.super_block** %5, align 8
  %290 = getelementptr inbounds %struct.super_block, %struct.super_block* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = sdiv i32 %291, 4
  %293 = call i32 @ilog2(i32 %292)
  %294 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %295 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %294, i32 0, i32 3
  store i32 %293, i32* %295, align 8
  %296 = load %struct.super_block*, %struct.super_block** %5, align 8
  %297 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %298 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %297, i32 0, i32 1
  %299 = call i8* @qnx6_private_inode(%struct.super_block* %296, %struct.TYPE_2__* %298)
  %300 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %301 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %300, i32 0, i32 1
  store i8* %299, i8** %301, align 8
  %302 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %303 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %307, label %306

306:                                              ; preds = %271
  br label %374

307:                                              ; preds = %271
  %308 = load %struct.super_block*, %struct.super_block** %5, align 8
  %309 = load %struct.qnx6_super_block*, %struct.qnx6_super_block** %10, align 8
  %310 = getelementptr inbounds %struct.qnx6_super_block, %struct.qnx6_super_block* %309, i32 0, i32 0
  %311 = call i8* @qnx6_private_inode(%struct.super_block* %308, %struct.TYPE_2__* %310)
  %312 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %313 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %312, i32 0, i32 2
  store i8* %311, i8** %313, align 8
  %314 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %315 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %314, i32 0, i32 2
  %316 = load i8*, i8** %315, align 8
  %317 = icmp ne i8* %316, null
  br i1 %317, label %319, label %318

318:                                              ; preds = %307
  br label %369

319:                                              ; preds = %307
  %320 = load %struct.super_block*, %struct.super_block** %5, align 8
  %321 = load i32, i32* @QNX6_ROOT_INO, align 4
  %322 = call %struct.inode* @qnx6_iget(%struct.super_block* %320, i32 %321)
  store %struct.inode* %322, %struct.inode** %13, align 8
  %323 = load %struct.inode*, %struct.inode** %13, align 8
  %324 = call i64 @IS_ERR(%struct.inode* %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %319
  %327 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %328 = load %struct.inode*, %struct.inode** %13, align 8
  %329 = call i32 @PTR_ERR(%struct.inode* %328)
  store i32 %329, i32* %16, align 4
  br label %364

330:                                              ; preds = %319
  %331 = load i32, i32* @ENOMEM, align 4
  %332 = sub nsw i32 0, %331
  store i32 %332, i32* %16, align 4
  %333 = load %struct.inode*, %struct.inode** %13, align 8
  %334 = call i32* @d_make_root(%struct.inode* %333)
  %335 = load %struct.super_block*, %struct.super_block** %5, align 8
  %336 = getelementptr inbounds %struct.super_block, %struct.super_block* %335, i32 0, i32 3
  store i32* %334, i32** %336, align 8
  %337 = load %struct.super_block*, %struct.super_block** %5, align 8
  %338 = getelementptr inbounds %struct.super_block, %struct.super_block* %337, i32 0, i32 3
  %339 = load i32*, i32** %338, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %342, label %341

341:                                              ; preds = %330
  br label %364

342:                                              ; preds = %330
  %343 = load i32, i32* @EINVAL, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %16, align 4
  %345 = load %struct.super_block*, %struct.super_block** %5, align 8
  %346 = call i8* @qnx6_checkroot(%struct.super_block* %345)
  store i8* %346, i8** %14, align 8
  %347 = load i8*, i8** %14, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %356

349:                                              ; preds = %342
  %350 = load i32, i32* %7, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = load i8*, i8** %14, align 8
  %354 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %353)
  br label %355

355:                                              ; preds = %352, %349
  br label %357

356:                                              ; preds = %342
  store i32 0, i32* %4, align 4
  br label %393

357:                                              ; preds = %355
  %358 = load %struct.super_block*, %struct.super_block** %5, align 8
  %359 = getelementptr inbounds %struct.super_block, %struct.super_block* %358, i32 0, i32 3
  %360 = load i32*, i32** %359, align 8
  %361 = call i32 @dput(i32* %360)
  %362 = load %struct.super_block*, %struct.super_block** %5, align 8
  %363 = getelementptr inbounds %struct.super_block, %struct.super_block* %362, i32 0, i32 3
  store i32* null, i32** %363, align 8
  br label %364

364:                                              ; preds = %357, %341, %326
  %365 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %366 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %365, i32 0, i32 2
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @iput(i8* %367)
  br label %369

369:                                              ; preds = %364, %318
  %370 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %12, align 8
  %371 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %370, i32 0, i32 1
  %372 = load i8*, i8** %371, align 8
  %373 = call i32 @iput(i8* %372)
  br label %374

374:                                              ; preds = %369, %306, %264, %250, %202, %188, %169, %111, %100
  %375 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %376 = icmp ne %struct.buffer_head* %375, null
  br i1 %376, label %377, label %380

377:                                              ; preds = %374
  %378 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %379 = call i32 @brelse(%struct.buffer_head* %378)
  br label %380

380:                                              ; preds = %377, %374
  %381 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %382 = icmp ne %struct.buffer_head* %381, null
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %385 = call i32 @brelse(%struct.buffer_head* %384)
  br label %386

386:                                              ; preds = %383, %380
  br label %387

387:                                              ; preds = %386, %125, %80, %59, %45, %38
  %388 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %15, align 8
  %389 = call i32 @kfree(%struct.qnx6_sb_info* %388)
  %390 = load %struct.super_block*, %struct.super_block** %5, align 8
  %391 = getelementptr inbounds %struct.super_block, %struct.super_block* %390, i32 0, i32 2
  store %struct.qnx6_sb_info* null, %struct.qnx6_sb_info** %391, align 8
  %392 = load i32, i32* %16, align 4
  store i32 %392, i32* %4, align 4
  br label %393

393:                                              ; preds = %387, %356, %26
  %394 = load i32, i32* %4, align 4
  ret i32 %394
}

declare dso_local %struct.qnx6_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @sb_set_blocksize(%struct.super_block*, i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @qnx6_parse_options(i8*, %struct.super_block*) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local %struct.qnx6_super_block* @qnx6_mmi_fill_super(%struct.super_block*, i32) #1

declare dso_local %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @qnx6_check_first_superblock(%struct.super_block*, i32, i32) #1

declare dso_local i64 @fs32_to_cpu(%struct.qnx6_sb_info*, i32) #1

declare dso_local i64 @crc32_be(i32, i8*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i64 @fs64_to_cpu(%struct.qnx6_sb_info*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i8* @qnx6_private_inode(%struct.super_block*, %struct.TYPE_2__*) #1

declare dso_local %struct.inode* @qnx6_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32* @d_make_root(%struct.inode*) #1

declare dso_local i8* @qnx6_checkroot(%struct.super_block*) #1

declare dso_local i32 @dput(i32*) #1

declare dso_local i32 @iput(i8*) #1

declare dso_local i32 @kfree(%struct.qnx6_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
