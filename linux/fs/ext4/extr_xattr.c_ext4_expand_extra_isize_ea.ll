; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_expand_extra_isize_ea.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_expand_extra_isize_ea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ext4_inode = type { i32 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_sb_info = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.buffer_head = type { i32, i8* }
%struct.TYPE_8__ = type { i32, i64 }

@ext4_expand_extra_isize_ea.mnt_count = internal global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to expand inode %lu. Delete some EAs or run e2fsck.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_expand_extra_isize_ea(%struct.inode* %0, i32 %1, %struct.ext4_inode* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext4_inode*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %11 = alloca %struct.ext4_sb_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext4_inode* %2, %struct.ext4_inode** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %26 = call %struct.ext4_sb_info* @EXT4_SB(%struct.TYPE_7__* %25)
  store %struct.ext4_sb_info* %26, %struct.ext4_sb_info** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %28 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %20, align 4
  br label %33

33:                                               ; preds = %184, %149, %4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %34, %38
  store i32 %39, i32* %21, align 4
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %243

47:                                               ; preds = %33
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = load %struct.ext4_inode*, %struct.ext4_inode** %8, align 8
  %50 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %48, %struct.ext4_inode* %49)
  store %struct.ext4_xattr_ibody_header* %50, %struct.ext4_xattr_ibody_header** %10, align 8
  %51 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %10, align 8
  %52 = call i8* @IFIRST(%struct.ext4_xattr_ibody_header* %51)
  store i8* %52, i8** %16, align 8
  %53 = load %struct.ext4_inode*, %struct.ext4_inode** %8, align 8
  %54 = bitcast %struct.ext4_inode* %53 to i8*
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = call %struct.ext4_sb_info* @EXT4_SB(%struct.TYPE_7__* %57)
  %59 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %54, i64 %61
  store i8* %62, i8** %17, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  store i64 %67, i64* %12, align 8
  store i32 8, i32* %15, align 4
  %68 = load %struct.inode*, %struct.inode** %6, align 8
  %69 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %10, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = call i32 @xattr_check_inode(%struct.inode* %68, %struct.ext4_xattr_ibody_header* %69, i8* %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %47
  br label %215

75:                                               ; preds = %47
  %76 = load i8*, i8** %16, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i64 @ext4_xattr_free_space(i8* %76, i64* %12, i8* %77, i32* %15)
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i32, i32* %21, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp uge i64 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %190

84:                                               ; preds = %75
  %85 = load %struct.inode*, %struct.inode** %6, align 8
  %86 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %157

90:                                               ; preds = %84
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 1
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %94)
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @REQ_PRIO, align 4
  %99 = call %struct.buffer_head* @ext4_sb_bread(%struct.TYPE_7__* %93, i64 %97, i32 %98)
  store %struct.buffer_head* %99, %struct.buffer_head** %22, align 8
  %100 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %101 = call i64 @IS_ERR(%struct.buffer_head* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %90
  %104 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %105 = call i32 @PTR_ERR(%struct.buffer_head* %104)
  store i32 %105, i32* %18, align 4
  br label %215

106:                                              ; preds = %90
  %107 = load %struct.inode*, %struct.inode** %6, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %109 = call i32 @ext4_xattr_check_block(%struct.inode* %107, %struct.buffer_head* %108)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %114 = call i32 @brelse(%struct.buffer_head* %113)
  br label %215

115:                                              ; preds = %106
  %116 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %117 = call i8* @BHDR(%struct.buffer_head* %116)
  store i8* %117, i8** %16, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %119 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %122 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr i8, i8* %120, i64 %124
  store i8* %125, i8** %17, align 8
  %126 = load i8*, i8** %17, align 8
  %127 = load i8*, i8** %16, align 8
  %128 = ptrtoint i8* %126 to i64
  %129 = ptrtoint i8* %127 to i64
  %130 = sub i64 %128, %129
  store i64 %130, i64* %12, align 8
  %131 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %132 = call i8* @BFIRST(%struct.buffer_head* %131)
  %133 = load i8*, i8** %16, align 8
  %134 = call i64 @ext4_xattr_free_space(i8* %132, i64* %12, i8* %133, i32* null)
  store i64 %134, i64* %14, align 8
  %135 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %136 = call i32 @brelse(%struct.buffer_head* %135)
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* %13, align 8
  %139 = add i64 %137, %138
  %140 = load i32, i32* %21, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp ult i64 %139, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %115
  %144 = load i32, i32* %19, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %20, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %19, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %20, align 4
  store i32 %152, i32* %7, align 4
  br label %33

153:                                              ; preds = %146, %143
  %154 = load i32, i32* @ENOSPC, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %18, align 4
  br label %215

156:                                              ; preds = %115
  br label %163

157:                                              ; preds = %84
  %158 = load %struct.inode*, %struct.inode** %6, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 1
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %14, align 8
  br label %163

163:                                              ; preds = %157, %156
  %164 = load i32*, i32** %9, align 8
  %165 = load %struct.inode*, %struct.inode** %6, align 8
  %166 = load %struct.ext4_inode*, %struct.ext4_inode** %8, align 8
  %167 = load i32, i32* %21, align 4
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %14, align 8
  %170 = call i32 @ext4_xattr_make_inode_space(i32* %164, %struct.inode* %165, %struct.ext4_inode* %166, i32 %167, i64 %168, i64 %169, i32* %15)
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %18, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %163
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* @ENOSPC, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp eq i32 %174, %176
  br i1 %177, label %178, label %188

178:                                              ; preds = %173
  %179 = load i32, i32* %19, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %188, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %20, align 4
  store i32 %187, i32* %7, align 4
  br label %33

188:                                              ; preds = %181, %178, %173
  br label %215

189:                                              ; preds = %163
  br label %190

190:                                              ; preds = %189, %83
  %191 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %10, align 8
  %192 = call i8* @IFIRST(%struct.ext4_xattr_ibody_header* %191)
  %193 = load %struct.inode*, %struct.inode** %6, align 8
  %194 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %193)
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sub nsw i32 %196, %197
  %199 = load %struct.ext4_inode*, %struct.ext4_inode** %8, align 8
  %200 = bitcast %struct.ext4_inode* %199 to i8*
  %201 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr i8, i8* %200, i64 %202
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr i8, i8* %203, i64 %205
  %207 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %10, align 8
  %208 = bitcast %struct.ext4_xattr_ibody_header* %207 to i8*
  %209 = load i32, i32* %15, align 4
  %210 = call i32 @ext4_xattr_shift_entries(i8* %192, i32 %198, i8* %206, i8* %208, i32 %209)
  %211 = load i32, i32* %7, align 4
  %212 = load %struct.inode*, %struct.inode** %6, align 8
  %213 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %212)
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  store i32 %211, i32* %214, align 8
  br label %215

215:                                              ; preds = %190, %188, %153, %112, %103, %74
  %216 = load i32, i32* %18, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %241

218:                                              ; preds = %215
  %219 = load i32, i32* @ext4_expand_extra_isize_ea.mnt_count, align 4
  %220 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %221 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %220, i32 0, i32 1
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @le16_to_cpu(i32 %224)
  %226 = icmp ne i32 %219, %225
  br i1 %226, label %227, label %241

227:                                              ; preds = %218
  %228 = load %struct.inode*, %struct.inode** %6, align 8
  %229 = getelementptr inbounds %struct.inode, %struct.inode* %228, i32 0, i32 1
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = load %struct.inode*, %struct.inode** %6, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @ext4_warning(%struct.TYPE_7__* %230, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %233)
  %235 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %11, align 8
  %236 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %235, i32 0, i32 1
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @le16_to_cpu(i32 %239)
  store i32 %240, i32* @ext4_expand_extra_isize_ea.mnt_count, align 4
  br label %241

241:                                              ; preds = %227, %218, %215
  %242 = load i32, i32* %18, align 4
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %241, %46
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.TYPE_7__*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_8__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext4_inode*) #1

declare dso_local i8* @IFIRST(%struct.ext4_xattr_ibody_header*) #1

declare dso_local i32 @xattr_check_inode(%struct.inode*, %struct.ext4_xattr_ibody_header*, i8*) #1

declare dso_local i64 @ext4_xattr_free_space(i8*, i64*, i8*, i32*) #1

declare dso_local %struct.buffer_head* @ext4_sb_bread(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_check_block(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i8* @BHDR(%struct.buffer_head*) #1

declare dso_local i8* @BFIRST(%struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_make_inode_space(i32*, %struct.inode*, %struct.ext4_inode*, i32, i64, i64, i32*) #1

declare dso_local i32 @ext4_xattr_shift_entries(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @ext4_warning(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
