; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_sysfs.c_features_show.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_sysfs.c_features_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_attr = type { i32 }
%struct.f2fs_sb_info = type { %struct.super_block* }
%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"encryption\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"blkzoned\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"extra_attr\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"projquota\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"inode_checksum\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"flexible_inline_xattr\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"quota_ino\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"inode_crtime\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"lost_found\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"verity\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"sb_checksum\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"casefold\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_attr*, %struct.f2fs_sb_info*, i8*)* @features_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @features_show(%struct.f2fs_attr* %0, %struct.f2fs_sb_info* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_attr*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store %struct.f2fs_attr* %0, %struct.f2fs_attr** %5, align 8
  store %struct.f2fs_sb_info* %1, %struct.f2fs_sb_info** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %11 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.super_block*, %struct.super_block** %8, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i8*, i8** %7, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %20, i64 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  br label %269

23:                                               ; preds = %3
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %25 = call i64 @f2fs_sb_has_encrypt(%struct.f2fs_sb_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %28, i64 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %27, %23
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %38 = call i64 @f2fs_sb_has_blkzoned(%struct.f2fs_sb_info* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i64, i64* @PAGE_SIZE, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %45, %47
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %53 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %44, i64 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %40, %36
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %58 = call i64 @f2fs_sb_has_extra_attr(%struct.f2fs_sb_info* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i64, i64* @PAGE_SIZE, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %65, %67
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %64, i64 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %60, %56
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %78 = call i64 @f2fs_sb_has_project_quota(%struct.f2fs_sb_info* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i64, i64* @PAGE_SIZE, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %85, %87
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %93 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %84, i64 %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %9, align 4
  br label %96

96:                                               ; preds = %80, %76
  %97 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %98 = call i64 @f2fs_sb_has_inode_chksum(%struct.f2fs_sb_info* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i64, i64* @PAGE_SIZE, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = sub nsw i64 %105, %107
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %113 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %104, i64 %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %100, %96
  %117 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %118 = call i64 @f2fs_sb_has_flexible_inline_xattr(%struct.f2fs_sb_info* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i64, i64* @PAGE_SIZE, align 8
  %126 = load i32, i32* %9, align 4
  %127 = sext i32 %126 to i64
  %128 = sub nsw i64 %125, %127
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %133 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %124, i64 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %132, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %120, %116
  %137 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %138 = call i64 @f2fs_sb_has_quota_ino(%struct.f2fs_sb_info* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %156

140:                                              ; preds = %136
  %141 = load i8*, i8** %7, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i64, i64* @PAGE_SIZE, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = sub nsw i64 %145, %147
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %153 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %144, i64 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %152, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %140, %136
  %157 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %158 = call i64 @f2fs_sb_has_inode_crtime(%struct.f2fs_sb_info* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %176

160:                                              ; preds = %156
  %161 = load i8*, i8** %7, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i64, i64* @PAGE_SIZE, align 8
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = sub nsw i64 %165, %167
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %173 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %164, i64 %168, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %160, %156
  %177 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %178 = call i64 @f2fs_sb_has_lost_found(%struct.f2fs_sb_info* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %196

180:                                              ; preds = %176
  %181 = load i8*, i8** %7, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = load i64, i64* @PAGE_SIZE, align 8
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = sub nsw i64 %185, %187
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %193 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %184, i64 %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %180, %176
  %197 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %198 = call i64 @f2fs_sb_has_verity(%struct.f2fs_sb_info* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %216

200:                                              ; preds = %196
  %201 = load i8*, i8** %7, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = load i64, i64* @PAGE_SIZE, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = sub nsw i64 %205, %207
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %213 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %204, i64 %208, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %212, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0))
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, %213
  store i32 %215, i32* %9, align 4
  br label %216

216:                                              ; preds = %200, %196
  %217 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %218 = call i64 @f2fs_sb_has_sb_chksum(%struct.f2fs_sb_info* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %236

220:                                              ; preds = %216
  %221 = load i8*, i8** %7, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = load i64, i64* @PAGE_SIZE, align 8
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = sub nsw i64 %225, %227
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %233 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %224, i64 %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %234 = load i32, i32* %9, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %9, align 4
  br label %236

236:                                              ; preds = %220, %216
  %237 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %238 = call i64 @f2fs_sb_has_casefold(%struct.f2fs_sb_info* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %256

240:                                              ; preds = %236
  %241 = load i8*, i8** %7, align 8
  %242 = load i32, i32* %9, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  %245 = load i64, i64* @PAGE_SIZE, align 8
  %246 = load i32, i32* %9, align 4
  %247 = sext i32 %246 to i64
  %248 = sub nsw i64 %245, %247
  %249 = load i32, i32* %9, align 4
  %250 = icmp ne i32 %249, 0
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %253 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %244, i64 %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %252, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  %254 = load i32, i32* %9, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %9, align 4
  br label %256

256:                                              ; preds = %240, %236
  %257 = load i8*, i8** %7, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %257, i64 %259
  %261 = load i64, i64* @PAGE_SIZE, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = sub nsw i64 %261, %263
  %265 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %260, i64 %264, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, %265
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %9, align 4
  store i32 %268, i32* %4, align 4
  br label %269

269:                                              ; preds = %256, %19
  %270 = load i32, i32* %4, align 4
  ret i32 %270
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i64 @f2fs_sb_has_encrypt(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_blkzoned(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_extra_attr(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_project_quota(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_inode_chksum(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_flexible_inline_xattr(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_quota_ino(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_inode_crtime(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_lost_found(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_verity(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_sb_chksum(%struct.f2fs_sb_info*) #1

declare dso_local i64 @f2fs_sb_has_casefold(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
