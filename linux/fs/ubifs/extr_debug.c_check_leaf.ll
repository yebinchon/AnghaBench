; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_check_leaf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_debug.c_check_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64 }
%struct.ubifs_zbranch = type { i64, i32, i32, i32 }
%struct.ubifs_ch = type { i32 }
%struct.fsck_inode = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ubifs_data_node = type { i32, i32 }
%struct.ubifs_dent_node = type { i64, i32, i32, i32 }

@UBIFS_CH_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"bad leaf length %d (LEB %d:%d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"cannot read leaf node at LEB %d:%d, error %d\00", align 1
@UBIFS_INO_KEY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"error %d while adding inode node\00", align 1
@UBIFS_DENT_KEY = common dso_local global i32 0, align 4
@UBIFS_XENT_KEY = common dso_local global i32 0, align 4
@UBIFS_DATA_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"unexpected node type %d at LEB %d:%d\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"too high sequence number, max. is %llu\00", align 1
@UBIFS_DATA_NODE_SZ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [70 x i8] c"error %d while processing data node and trying to find inode node %lu\00", align 1
@UBIFS_BLOCK_SHIFT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"data node at LEB %d:%d is not within inode size %lld\00", align 1
@UBIFS_DENT_NODE_SZ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [71 x i8] c"error %d while processing entry node and trying to find inode node %lu\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"error %d while processing entry node and trying to find parent inode node %lu\00", align 1
@UBIFS_ITYPE_DIR = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"dump of node at LEB %d:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*)* @check_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_leaf(%struct.ubifs_info* %0, %struct.ubifs_zbranch* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_zbranch*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ubifs_ch*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fsck_inode*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ubifs_data_node*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ubifs_dent_node*, align 8
  %18 = alloca %struct.fsck_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_zbranch* %1, %struct.ubifs_zbranch** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %20 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %21 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %20, i32 0, i32 3
  %22 = call i32 @key_type(%struct.ubifs_info* %19, i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %24 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UBIFS_CH_SZ, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %3
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %30 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %31 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %35 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %38 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %337

43:                                               ; preds = %3
  %44 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %45 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @GFP_NOFS, align 4
  %48 = call i8* @kmalloc(i64 %46, i32 %47)
  store i8* %48, i8** %9, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %337

54:                                               ; preds = %43
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %56 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @ubifs_tnc_read_node(%struct.ubifs_info* %55, %struct.ubifs_zbranch* %56, i8* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %63 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %64 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %67 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %62, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %69)
  br label %333

71:                                               ; preds = %54
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @UBIFS_INO_KEY, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call %struct.fsck_inode* @add_inode(%struct.ubifs_info* %76, i8* %77, i8* %78)
  store %struct.fsck_inode* %79, %struct.fsck_inode** %13, align 8
  %80 = load %struct.fsck_inode*, %struct.fsck_inode** %13, align 8
  %81 = call i64 @IS_ERR(%struct.fsck_inode* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.fsck_inode*, %struct.fsck_inode** %13, align 8
  %85 = call i32 @PTR_ERR(%struct.fsck_inode* %84)
  store i32 %85, i32* %11, align 4
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %321

89:                                               ; preds = %75
  br label %318

90:                                               ; preds = %71
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @UBIFS_DENT_KEY, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @UBIFS_XENT_KEY, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* @UBIFS_DATA_KEY, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %106 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %109 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %107, i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %333

114:                                              ; preds = %98, %94, %90
  %115 = load i8*, i8** %9, align 8
  %116 = bitcast i8* %115 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %116, %struct.ubifs_ch** %10, align 8
  %117 = load %struct.ubifs_ch*, %struct.ubifs_ch** %10, align 8
  %118 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @le64_to_cpu(i32 %119)
  %121 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %122 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %114
  %126 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %127 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %128 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  %131 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %11, align 4
  br label %321

134:                                              ; preds = %114
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* @UBIFS_DATA_KEY, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %201

138:                                              ; preds = %134
  %139 = load i8*, i8** %9, align 8
  %140 = bitcast i8* %139 to %struct.ubifs_data_node*
  store %struct.ubifs_data_node* %140, %struct.ubifs_data_node** %15, align 8
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %142 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %143 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @UBIFS_DATA_NODE_SZ, align 8
  %146 = icmp sge i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @ubifs_assert(%struct.ubifs_info* %141, i32 %147)
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %150 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %15, align 8
  %151 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %150, i32 0, i32 1
  %152 = call i64 @key_inum_flash(%struct.ubifs_info* %149, i32* %151)
  store i64 %152, i64* %8, align 8
  %153 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = load i64, i64* %8, align 8
  %156 = call %struct.fsck_inode* @read_add_inode(%struct.ubifs_info* %153, i8* %154, i64 %155)
  store %struct.fsck_inode* %156, %struct.fsck_inode** %13, align 8
  %157 = load %struct.fsck_inode*, %struct.fsck_inode** %13, align 8
  %158 = call i64 @IS_ERR(%struct.fsck_inode* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %138
  %161 = load %struct.fsck_inode*, %struct.fsck_inode** %13, align 8
  %162 = call i32 @PTR_ERR(%struct.fsck_inode* %161)
  store i32 %162, i32* %11, align 4
  %163 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i64, i64* %8, align 8
  %166 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %163, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.5, i64 0, i64 0), i32 %164, i64 %165)
  br label %321

167:                                              ; preds = %138
  %168 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %169 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %15, align 8
  %170 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %169, i32 0, i32 1
  %171 = call i64 @key_block_flash(%struct.ubifs_info* %168, i32* %170)
  store i64 %171, i64* %14, align 8
  %172 = load i64, i64* @UBIFS_BLOCK_SHIFT, align 8
  %173 = load i64, i64* %14, align 8
  %174 = shl i64 %173, %172
  store i64 %174, i64* %14, align 8
  %175 = load %struct.ubifs_data_node*, %struct.ubifs_data_node** %15, align 8
  %176 = getelementptr inbounds %struct.ubifs_data_node, %struct.ubifs_data_node* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i64 @le32_to_cpu(i32 %177)
  %179 = load i64, i64* %14, align 8
  %180 = add nsw i64 %179, %178
  store i64 %180, i64* %14, align 8
  %181 = load i64, i64* %14, align 8
  %182 = load %struct.fsck_inode*, %struct.fsck_inode** %13, align 8
  %183 = getelementptr inbounds %struct.fsck_inode, %struct.fsck_inode* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp sgt i64 %181, %184
  br i1 %185, label %186, label %200

186:                                              ; preds = %167
  %187 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %188 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %189 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %192 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.fsck_inode*, %struct.fsck_inode** %13, align 8
  %195 = getelementptr inbounds %struct.fsck_inode, %struct.fsck_inode* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %187, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %190, i32 %193, i64 %196)
  %198 = load i32, i32* @EINVAL, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %11, align 4
  br label %321

200:                                              ; preds = %167
  br label %317

201:                                              ; preds = %134
  %202 = load i8*, i8** %9, align 8
  %203 = bitcast i8* %202 to %struct.ubifs_dent_node*
  store %struct.ubifs_dent_node* %203, %struct.ubifs_dent_node** %17, align 8
  %204 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %205 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %206 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @UBIFS_DENT_NODE_SZ, align 8
  %209 = icmp sge i64 %207, %208
  %210 = zext i1 %209 to i32
  %211 = call i32 @ubifs_assert(%struct.ubifs_info* %204, i32 %210)
  %212 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %213 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %17, align 8
  %214 = call i32 @ubifs_validate_entry(%struct.ubifs_info* %212, %struct.ubifs_dent_node* %213)
  store i32 %214, i32* %11, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %201
  br label %321

218:                                              ; preds = %201
  %219 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %17, align 8
  %220 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @le64_to_cpu(i32 %221)
  store i64 %222, i64* %8, align 8
  %223 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %224 = load i8*, i8** %7, align 8
  %225 = load i64, i64* %8, align 8
  %226 = call %struct.fsck_inode* @read_add_inode(%struct.ubifs_info* %223, i8* %224, i64 %225)
  store %struct.fsck_inode* %226, %struct.fsck_inode** %13, align 8
  %227 = load %struct.fsck_inode*, %struct.fsck_inode** %13, align 8
  %228 = call i64 @IS_ERR(%struct.fsck_inode* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %218
  %231 = load %struct.fsck_inode*, %struct.fsck_inode** %13, align 8
  %232 = call i32 @PTR_ERR(%struct.fsck_inode* %231)
  store i32 %232, i32* %11, align 4
  %233 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %234 = load i32, i32* %11, align 4
  %235 = load i64, i64* %8, align 8
  %236 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %233, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i32 %234, i64 %235)
  br label %321

237:                                              ; preds = %218
  %238 = load %struct.fsck_inode*, %struct.fsck_inode** %13, align 8
  %239 = getelementptr inbounds %struct.fsck_inode, %struct.fsck_inode* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 8
  %242 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %243 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %17, align 8
  %244 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %243, i32 0, i32 2
  %245 = call i64 @key_inum_flash(%struct.ubifs_info* %242, i32* %244)
  store i64 %245, i64* %8, align 8
  %246 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %247 = load i8*, i8** %7, align 8
  %248 = load i64, i64* %8, align 8
  %249 = call %struct.fsck_inode* @read_add_inode(%struct.ubifs_info* %246, i8* %247, i64 %248)
  store %struct.fsck_inode* %249, %struct.fsck_inode** %18, align 8
  %250 = load %struct.fsck_inode*, %struct.fsck_inode** %18, align 8
  %251 = call i64 @IS_ERR(%struct.fsck_inode* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %237
  %254 = load %struct.fsck_inode*, %struct.fsck_inode** %18, align 8
  %255 = call i32 @PTR_ERR(%struct.fsck_inode* %254)
  store i32 %255, i32* %11, align 4
  %256 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %257 = load i32, i32* %11, align 4
  %258 = load i64, i64* %8, align 8
  %259 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %256, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0), i32 %257, i64 %258)
  br label %321

260:                                              ; preds = %237
  %261 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %17, align 8
  %262 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @le16_to_cpu(i32 %263)
  store i32 %264, i32* %16, align 4
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* @UBIFS_XENT_KEY, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %296

268:                                              ; preds = %260
  %269 = load %struct.fsck_inode*, %struct.fsck_inode** %18, align 8
  %270 = getelementptr inbounds %struct.fsck_inode, %struct.fsck_inode* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 4
  %273 = load i32, i32* %16, align 4
  %274 = call i64 @CALC_DENT_SIZE(i32 %273)
  %275 = load %struct.fsck_inode*, %struct.fsck_inode** %18, align 8
  %276 = getelementptr inbounds %struct.fsck_inode, %struct.fsck_inode* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %278, %274
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %276, align 4
  %281 = load %struct.fsck_inode*, %struct.fsck_inode** %13, align 8
  %282 = getelementptr inbounds %struct.fsck_inode, %struct.fsck_inode* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i64 @CALC_XATTR_BYTES(i64 %283)
  %285 = load %struct.fsck_inode*, %struct.fsck_inode** %18, align 8
  %286 = getelementptr inbounds %struct.fsck_inode, %struct.fsck_inode* %285, i32 0, i32 6
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = add nsw i64 %288, %284
  %290 = trunc i64 %289 to i32
  store i32 %290, i32* %286, align 4
  %291 = load i32, i32* %16, align 4
  %292 = load %struct.fsck_inode*, %struct.fsck_inode** %18, align 8
  %293 = getelementptr inbounds %struct.fsck_inode, %struct.fsck_inode* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, %291
  store i32 %295, i32* %293, align 8
  br label %316

296:                                              ; preds = %260
  %297 = load i32, i32* %16, align 4
  %298 = call i64 @CALC_DENT_SIZE(i32 %297)
  %299 = load %struct.fsck_inode*, %struct.fsck_inode** %18, align 8
  %300 = getelementptr inbounds %struct.fsck_inode, %struct.fsck_inode* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 8
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %302, %298
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %300, align 8
  %305 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %17, align 8
  %306 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @UBIFS_ITYPE_DIR, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %296
  %311 = load %struct.fsck_inode*, %struct.fsck_inode** %18, align 8
  %312 = getelementptr inbounds %struct.fsck_inode, %struct.fsck_inode* %311, i32 0, i32 4
  %313 = load i32, i32* %312, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %312, align 4
  br label %315

315:                                              ; preds = %310, %296
  br label %316

316:                                              ; preds = %315, %268
  br label %317

317:                                              ; preds = %316, %200
  br label %318

318:                                              ; preds = %317, %89
  %319 = load i8*, i8** %9, align 8
  %320 = call i32 @kfree(i8* %319)
  store i32 0, i32* %4, align 4
  br label %337

321:                                              ; preds = %253, %230, %217, %186, %160, %125, %83
  %322 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %323 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %324 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.ubifs_zbranch*, %struct.ubifs_zbranch** %6, align 8
  %327 = getelementptr inbounds %struct.ubifs_zbranch, %struct.ubifs_zbranch* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @ubifs_msg(%struct.ubifs_info* %322, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %325, i32 %328)
  %330 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %331 = load i8*, i8** %9, align 8
  %332 = call i32 @ubifs_dump_node(%struct.ubifs_info* %330, i8* %331)
  br label %333

333:                                              ; preds = %321, %102, %61
  %334 = load i8*, i8** %9, align 8
  %335 = call i32 @kfree(i8* %334)
  %336 = load i32, i32* %11, align 4
  store i32 %336, i32* %4, align 4
  br label %337

337:                                              ; preds = %333, %318, %51, %28
  %338 = load i32, i32* %4, align 4
  ret i32 %338
}

declare dso_local i32 @key_type(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, ...) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @ubifs_tnc_read_node(%struct.ubifs_info*, %struct.ubifs_zbranch*, i8*) #1

declare dso_local %struct.fsck_inode* @add_inode(%struct.ubifs_info*, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.fsck_inode*) #1

declare dso_local i32 @PTR_ERR(%struct.fsck_inode*) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @key_inum_flash(%struct.ubifs_info*, i32*) #1

declare dso_local %struct.fsck_inode* @read_add_inode(%struct.ubifs_info*, i8*, i64) #1

declare dso_local i64 @key_block_flash(%struct.ubifs_info*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_validate_entry(%struct.ubifs_info*, %struct.ubifs_dent_node*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @CALC_DENT_SIZE(i32) #1

declare dso_local i64 @CALC_XATTR_BYTES(i64) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ubifs_msg(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
