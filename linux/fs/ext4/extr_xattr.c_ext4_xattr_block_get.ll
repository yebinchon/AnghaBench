; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_block_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, i8*, i32 }
%struct.ext4_xattr_entry = type { i32, i64, i32 }
%struct.mb_cache = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"name=%d.%s, buffer=%p, buffer_size=%ld\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"reading block %llu\00", align 1
@REQ_PRIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"b_count=%d, refcount=%d\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@EXT4_XATTR_SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i8*, i64)* @ext4_xattr_block_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_block_get(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca %struct.ext4_xattr_entry*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.mb_cache*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %12, align 8
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = call %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode* %20)
  store %struct.mb_cache* %21, %struct.mb_cache** %17, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i32 (%struct.inode*, i8*, i64, ...) @ea_idebug(%struct.inode* %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %24, i8* %25, i8* %26, i64 %27)
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* @ENODATA, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %168

37:                                               ; preds = %5
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (%struct.inode*, i8*, i64, ...) @ea_idebug(%struct.inode* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call %struct.TYPE_3__* @EXT4_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @REQ_PRIO, align 4
  %52 = call %struct.buffer_head* @ext4_sb_bread(i32 %46, i64 %50, i32 %51)
  store %struct.buffer_head* %52, %struct.buffer_head** %12, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %54 = call i64 @IS_ERR(%struct.buffer_head* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %37
  %57 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %58 = call i32 @PTR_ERR(%struct.buffer_head* %57)
  store i32 %58, i32* %6, align 4
  br label %168

59:                                               ; preds = %37
  %60 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 2
  %63 = call i32 @atomic_read(i32* %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %65 = call %struct.TYPE_4__* @BHDR(%struct.buffer_head* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @le32_to_cpu(i32 %67)
  %69 = call i32 @ea_bdebug(%struct.buffer_head* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %63, i64 %68)
  %70 = load %struct.inode*, %struct.inode** %7, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %72 = call i32 @ext4_xattr_check_block(%struct.inode* %70, %struct.buffer_head* %71)
  store i32 %72, i32* %16, align 4
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %59
  br label %164

76:                                               ; preds = %59
  %77 = load %struct.mb_cache*, %struct.mb_cache** %17, align 8
  %78 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %79 = call i32 @ext4_xattr_block_cache_insert(%struct.mb_cache* %77, %struct.buffer_head* %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %81 = call %struct.ext4_xattr_entry* @BFIRST(%struct.buffer_head* %80)
  store %struct.ext4_xattr_entry* %81, %struct.ext4_xattr_entry** %13, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr i8, i8* %84, i64 %88
  store i8* %89, i8** %15, align 8
  %90 = load %struct.inode*, %struct.inode** %7, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @xattr_find_entry(%struct.inode* %90, %struct.ext4_xattr_entry** %13, i8* %91, i32 %92, i8* %93, i32 1)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %76
  br label %164

98:                                               ; preds = %76
  %99 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %100 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @le32_to_cpu(i32 %101)
  store i64 %102, i64* %14, align 8
  %103 = load i32, i32* @ERANGE, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %16, align 4
  %105 = load i64, i64* %14, align 8
  %106 = load i64, i64* @EXT4_XATTR_SIZE_MAX, align 8
  %107 = icmp ugt i64 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %164

112:                                              ; preds = %98
  %113 = load i8*, i8** %10, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %161

115:                                              ; preds = %112
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %11, align 8
  %118 = icmp ugt i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %164

120:                                              ; preds = %115
  %121 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %122 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i64, i64* %14, align 8
  %130 = call i32 @ext4_xattr_inode_get(%struct.inode* %126, %struct.ext4_xattr_entry* %127, i8* %128, i64 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %164

134:                                              ; preds = %125
  br label %160

135:                                              ; preds = %120
  %136 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %137 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @le16_to_cpu(i32 %138)
  store i32 %139, i32* %18, align 4
  %140 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %141 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr i8, i8* %142, i64 %144
  store i8* %145, i8** %19, align 8
  %146 = load i8*, i8** %19, align 8
  %147 = load i64, i64* %14, align 8
  %148 = getelementptr i8, i8* %146, i64 %147
  %149 = load i8*, i8** %15, align 8
  %150 = icmp ugt i8* %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %135
  br label %164

155:                                              ; preds = %135
  %156 = load i8*, i8** %10, align 8
  %157 = load i8*, i8** %19, align 8
  %158 = load i64, i64* %14, align 8
  %159 = call i32 @memcpy(i8* %156, i8* %157, i64 %158)
  br label %160

160:                                              ; preds = %155, %134
  br label %161

161:                                              ; preds = %160, %112
  %162 = load i64, i64* %14, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %16, align 4
  br label %164

164:                                              ; preds = %161, %154, %133, %119, %111, %97, %75
  %165 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %166 = call i32 @brelse(%struct.buffer_head* %165)
  %167 = load i32, i32* %16, align 4
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %164, %56, %34
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local %struct.mb_cache* @EA_BLOCK_CACHE(%struct.inode*) #1

declare dso_local i32 @ea_idebug(%struct.inode*, i8*, i64, ...) #1

declare dso_local %struct.TYPE_3__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_sb_bread(i32, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #1

declare dso_local i32 @ea_bdebug(%struct.buffer_head*, i8*, i32, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @BHDR(%struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_check_block(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_block_cache_insert(%struct.mb_cache*, %struct.buffer_head*) #1

declare dso_local %struct.ext4_xattr_entry* @BFIRST(%struct.buffer_head*) #1

declare dso_local i32 @xattr_find_entry(%struct.inode*, %struct.ext4_xattr_entry**, i8*, i32, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_xattr_inode_get(%struct.inode*, %struct.ext4_xattr_entry*, i8*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
