; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_free_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_free_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_buddy = type { %struct.TYPE_3__*, i32, i32, %struct.super_block* }
%struct.TYPE_3__ = type { i32, i32, i32*, i32 }
%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32* }

@.str = private unnamed_addr constant [60 x i8] c"freeing already freed block (bit %u); block bitmap corrupt.\00", align 1
@EXT4_GROUP_INFO_BBITMAP_CORRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ext4_buddy*, i32, i32)* @mb_free_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb_free_blocks(%struct.inode* %0, %struct.ext4_buddy* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext4_buddy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.ext4_sb_info*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext4_buddy* %1, %struct.ext4_buddy** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %12, align 4
  %20 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %21 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %20, i32 0, i32 3
  %22 = load %struct.super_block*, %struct.super_block** %21, align 8
  store %struct.super_block* %22, %struct.super_block** %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %256

29:                                               ; preds = %4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.super_block*, %struct.super_block** %13, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 3
  %35 = icmp sge i32 %30, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.super_block*, %struct.super_block** %13, align 8
  %39 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %40 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ext4_group_lock_ptr(%struct.super_block* %38, i32 %41)
  %43 = call i32 @assert_spin_locked(i32 %42)
  %44 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %45 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = call i32 @EXT4_MB_GRP_BBITMAP_CORRUPT(%struct.TYPE_3__* %46)
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  br label %256

51:                                               ; preds = %29
  %52 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %53 = call i32 @mb_check_buddy(%struct.ext4_buddy* %52)
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @mb_free_blocks_double(%struct.inode* %54, %struct.ext4_buddy* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %61 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, %59
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %68 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %66, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %51
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %76 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %51
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %86 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @mb_test_bit(i32 %84, i32 %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %82, %79
  %93 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %94 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @mb_test_and_clear_bits(i32 %95, i32 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  %101 = load %struct.super_block*, %struct.super_block** %13, align 8
  %102 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %101)
  %103 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %100, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %92
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  %111 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %112 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @mb_test_bit(i32 %110, i32 %113)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %108, %92
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, -1
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %163

124:                                              ; preds = %118
  %125 = load %struct.super_block*, %struct.super_block** %13, align 8
  %126 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %125)
  store %struct.ext4_sb_info* %126, %struct.ext4_sb_info** %14, align 8
  %127 = load %struct.super_block*, %struct.super_block** %13, align 8
  %128 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %129 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ext4_group_first_block_no(%struct.super_block* %127, i32 %130)
  store i32 %131, i32* %15, align 4
  %132 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %14, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i64 @EXT4_C2B(%struct.ext4_sb_info* %132, i32 %133)
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %15, align 4
  %139 = load %struct.super_block*, %struct.super_block** %13, align 8
  %140 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %141 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.inode*, %struct.inode** %5, align 8
  %144 = icmp ne %struct.inode* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %124
  %146 = load %struct.inode*, %struct.inode** %5, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  br label %150

149:                                              ; preds = %124
  br label %150

150:                                              ; preds = %149, %145
  %151 = phi i32 [ %148, %145 ], [ 0, %149 ]
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @ext4_grp_locked_error(%struct.super_block* %139, i32 %142, i32 %151, i32 %152, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %153)
  %155 = load %struct.super_block*, %struct.super_block** %13, align 8
  %156 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %157 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @EXT4_GROUP_INFO_BBITMAP_CORRUPT, align 4
  %160 = call i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block* %155, i32 %158, i32 %159)
  %161 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %162 = call i32 @mb_regenerate_buddy(%struct.ext4_buddy* %161)
  br label %248

163:                                              ; preds = %118
  %164 = load i32, i32* %9, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %171 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %173, align 8
  br label %190

176:                                              ; preds = %166, %163
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %189, label %182

182:                                              ; preds = %179
  %183 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %184 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %183, i32 0, i32 0
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  br label %189

189:                                              ; preds = %182, %179, %176
  br label %190

190:                                              ; preds = %189, %169
  %191 = load i32, i32* %7, align 4
  %192 = and i32 %191, 1
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %213

194:                                              ; preds = %190
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 -1, i32 1
  %205 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %206 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %205, i32 0, i32 0
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %204
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %194, %190
  %214 = load i32, i32* %12, align 4
  %215 = and i32 %214, 1
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %236, label %217

217:                                              ; preds = %213
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  %220 = xor i1 %219, true
  %221 = zext i1 %220 to i32
  %222 = load i32, i32* %12, align 4
  %223 = sub nsw i32 %222, %221
  store i32 %223, i32* %12, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 -1, i32 1
  %228 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %229 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %228, i32 0, i32 0
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, %227
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %217, %213
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %12, align 4
  %239 = icmp sle i32 %237, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %236
  %241 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %242 = load i32, i32* %7, align 4
  %243 = ashr i32 %242, 1
  %244 = load i32, i32* %12, align 4
  %245 = ashr i32 %244, 1
  %246 = call i32 @mb_buddy_mark_free(%struct.ext4_buddy* %241, i32 %243, i32 %245)
  br label %247

247:                                              ; preds = %240, %236
  br label %248

248:                                              ; preds = %247, %150
  %249 = load %struct.super_block*, %struct.super_block** %13, align 8
  %250 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %251 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %250, i32 0, i32 0
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %251, align 8
  %253 = call i32 @mb_set_largest_free_order(%struct.super_block* %249, %struct.TYPE_3__* %252)
  %254 = load %struct.ext4_buddy*, %struct.ext4_buddy** %6, align 8
  %255 = call i32 @mb_check_buddy(%struct.ext4_buddy* %254)
  br label %256

256:                                              ; preds = %248, %50, %28
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @assert_spin_locked(i32) #1

declare dso_local i32 @ext4_group_lock_ptr(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @EXT4_MB_GRP_BBITMAP_CORRUPT(%struct.TYPE_3__*) #1

declare dso_local i32 @mb_check_buddy(%struct.ext4_buddy*) #1

declare dso_local i32 @mb_free_blocks_double(%struct.inode*, %struct.ext4_buddy*, i32, i32) #1

declare dso_local i32 @mb_test_bit(i32, i32) #1

declare dso_local i32 @mb_test_and_clear_bits(i32, i32, i32) #1

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i64 @EXT4_C2B(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @ext4_grp_locked_error(%struct.super_block*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ext4_mark_group_bitmap_corrupted(%struct.super_block*, i32, i32) #1

declare dso_local i32 @mb_regenerate_buddy(%struct.ext4_buddy*) #1

declare dso_local i32 @mb_buddy_mark_free(%struct.ext4_buddy*, i32, i32) #1

declare dso_local i32 @mb_set_largest_free_order(%struct.super_block*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
