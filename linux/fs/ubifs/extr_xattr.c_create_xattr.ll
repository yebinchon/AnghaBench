; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_create_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_create_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.inode = type { i32, i32, i32, i32*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.fscrypt_name = type { i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ubifs_budget_req = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"inode %lu already has too many xattrs (%d), cannot create more\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@XATTR_LIST_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [92 x i8] c"cannot add one more xattr name to inode %lu, total names length would become %d, max. is %d\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@empty_aops = common dso_local global i32 0, align 4
@empty_iops = common dso_local global i32 0, align 4
@empty_fops = common dso_local global i32 0, align 4
@S_SYNC = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_NOCMTIME = common dso_local global i32 0, align 4
@UBIFS_XATTR_FL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT = common dso_local global i32 0, align 4
@UBIFS_CRYPT_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, i8*, i32)* @create_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_xattr(%struct.ubifs_info* %0, %struct.inode* %1, %struct.fscrypt_name* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.fscrypt_name*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.ubifs_inode*, align 8
  %16 = alloca %struct.ubifs_inode*, align 8
  %17 = alloca %struct.ubifs_budget_req, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.fscrypt_name* %2, %struct.fscrypt_name** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %18)
  store %struct.ubifs_inode* %19, %struct.ubifs_inode** %16, align 8
  %20 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %17, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %17, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %17, i32 0, i32 2
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %17, i32 0, i32 3
  %24 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %25 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ALIGN(i32 %26, i32 8)
  store i32 %27, i32* %23, align 4
  %28 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %17, i32 0, i32 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @ALIGN(i32 %29, i32 8)
  store i32 %30, i32* %28, align 4
  %31 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %32 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %35 = call i32 @ubifs_xattr_max_cnt(%struct.ubifs_info* %34)
  %36 = icmp sge i32 %33, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %5
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %43 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.ubifs_info*, i8*, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %38, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %254

48:                                               ; preds = %5
  %49 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %50 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %53 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %57 = call i32 @fname_len(%struct.fscrypt_name* %56)
  %58 = add nsw i32 %55, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @XATTR_LIST_MAX, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %48
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @XATTR_LIST_MAX, align 4
  %70 = call i32 (%struct.ubifs_info*, i8*, i32, i32, ...) @ubifs_err(%struct.ubifs_info* %64, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* @ENOSPC, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %254

73:                                               ; preds = %48
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %75 = call i32 @ubifs_budget_space(%struct.ubifs_info* %74, %struct.ubifs_budget_req* %17)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %254

80:                                               ; preds = %73
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = load i32, i32* @S_IFREG, align 4
  %84 = load i32, i32* @S_IRWXUGO, align 4
  %85 = or i32 %83, %84
  %86 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %81, %struct.inode* %82, i32 %85)
  store %struct.inode* %86, %struct.inode** %14, align 8
  %87 = load %struct.inode*, %struct.inode** %14, align 8
  %88 = call i64 @IS_ERR(%struct.inode* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load %struct.inode*, %struct.inode** %14, align 8
  %92 = call i32 @PTR_ERR(%struct.inode* %91)
  store i32 %92, i32* %12, align 4
  br label %250

93:                                               ; preds = %80
  %94 = load %struct.inode*, %struct.inode** %14, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 5
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32* @empty_aops, i32** %97, align 8
  %98 = load %struct.inode*, %struct.inode** %14, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 4
  store i32* @empty_iops, i32** %99, align 8
  %100 = load %struct.inode*, %struct.inode** %14, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 3
  store i32* @empty_fops, i32** %101, align 8
  %102 = load i32, i32* @S_SYNC, align 4
  %103 = load i32, i32* @S_NOATIME, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @S_NOCMTIME, align 4
  %106 = or i32 %104, %105
  %107 = load %struct.inode*, %struct.inode** %14, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.inode*, %struct.inode** %14, align 8
  %112 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %111)
  store %struct.ubifs_inode* %112, %struct.ubifs_inode** %15, align 8
  %113 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %114 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %113, i32 0, i32 3
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* @UBIFS_XATTR_FL, align 4
  %116 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %117 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @GFP_NOFS, align 4
  %123 = call i32 @kmemdup(i8* %120, i32 %121, i32 %122)
  %124 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %125 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %124, i32 0, i32 8
  store i32 %123, i32* %125, align 4
  %126 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %127 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %93
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %12, align 4
  br label %245

133:                                              ; preds = %93
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %136 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.inode*, %struct.inode** %14, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 1
  store i32 %134, i32* %138, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %141 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %143 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %142, i32 0, i32 5
  %144 = call i32 @mutex_lock(i32* %143)
  %145 = load %struct.inode*, %struct.inode** %8, align 8
  %146 = call i32 @current_time(%struct.inode* %145)
  %147 = load %struct.inode*, %struct.inode** %8, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %150 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %154 = call i32 @fname_len(%struct.fscrypt_name* %153)
  %155 = call i64 @CALC_DENT_SIZE(i32 %154)
  %156 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %157 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %156, i32 0, i32 7
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %155
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i64 @CALC_XATTR_BYTES(i32 %162)
  %164 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %165 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %163
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 4
  %170 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %171 = call i32 @fname_len(%struct.fscrypt_name* %170)
  %172 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %173 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %171
  store i32 %175, i32* %173, align 4
  %176 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %177 = call i32 @fname_name(%struct.fscrypt_name* %176)
  %178 = load i32, i32* @UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT, align 4
  %179 = call i64 @strcmp(i32 %177, i32 %178)
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %133
  %182 = load i32, i32* @UBIFS_CRYPT_FL, align 4
  %183 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %184 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = or i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %181, %133
  %188 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %189 = load %struct.inode*, %struct.inode** %8, align 8
  %190 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %191 = load %struct.inode*, %struct.inode** %14, align 8
  %192 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %188, %struct.inode* %189, %struct.fscrypt_name* %190, %struct.inode* %191, i32 0, i32 1)
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %208

196:                                              ; preds = %187
  %197 = load %struct.inode*, %struct.inode** %8, align 8
  %198 = call i32 @ubifs_set_inode_flags(%struct.inode* %197)
  %199 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %200 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %199, i32 0, i32 5
  %201 = call i32 @mutex_unlock(i32* %200)
  %202 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %203 = call i32 @ubifs_release_budget(%struct.ubifs_info* %202, %struct.ubifs_budget_req* %17)
  %204 = load %struct.inode*, %struct.inode** %14, align 8
  %205 = call i32 @insert_inode_hash(%struct.inode* %204)
  %206 = load %struct.inode*, %struct.inode** %14, align 8
  %207 = call i32 @iput(%struct.inode* %206)
  store i32 0, i32* %6, align 4
  br label %254

208:                                              ; preds = %195
  %209 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %210 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %214 = call i32 @fname_len(%struct.fscrypt_name* %213)
  %215 = call i64 @CALC_DENT_SIZE(i32 %214)
  %216 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %217 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %216, i32 0, i32 7
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = sub nsw i64 %219, %215
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %217, align 4
  %222 = load i32, i32* %11, align 4
  %223 = call i64 @CALC_XATTR_BYTES(i32 %222)
  %224 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %225 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = sub nsw i64 %227, %223
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %225, align 4
  %230 = load %struct.fscrypt_name*, %struct.fscrypt_name** %9, align 8
  %231 = call i32 @fname_len(%struct.fscrypt_name* %230)
  %232 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %233 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %234, %231
  store i32 %235, i32* %233, align 4
  %236 = load i32, i32* @UBIFS_CRYPT_FL, align 4
  %237 = xor i32 %236, -1
  %238 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %239 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, %237
  store i32 %241, i32* %239, align 4
  %242 = load %struct.ubifs_inode*, %struct.ubifs_inode** %16, align 8
  %243 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %242, i32 0, i32 5
  %244 = call i32 @mutex_unlock(i32* %243)
  br label %245

245:                                              ; preds = %208, %130
  %246 = load %struct.inode*, %struct.inode** %14, align 8
  %247 = call i32 @make_bad_inode(%struct.inode* %246)
  %248 = load %struct.inode*, %struct.inode** %14, align 8
  %249 = call i32 @iput(%struct.inode* %248)
  br label %250

250:                                              ; preds = %245, %90
  %251 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %252 = call i32 @ubifs_release_budget(%struct.ubifs_info* %251, %struct.ubifs_budget_req* %17)
  %253 = load i32, i32* %12, align 4
  store i32 %253, i32* %6, align 4
  br label %254

254:                                              ; preds = %250, %196, %78, %63, %37
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @ubifs_xattr_max_cnt(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, ...) #1

declare dso_local i32 @fname_len(%struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i64 @CALC_DENT_SIZE(i32) #1

declare dso_local i64 @CALC_XATTR_BYTES(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @fname_name(%struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ubifs_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
