; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_ialloc.c_udf_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_ialloc.c_udf_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.super_block*, i64, i32, i32, i32, i32 }
%struct.super_block = type { i64 }
%struct.udf_sb_info = type { i64, i32, i32, i32 }
%struct.udf_inode_info = type { i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i8* }
%struct.logicalVolIntegrityDescImpUse = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@UDF_FLAG_USE_EXTENDED_FE = common dso_local global i32 0, align 4
@UDF_VERS_USE_EXTENDED_FE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@UDF_FLAG_UID_SET = common dso_local global i32 0, align 4
@UDF_FLAG_GID_SET = common dso_local global i32 0, align 4
@FE_PERM_U_CHATTR = common dso_local global i32 0, align 4
@UDF_FLAG_USE_AD_IN_ICB = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i32 0, align 4
@UDF_FLAG_USE_SHORT_AD = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_SHORT = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_LONG = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @udf_new_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.udf_sb_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.udf_inode_info*, align 8
  %12 = alloca %struct.udf_inode_info*, align 8
  %13 = alloca %struct.logicalVolIntegrityDescImpUse*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 3
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %6, align 8
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %18)
  store %struct.udf_sb_info* %19, %struct.udf_sb_info** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %25)
  store %struct.udf_inode_info* %26, %struct.udf_inode_info** %12, align 8
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = call %struct.inode* @new_inode(%struct.super_block* %27)
  store %struct.inode* %28, %struct.inode** %8, align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = icmp ne %struct.inode* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.inode* @ERR_PTR(i32 %33)
  store %struct.inode* %34, %struct.inode** %3, align 8
  br label %266

35:                                               ; preds = %2
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %36)
  store %struct.udf_inode_info* %37, %struct.udf_inode_info** %11, align 8
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 3
  %40 = load %struct.super_block*, %struct.super_block** %39, align 8
  %41 = load i32, i32* @UDF_FLAG_USE_EXTENDED_FE, align 4
  %42 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %35
  %45 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %46 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i64, i64* @UDF_VERS_USE_EXTENDED_FE, align 8
  %48 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %49 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load i64, i64* @UDF_VERS_USE_EXTENDED_FE, align 8
  %54 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %55 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %44
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 3
  %59 = load %struct.super_block*, %struct.super_block** %58, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub i64 %61, 4
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = call i8* @kzalloc(i64 %62, i32 %63)
  %65 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %66 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %65, i32 0, i32 10
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  br label %82

68:                                               ; preds = %35
  %69 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %70 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  %71 = load %struct.inode*, %struct.inode** %8, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 3
  %73 = load %struct.super_block*, %struct.super_block** %72, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %75, 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @kzalloc(i64 %76, i32 %77)
  %79 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %80 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %79, i32 0, i32 10
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  br label %82

82:                                               ; preds = %68, %56
  %83 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %84 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %83, i32 0, i32 10
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = call i32 @iput(%struct.inode* %89)
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  %93 = call %struct.inode* @ERR_PTR(i32 %92)
  store %struct.inode* %93, %struct.inode** %3, align 8
  br label %266

94:                                               ; preds = %82
  %95 = load i32, i32* @ENOSPC, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %14, align 4
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 3
  %99 = load %struct.super_block*, %struct.super_block** %98, align 8
  %100 = load %struct.udf_inode_info*, %struct.udf_inode_info** %12, align 8
  %101 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @udf_new_block(%struct.super_block* %99, i32* null, i32 %103, i32 %104, i32* %14)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %94
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = call i32 @iput(%struct.inode* %109)
  %111 = load i32, i32* %14, align 4
  %112 = call %struct.inode* @ERR_PTR(i32 %111)
  store %struct.inode* %112, %struct.inode** %3, align 8
  br label %266

113:                                              ; preds = %94
  %114 = load %struct.super_block*, %struct.super_block** %6, align 8
  %115 = call %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block* %114)
  store %struct.logicalVolIntegrityDescImpUse* %115, %struct.logicalVolIntegrityDescImpUse** %13, align 8
  %116 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %13, align 8
  %117 = icmp ne %struct.logicalVolIntegrityDescImpUse* %116, null
  br i1 %117, label %118, label %148

118:                                              ; preds = %113
  %119 = load %struct.super_block*, %struct.super_block** %6, align 8
  %120 = call i32 @lvid_get_unique_id(%struct.super_block* %119)
  %121 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %122 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %121, i32 0, i32 9
  store i32 %120, i32* %122, align 8
  %123 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %124 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 4
  %128 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %129 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %128, i32 0, i32 3
  %130 = call i32 @mutex_lock(i32* %129)
  %131 = load i32, i32* %5, align 4
  %132 = call i64 @S_ISDIR(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %118
  %135 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %13, align 8
  %136 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %135, i32 0, i32 1
  %137 = call i32 @le32_add_cpu(i32* %136, i32 1)
  br label %142

138:                                              ; preds = %118
  %139 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %13, align 8
  %140 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %139, i32 0, i32 0
  %141 = call i32 @le32_add_cpu(i32* %140, i32 1)
  br label %142

142:                                              ; preds = %138, %134
  %143 = load %struct.super_block*, %struct.super_block** %6, align 8
  %144 = call i32 @udf_updated_lvid(%struct.super_block* %143)
  %145 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %146 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %145, i32 0, i32 3
  %147 = call i32 @mutex_unlock(i32* %146)
  br label %148

148:                                              ; preds = %142, %113
  %149 = load %struct.inode*, %struct.inode** %8, align 8
  %150 = load %struct.inode*, %struct.inode** %4, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @inode_init_owner(%struct.inode* %149, %struct.inode* %150, i32 %151)
  %153 = load %struct.super_block*, %struct.super_block** %6, align 8
  %154 = load i32, i32* @UDF_FLAG_UID_SET, align 4
  %155 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %148
  %158 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %159 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.inode*, %struct.inode** %8, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %157, %148
  %164 = load %struct.super_block*, %struct.super_block** %6, align 8
  %165 = load i32, i32* @UDF_FLAG_GID_SET, align 4
  %166 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %163
  %169 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %170 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.inode*, %struct.inode** %8, align 8
  %173 = getelementptr inbounds %struct.inode, %struct.inode* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %168, %163
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %177 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %176, i32 0, i32 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 4
  %179 = load %struct.udf_inode_info*, %struct.udf_inode_info** %12, align 8
  %180 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %184 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %183, i32 0, i32 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 8
  %186 = load %struct.super_block*, %struct.super_block** %6, align 8
  %187 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %188 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %187, i32 0, i32 8
  %189 = call i32 @udf_get_lb_pblock(%struct.super_block* %186, %struct.TYPE_4__* %188, i32 0)
  %190 = load %struct.inode*, %struct.inode** %8, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 5
  store i32 %189, i32* %191, align 8
  %192 = load %struct.inode*, %struct.inode** %8, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 4
  store i64 0, i64* %193, align 8
  %194 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %195 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %194, i32 0, i32 7
  store i64 0, i64* %195, align 8
  %196 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %197 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %196, i32 0, i32 6
  store i64 0, i64* %197, align 8
  %198 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %199 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %198, i32 0, i32 5
  store i64 0, i64* %199, align 8
  %200 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %201 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %200, i32 0, i32 1
  store i32 1, i32* %201, align 4
  %202 = load i32, i32* @FE_PERM_U_CHATTR, align 4
  %203 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %204 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  %205 = load %struct.inode*, %struct.inode** %8, align 8
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @udf_update_extra_perms(%struct.inode* %205, i32 %206)
  %208 = load %struct.inode*, %struct.inode** %8, align 8
  %209 = getelementptr inbounds %struct.inode, %struct.inode* %208, i32 0, i32 3
  %210 = load %struct.super_block*, %struct.super_block** %209, align 8
  %211 = load i32, i32* @UDF_FLAG_USE_AD_IN_ICB, align 4
  %212 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %210, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %174
  %215 = load i32, i32* @ICBTAG_FLAG_AD_IN_ICB, align 4
  %216 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %217 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 4
  br label %234

218:                                              ; preds = %174
  %219 = load %struct.inode*, %struct.inode** %8, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 3
  %221 = load %struct.super_block*, %struct.super_block** %220, align 8
  %222 = load i32, i32* @UDF_FLAG_USE_SHORT_AD, align 4
  %223 = call i64 @UDF_QUERY_FLAG(%struct.super_block* %221, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load i32, i32* @ICBTAG_FLAG_AD_SHORT, align 4
  %227 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %228 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %227, i32 0, i32 3
  store i32 %226, i32* %228, align 4
  br label %233

229:                                              ; preds = %218
  %230 = load i32, i32* @ICBTAG_FLAG_AD_LONG, align 4
  %231 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %232 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %229, %225
  br label %234

234:                                              ; preds = %233, %214
  %235 = load %struct.inode*, %struct.inode** %8, align 8
  %236 = call i32 @current_time(%struct.inode* %235)
  %237 = load %struct.inode*, %struct.inode** %8, align 8
  %238 = getelementptr inbounds %struct.inode, %struct.inode* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 4
  %239 = load %struct.inode*, %struct.inode** %8, align 8
  %240 = getelementptr inbounds %struct.inode, %struct.inode* %239, i32 0, i32 2
  store i32 %236, i32* %240, align 8
  %241 = load %struct.inode*, %struct.inode** %8, align 8
  %242 = getelementptr inbounds %struct.inode, %struct.inode* %241, i32 0, i32 0
  store i32 %236, i32* %242, align 8
  %243 = load %struct.inode*, %struct.inode** %8, align 8
  %244 = getelementptr inbounds %struct.inode, %struct.inode* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %247 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 8
  %248 = load %struct.inode*, %struct.inode** %8, align 8
  %249 = call i64 @insert_inode_locked(%struct.inode* %248)
  %250 = icmp slt i64 %249, 0
  %251 = zext i1 %250 to i32
  %252 = call i64 @unlikely(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %234
  %255 = load %struct.inode*, %struct.inode** %8, align 8
  %256 = call i32 @make_bad_inode(%struct.inode* %255)
  %257 = load %struct.inode*, %struct.inode** %8, align 8
  %258 = call i32 @iput(%struct.inode* %257)
  %259 = load i32, i32* @EIO, align 4
  %260 = sub nsw i32 0, %259
  %261 = call %struct.inode* @ERR_PTR(i32 %260)
  store %struct.inode* %261, %struct.inode** %3, align 8
  br label %266

262:                                              ; preds = %234
  %263 = load %struct.inode*, %struct.inode** %8, align 8
  %264 = call i32 @mark_inode_dirty(%struct.inode* %263)
  %265 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %265, %struct.inode** %3, align 8
  br label %266

266:                                              ; preds = %262, %254, %108, %88, %31
  %267 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %267
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @udf_new_block(%struct.super_block*, i32*, i32, i32, i32*) #1

declare dso_local %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.super_block*) #1

declare dso_local i32 @lvid_get_unique_id(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @udf_updated_lvid(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.super_block*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @udf_update_extra_perms(%struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @insert_inode_locked(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
