; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_add_new_entries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_add_new_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i64 }
%struct.msdos_dir_entry = type { i32 }
%struct.buffer_head = type { i64 }
%struct.msdos_sb_info = type { i32, i64, i64 }

@MAX_BUF_PER_PAGE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, i32*, %struct.msdos_dir_entry**, %struct.buffer_head**, i32*)* @fat_add_new_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_add_new_entries(%struct.inode* %0, i8* %1, i32 %2, i32* %3, %struct.msdos_dir_entry** %4, %struct.buffer_head** %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.msdos_dir_entry**, align 8
  %14 = alloca %struct.buffer_head**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca %struct.msdos_sb_info*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [2 x i32], align 4
  %30 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.msdos_dir_entry** %4, %struct.msdos_dir_entry*** %13, align 8
  store %struct.buffer_head** %5, %struct.buffer_head*** %14, align 8
  store i32* %6, i32** %15, align 8
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.super_block*, %struct.super_block** %32, align 8
  store %struct.super_block* %33, %struct.super_block** %16, align 8
  %34 = load %struct.super_block*, %struct.super_block** %16, align 8
  %35 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %34)
  store %struct.msdos_sb_info* %35, %struct.msdos_sb_info** %17, align 8
  %36 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %18, align 8
  %39 = alloca %struct.buffer_head*, i64 %37, align 16
  store i64 %37, i64* %19, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  store i64 %42, i64* %23, align 8
  %43 = load i64, i64* %23, align 8
  %44 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %17, align 8
  %45 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = add i64 %43, %48
  %50 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %17, align 8
  %51 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = lshr i64 %49, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %12, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %57, 2
  %59 = zext i1 %58 to i32
  %60 = call i32 @BUG_ON(i32 %59)
  %61 = load %struct.inode*, %struct.inode** %9, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @fat_alloc_clusters(%struct.inode* %61, i32* %62, i32 %64)
  store i32 %65, i32* %25, align 4
  %66 = load i32, i32* %25, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %7
  br label %238

69:                                               ; preds = %7
  store i64 0, i64* %24, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  br label %70

70:                                               ; preds = %152, %69
  %71 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %17, align 8
  %72 = load i32, i32* %26, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @fat_clus_to_blknr(%struct.msdos_sb_info* %71, i32 %75)
  store i64 %76, i64* %20, align 8
  store i64 %76, i64* %21, align 8
  %77 = load i64, i64* %21, align 8
  %78 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %17, align 8
  %79 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  store i64 %81, i64* %22, align 8
  br label %82

82:                                               ; preds = %146, %70
  %83 = load i64, i64* %20, align 8
  %84 = load i64, i64* %22, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %151

86:                                               ; preds = %82
  %87 = load %struct.super_block*, %struct.super_block** %16, align 8
  %88 = load i64, i64* %20, align 8
  %89 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %87, i64 %88)
  %90 = load i32, i32* %27, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %91
  store %struct.buffer_head* %89, %struct.buffer_head** %92, align 8
  %93 = load i32, i32* %27, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %94
  %96 = load %struct.buffer_head*, %struct.buffer_head** %95, align 8
  %97 = icmp ne %struct.buffer_head* %96, null
  br i1 %97, label %101, label %98

98:                                               ; preds = %86
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %25, align 4
  br label %219

101:                                              ; preds = %86
  %102 = load i64, i64* %23, align 8
  %103 = load %struct.super_block*, %struct.super_block** %16, align 8
  %104 = getelementptr inbounds %struct.super_block, %struct.super_block* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call i64 @min(i64 %102, i64 %105)
  store i64 %106, i64* %24, align 8
  %107 = load i32, i32* %27, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %108
  %110 = load %struct.buffer_head*, %struct.buffer_head** %109, align 8
  %111 = call i32 @lock_buffer(%struct.buffer_head* %110)
  %112 = load i32, i32* %27, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %113
  %115 = load %struct.buffer_head*, %struct.buffer_head** %114, align 8
  %116 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i8*, i8** %10, align 8
  %119 = load i64, i64* %24, align 8
  %120 = call i32 @memcpy(i64 %117, i8* %118, i64 %119)
  %121 = load i32, i32* %27, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %122
  %124 = load %struct.buffer_head*, %struct.buffer_head** %123, align 8
  %125 = call i32 @set_buffer_uptodate(%struct.buffer_head* %124)
  %126 = load i32, i32* %27, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %127
  %129 = load %struct.buffer_head*, %struct.buffer_head** %128, align 8
  %130 = call i32 @unlock_buffer(%struct.buffer_head* %129)
  %131 = load i32, i32* %27, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %132
  %134 = load %struct.buffer_head*, %struct.buffer_head** %133, align 8
  %135 = load %struct.inode*, %struct.inode** %9, align 8
  %136 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %134, %struct.inode* %135)
  %137 = load i64, i64* %24, align 8
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr i8, i8* %138, i64 %137
  store i8* %139, i8** %10, align 8
  %140 = load i64, i64* %24, align 8
  %141 = load i64, i64* %23, align 8
  %142 = sub i64 %141, %140
  store i64 %142, i64* %23, align 8
  %143 = load i64, i64* %23, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %101
  br label %151

146:                                              ; preds = %101
  %147 = load i32, i32* %27, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %27, align 4
  %149 = load i64, i64* %20, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %20, align 8
  br label %82

151:                                              ; preds = %145, %82
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %26, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %26, align 4
  %155 = load i32*, i32** %12, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %154, %156
  br i1 %157, label %70, label %158

158:                                              ; preds = %152
  %159 = load i32, i32* %27, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %160
  %162 = load %struct.buffer_head*, %struct.buffer_head** %161, align 8
  %163 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %24, align 8
  %166 = add i64 %164, %165
  %167 = load %struct.super_block*, %struct.super_block** %16, align 8
  %168 = getelementptr inbounds %struct.super_block, %struct.super_block* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %24, align 8
  %171 = sub i64 %169, %170
  %172 = call i32 @memset(i64 %166, i32 0, i64 %171)
  %173 = load i64, i64* %24, align 8
  %174 = sub i64 %173, 4
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %28, align 4
  %176 = load i32, i32* %27, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %177
  %179 = load %struct.buffer_head*, %struct.buffer_head** %178, align 8
  %180 = call i32 @get_bh(%struct.buffer_head* %179)
  %181 = load i32, i32* %27, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %182
  %184 = load %struct.buffer_head*, %struct.buffer_head** %183, align 8
  %185 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* %184, %struct.buffer_head** %185, align 8
  %186 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  %187 = load %struct.buffer_head*, %struct.buffer_head** %186, align 8
  %188 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* %28, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %189, %191
  %193 = inttoptr i64 %192 to %struct.msdos_dir_entry*
  %194 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %13, align 8
  store %struct.msdos_dir_entry* %193, %struct.msdos_dir_entry** %194, align 8
  %195 = load %struct.super_block*, %struct.super_block** %16, align 8
  %196 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  %197 = load %struct.buffer_head*, %struct.buffer_head** %196, align 8
  %198 = load %struct.msdos_dir_entry**, %struct.msdos_dir_entry*** %13, align 8
  %199 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %198, align 8
  %200 = call i32 @fat_make_i_pos(%struct.super_block* %195, %struct.buffer_head* %197, %struct.msdos_dir_entry* %199)
  %201 = load i32*, i32** %15, align 8
  store i32 %200, i32* %201, align 4
  %202 = load %struct.inode*, %struct.inode** %9, align 8
  %203 = load i64, i64* %21, align 8
  %204 = load i32, i32* %27, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %27, align 4
  %206 = load i32, i32* @MAX_BUF_PER_PAGE, align 4
  %207 = call i32 @fat_zeroed_cluster(%struct.inode* %202, i64 %203, i32 %205, %struct.buffer_head** %39, i32 %206)
  store i32 %207, i32* %25, align 4
  %208 = load i32, i32* %25, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %158
  br label %214

211:                                              ; preds = %158
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %240

214:                                              ; preds = %210
  %215 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  %216 = load %struct.buffer_head*, %struct.buffer_head** %215, align 8
  %217 = call i32 @brelse(%struct.buffer_head* %216)
  %218 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %218, align 8
  store i32 0, i32* %27, align 4
  br label %219

219:                                              ; preds = %214, %98
  store i32 0, i32* %26, align 4
  br label %220

220:                                              ; preds = %230, %219
  %221 = load i32, i32* %26, align 4
  %222 = load i32, i32* %27, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %233

224:                                              ; preds = %220
  %225 = load i32, i32* %26, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %39, i64 %226
  %228 = load %struct.buffer_head*, %struct.buffer_head** %227, align 8
  %229 = call i32 @bforget(%struct.buffer_head* %228)
  br label %230

230:                                              ; preds = %224
  %231 = load i32, i32* %26, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %26, align 4
  br label %220

233:                                              ; preds = %220
  %234 = load %struct.inode*, %struct.inode** %9, align 8
  %235 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @fat_free_clusters(%struct.inode* %234, i32 %236)
  br label %238

238:                                              ; preds = %233, %68
  %239 = load i32, i32* %25, align 4
  store i32 %239, i32* %8, align 4
  store i32 1, i32* %30, align 4
  br label %240

240:                                              ; preds = %238, %211
  %241 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %241)
  %242 = load i32, i32* %8, align 4
  ret i32 %242
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fat_alloc_clusters(%struct.inode*, i32*, i32) #1

declare dso_local i64 @fat_clus_to_blknr(%struct.msdos_sb_info*, i32) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @fat_make_i_pos(%struct.super_block*, %struct.buffer_head*, %struct.msdos_dir_entry*) #1

declare dso_local i32 @fat_zeroed_cluster(%struct.inode*, i64, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @bforget(%struct.buffer_head*) #1

declare dso_local i32 @fat_free_clusters(%struct.inode*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
