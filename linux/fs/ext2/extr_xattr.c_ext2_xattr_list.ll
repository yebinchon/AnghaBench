; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.buffer_head = type { i8*, i32, i32 }
%struct.ext2_xattr_entry = type { i64, i8*, i32 }
%struct.mb_cache = type { i32 }
%struct.xattr_handler = type { i8*, i32, i64 (%struct.dentry.0*)* }
%struct.dentry.0 = type opaque
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"buffer=%p, buffer_size=%ld\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"reading block %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"b_count=%d, refcount=%d\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"ext2_xattr_list\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"inode %ld: bad block %d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"cache insert failed\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, i64)* @ext2_xattr_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_xattr_list(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.ext2_xattr_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mb_cache*, align 8
  %14 = alloca %struct.xattr_handler*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = call %struct.inode* @d_inode(%struct.dentry* %18)
  store %struct.inode* %19, %struct.inode** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  %20 = load i64, i64* %6, align 8
  store i64 %20, i64* %11, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode* %21)
  store %struct.mb_cache* %22, %struct.mb_cache** %13, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %24, i64 %25)
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i32 @down_read(i32* %29)
  store i32 0, i32* %12, align 4
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  br label %220

37:                                               ; preds = %3
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.buffer_head* @sb_bread(%struct.TYPE_6__* %46, i32 %50)
  store %struct.buffer_head* %51, %struct.buffer_head** %8, align 8
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = icmp ne %struct.buffer_head* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %37
  br label %220

57:                                               ; preds = %37
  %58 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 2
  %61 = call i32 @atomic_read(i32* %60)
  %62 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %63 = call %struct.TYPE_7__* @HDR(%struct.buffer_head* %62)
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  %67 = call i32 @ea_bdebug(%struct.buffer_head* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %66)
  %68 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %72 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %70, i64 %74
  store i8* %75, i8** %10, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %77 = call %struct.TYPE_7__* @HDR(%struct.buffer_head* %76)
  %78 = call i32 @ext2_xattr_header_valid(%struct.TYPE_7__* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %57
  br label %81

81:                                               ; preds = %113, %80
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %88)
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ext2_error(%struct.TYPE_6__* %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %87, i32 %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %12, align 4
  br label %220

95:                                               ; preds = %57
  %96 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %97 = call %struct.ext2_xattr_entry* @FIRST_ENTRY(%struct.buffer_head* %96)
  store %struct.ext2_xattr_entry* %97, %struct.ext2_xattr_entry** %9, align 8
  br label %98

98:                                               ; preds = %114, %95
  %99 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %9, align 8
  %100 = call i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry* %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %9, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = load %struct.inode*, %struct.inode** %7, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ext2_xattr_entry_valid(%struct.ext2_xattr_entry* %104, i8* %105, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %103
  br label %81

114:                                              ; preds = %103
  %115 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %9, align 8
  %116 = call %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry* %115)
  store %struct.ext2_xattr_entry* %116, %struct.ext2_xattr_entry** %9, align 8
  br label %98

117:                                              ; preds = %98
  %118 = load %struct.mb_cache*, %struct.mb_cache** %13, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %120 = call i64 @ext2_xattr_cache_insert(%struct.mb_cache* %118, %struct.buffer_head* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.inode*, %struct.inode** %7, align 8
  %124 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %127 = call %struct.ext2_xattr_entry* @FIRST_ENTRY(%struct.buffer_head* %126)
  store %struct.ext2_xattr_entry* %127, %struct.ext2_xattr_entry** %9, align 8
  br label %128

128:                                              ; preds = %212, %125
  %129 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %9, align 8
  %130 = call i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry* %129)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br i1 %132, label %133, label %215

133:                                              ; preds = %128
  %134 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %9, align 8
  %135 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call %struct.xattr_handler* @ext2_xattr_handler(i32 %136)
  store %struct.xattr_handler* %137, %struct.xattr_handler** %14, align 8
  %138 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  %139 = icmp ne %struct.xattr_handler* %138, null
  br i1 %139, label %140, label %211

140:                                              ; preds = %133
  %141 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  %142 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %141, i32 0, i32 2
  %143 = load i64 (%struct.dentry.0*)*, i64 (%struct.dentry.0*)** %142, align 8
  %144 = icmp ne i64 (%struct.dentry.0*)* %143, null
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  %147 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %146, i32 0, i32 2
  %148 = load i64 (%struct.dentry.0*)*, i64 (%struct.dentry.0*)** %147, align 8
  %149 = load %struct.dentry*, %struct.dentry** %4, align 8
  %150 = bitcast %struct.dentry* %149 to %struct.dentry.0*
  %151 = call i64 %148(%struct.dentry.0* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %211

153:                                              ; preds = %145, %140
  %154 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  %155 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = sext i32 %156 to i64
  %160 = inttoptr i64 %159 to i8*
  br label %165

161:                                              ; preds = %153
  %162 = load %struct.xattr_handler*, %struct.xattr_handler** %14, align 8
  %163 = getelementptr inbounds %struct.xattr_handler, %struct.xattr_handler* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  br label %165

165:                                              ; preds = %161, %158
  %166 = phi i8* [ %160, %158 ], [ %164, %161 ]
  store i8* %166, i8** %15, align 8
  %167 = load i8*, i8** %15, align 8
  %168 = call i64 @strlen(i8* %167)
  store i64 %168, i64* %16, align 8
  %169 = load i64, i64* %16, align 8
  %170 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %9, align 8
  %171 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %169, %172
  %174 = add i64 %173, 1
  store i64 %174, i64* %17, align 8
  %175 = load i8*, i8** %5, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %207

177:                                              ; preds = %165
  %178 = load i64, i64* %17, align 8
  %179 = load i64, i64* %11, align 8
  %180 = icmp ugt i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* @ERANGE, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %12, align 4
  br label %220

184:                                              ; preds = %177
  %185 = load i8*, i8** %5, align 8
  %186 = load i8*, i8** %15, align 8
  %187 = load i64, i64* %16, align 8
  %188 = call i32 @memcpy(i8* %185, i8* %186, i64 %187)
  %189 = load i64, i64* %16, align 8
  %190 = load i8*, i8** %5, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 %189
  store i8* %191, i8** %5, align 8
  %192 = load i8*, i8** %5, align 8
  %193 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %9, align 8
  %194 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %9, align 8
  %197 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @memcpy(i8* %192, i8* %195, i64 %198)
  %200 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %9, align 8
  %201 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 %202
  store i8* %204, i8** %5, align 8
  %205 = load i8*, i8** %5, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %5, align 8
  store i8 0, i8* %205, align 1
  br label %207

207:                                              ; preds = %184, %165
  %208 = load i64, i64* %17, align 8
  %209 = load i64, i64* %11, align 8
  %210 = sub i64 %209, %208
  store i64 %210, i64* %11, align 8
  br label %211

211:                                              ; preds = %207, %145, %133
  br label %212

212:                                              ; preds = %211
  %213 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %9, align 8
  %214 = call %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry* %213)
  store %struct.ext2_xattr_entry* %214, %struct.ext2_xattr_entry** %9, align 8
  br label %128

215:                                              ; preds = %128
  %216 = load i64, i64* %6, align 8
  %217 = load i64, i64* %11, align 8
  %218 = sub i64 %216, %217
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %215, %181, %81, %56, %36
  %221 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %222 = call i32 @brelse(%struct.buffer_head* %221)
  %223 = load %struct.inode*, %struct.inode** %7, align 8
  %224 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %223)
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 0
  %226 = call i32 @up_read(i32* %225)
  %227 = load i32, i32* %12, align 4
  ret i32 %227
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode*) #1

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, ...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_8__* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_7__* @HDR(%struct.buffer_head*) #1

declare dso_local i32 @ext2_xattr_header_valid(%struct.TYPE_7__*) #1

declare dso_local i32 @ext2_error(%struct.TYPE_6__*, i8*, i8*, i32, i32) #1

declare dso_local %struct.ext2_xattr_entry* @FIRST_ENTRY(%struct.buffer_head*) #1

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry*) #1

declare dso_local i32 @ext2_xattr_entry_valid(%struct.ext2_xattr_entry*, i8*, i32) #1

declare dso_local %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry*) #1

declare dso_local i64 @ext2_xattr_cache_insert(%struct.mb_cache*, %struct.buffer_head*) #1

declare dso_local %struct.xattr_handler* @ext2_xattr_handler(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
