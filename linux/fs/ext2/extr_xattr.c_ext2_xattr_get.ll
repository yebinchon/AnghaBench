; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_xattr.c_ext2_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.buffer_head = type { i8*, i32, i32 }
%struct.ext2_xattr_entry = type { i32, i32 }
%struct.mb_cache = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"name=%d.%s, buffer=%p, buffer_size=%ld\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"reading block %d\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"b_count=%d, refcount=%d\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ext2_xattr_get\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"inode %ld: bad block %d\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"cache insert failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_xattr_get(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ext2_xattr_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mb_cache*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode* %20)
  store %struct.mb_cache* %21, %struct.mb_cache** %19, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24, i8* %25, i64 %26)
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %204

33:                                               ; preds = %5
  %34 = load i8*, i8** %9, align 8
  %35 = call i64 @strlen(i8* %34)
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp ugt i64 %36, 255
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ERANGE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %204

41:                                               ; preds = %33
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = call i32 @down_read(i32* %44)
  %46 = load i32, i32* @ENODATA, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %17, align 4
  %48 = load %struct.inode*, %struct.inode** %7, align 8
  %49 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %41
  br label %196

54:                                               ; preds = %41
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.buffer_head* @sb_bread(%struct.TYPE_6__* %63, i32 %67)
  store %struct.buffer_head* %68, %struct.buffer_head** %12, align 8
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %17, align 4
  %71 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %72 = icmp ne %struct.buffer_head* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %54
  br label %196

74:                                               ; preds = %54
  %75 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %76 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %77 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %76, i32 0, i32 2
  %78 = call i32 @atomic_read(i32* %77)
  %79 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %80 = call %struct.TYPE_7__* @HDR(%struct.buffer_head* %79)
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @le32_to_cpu(i32 %82)
  %84 = call i32 @ea_bdebug(%struct.buffer_head* %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %78, i64 %83)
  %85 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %89 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  store i8* %92, i8** %16, align 8
  %93 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %94 = call %struct.TYPE_7__* @HDR(%struct.buffer_head* %93)
  %95 = call i32 @ext2_xattr_header_valid(%struct.TYPE_7__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %112, label %97

97:                                               ; preds = %74
  br label %98

98:                                               ; preds = %130, %97
  %99 = load %struct.inode*, %struct.inode** %7, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load %struct.inode*, %struct.inode** %7, align 8
  %103 = getelementptr inbounds %struct.inode, %struct.inode* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @ext2_error(%struct.TYPE_6__* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %108)
  %110 = load i32, i32* @EIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %17, align 4
  br label %196

112:                                              ; preds = %74
  %113 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %114 = call %struct.ext2_xattr_entry* @FIRST_ENTRY(%struct.buffer_head* %113)
  store %struct.ext2_xattr_entry* %114, %struct.ext2_xattr_entry** %13, align 8
  br label %115

115:                                              ; preds = %144, %112
  %116 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %117 = call i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry* %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br i1 %119, label %120, label %147

120:                                              ; preds = %115
  %121 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %122 = load i8*, i8** %16, align 8
  %123 = load %struct.inode*, %struct.inode** %7, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ext2_xattr_entry_valid(%struct.ext2_xattr_entry* %121, i8* %122, i32 %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %120
  br label %98

131:                                              ; preds = %120
  %132 = load i32, i32* %8, align 4
  %133 = load i64, i64* %14, align 8
  %134 = load i8*, i8** %9, align 8
  %135 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %136 = call i32 @ext2_xattr_cmp_entry(i32 %132, i64 %133, i8* %134, %struct.ext2_xattr_entry* %135)
  store i32 %136, i32* %18, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  br label %158

140:                                              ; preds = %131
  %141 = load i32, i32* %18, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %147

144:                                              ; preds = %140
  %145 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %146 = call %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry* %145)
  store %struct.ext2_xattr_entry* %146, %struct.ext2_xattr_entry** %13, align 8
  br label %115

147:                                              ; preds = %143, %115
  %148 = load %struct.mb_cache*, %struct.mb_cache** %19, align 8
  %149 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %150 = call i64 @ext2_xattr_cache_insert(%struct.mb_cache* %148, %struct.buffer_head* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load %struct.inode*, %struct.inode** %7, align 8
  %154 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %147
  %156 = load i32, i32* @ENODATA, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %17, align 4
  br label %196

158:                                              ; preds = %139
  %159 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %160 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @le32_to_cpu(i32 %161)
  store i64 %162, i64* %15, align 8
  %163 = load %struct.mb_cache*, %struct.mb_cache** %19, align 8
  %164 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %165 = call i64 @ext2_xattr_cache_insert(%struct.mb_cache* %163, %struct.buffer_head* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %158
  %168 = load %struct.inode*, %struct.inode** %7, align 8
  %169 = call i32 (%struct.inode*, i8*, ...) @ea_idebug(%struct.inode* %168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %170

170:                                              ; preds = %167, %158
  %171 = load i8*, i8** %10, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %193

173:                                              ; preds = %170
  %174 = load i32, i32* @ERANGE, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %17, align 4
  %176 = load i64, i64* %15, align 8
  %177 = load i64, i64* %11, align 8
  %178 = icmp ugt i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %196

180:                                              ; preds = %173
  %181 = load i8*, i8** %10, align 8
  %182 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %183 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.ext2_xattr_entry*, %struct.ext2_xattr_entry** %13, align 8
  %186 = getelementptr inbounds %struct.ext2_xattr_entry, %struct.ext2_xattr_entry* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @le16_to_cpu(i32 %187)
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %184, i64 %189
  %191 = load i64, i64* %15, align 8
  %192 = call i32 @memcpy(i8* %181, i8* %190, i64 %191)
  br label %193

193:                                              ; preds = %180, %170
  %194 = load i64, i64* %15, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %193, %179, %155, %98, %73, %53
  %197 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %198 = call i32 @brelse(%struct.buffer_head* %197)
  %199 = load %struct.inode*, %struct.inode** %7, align 8
  %200 = call %struct.TYPE_8__* @EXT2_I(%struct.inode* %199)
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = call i32 @up_read(i32* %201)
  %203 = load i32, i32* %17, align 4
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %196, %38, %30
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode*) #1

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_8__* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_7__* @HDR(%struct.buffer_head*) #1

declare dso_local i32 @ext2_xattr_header_valid(%struct.TYPE_7__*) #1

declare dso_local i32 @ext2_error(%struct.TYPE_6__*, i8*, i8*, i32, i32) #1

declare dso_local %struct.ext2_xattr_entry* @FIRST_ENTRY(%struct.buffer_head*) #1

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext2_xattr_entry*) #1

declare dso_local i32 @ext2_xattr_entry_valid(%struct.ext2_xattr_entry*, i8*, i32) #1

declare dso_local i32 @ext2_xattr_cmp_entry(i32, i64, i8*, %struct.ext2_xattr_entry*) #1

declare dso_local %struct.ext2_xattr_entry* @EXT2_XATTR_NEXT(%struct.ext2_xattr_entry*) #1

declare dso_local i64 @ext2_xattr_cache_insert(%struct.mb_cache*, %struct.buffer_head*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
