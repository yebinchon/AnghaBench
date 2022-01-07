; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_scan_bitmap_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_bitmap.c_scan_bitmap_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.reiserfs_transaction_handle = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_bitmap_info = type { i32 }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [34 x i8] c"Bitmap %u is out of range (0..%u)\00", align 1
@scan_bitmap = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"jdm-4055\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"NULL bitmap info pointer for bitmap %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reiserfs_transaction_handle*, i32, i32*, i32, i32, i32, i32)* @scan_bitmap_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_bitmap_block(%struct.reiserfs_transaction_handle* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.reiserfs_transaction_handle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.super_block*, align 8
  %17 = alloca %struct.reiserfs_bitmap_info*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %9, align 8
  %24 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %23, i32 0, i32 1
  %25 = load %struct.super_block*, %struct.super_block** %24, align 8
  store %struct.super_block* %25, %struct.super_block** %16, align 8
  %26 = load %struct.super_block*, %struct.super_block** %16, align 8
  %27 = call %struct.reiserfs_bitmap_info* @SB_AP_BITMAP(%struct.super_block* %26)
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %27, i64 %29
  store %struct.reiserfs_bitmap_info* %30, %struct.reiserfs_bitmap_info** %17, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %21, align 4
  %33 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %9, align 8
  %34 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.super_block*, %struct.super_block** %16, align 8
  %42 = call i32 @reiserfs_bmap_count(%struct.super_block* %41)
  %43 = icmp uge i32 %40, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.super_block*, %struct.super_block** %16, align 8
  %47 = call i32 @reiserfs_bmap_count(%struct.super_block* %46)
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @RFALSE(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.super_block*, %struct.super_block** %16, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scan_bitmap, i32 0, i32 1), align 4
  %52 = call i32 @PROC_INFO_INC(%struct.super_block* %50, i32 %51)
  %53 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %17, align 8
  %54 = icmp ne %struct.reiserfs_bitmap_info* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %7
  %56 = load %struct.super_block*, %struct.super_block** %16, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @reiserfs_error(%struct.super_block* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  store i32 0, i32* %8, align 4
  br label %245

59:                                               ; preds = %7
  %60 = load %struct.super_block*, %struct.super_block** %16, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.buffer_head* @reiserfs_read_bitmap_block(%struct.super_block* %60, i32 %61)
  store %struct.buffer_head* %62, %struct.buffer_head** %18, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %64 = icmp eq %struct.buffer_head* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %245

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66, %107, %244
  br label %68

68:                                               ; preds = %195, %67
  %69 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %17, align 8
  %70 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %76 = call i32 @brelse(%struct.buffer_head* %75)
  store i32 0, i32* %8, align 4
  br label %245

77:                                               ; preds = %68
  %78 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %79 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i64*
  %82 = load i32, i32* %12, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @reiserfs_find_next_zero_le_bit(i64* %81, i32 %82, i32 %84)
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %12, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %77
  %94 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %95 = call i32 @brelse(%struct.buffer_head* %94)
  store i32 0, i32* %8, align 4
  br label %245

96:                                               ; preds = %77
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load %struct.super_block*, %struct.super_block** %16, align 8
  %101 = load i32, i32* %10, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = call i64 @is_block_in_journal(%struct.super_block* %100, i32 %101, i32 %103, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %67

108:                                              ; preds = %99, %96
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  br label %112

112:                                              ; preds = %143, %108
  %113 = load i32, i32* %19, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %115, %116
  %118 = icmp sge i32 %113, %117
  br i1 %118, label %130, label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* %19, align 4
  %125 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %126 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @reiserfs_test_le_bit(i32 %124, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123, %119, %112
  %131 = load i32, i32* %19, align 4
  store i32 %131, i32* %20, align 4
  br label %146

132:                                              ; preds = %123
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load %struct.super_block*, %struct.super_block** %16, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %19, align 4
  %139 = call i64 @is_block_in_journal(%struct.super_block* %136, i32 %137, i32 %138, i32* %20)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  br label %146

142:                                              ; preds = %135, %132
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  br label %112

146:                                              ; preds = %141, %130
  %147 = load i32, i32* %19, align 4
  %148 = load i32*, i32** %11, align 8
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %147, %149
  %151 = load i32, i32* %13, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %153, label %241

153:                                              ; preds = %146
  %154 = load %struct.super_block*, %struct.super_block** %16, align 8
  %155 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %156 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %154, %struct.buffer_head* %155, i32 1)
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %22, align 4
  br label %159

159:                                              ; preds = %202, %153
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %19, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %205

163:                                              ; preds = %159
  %164 = load i32, i32* %22, align 4
  %165 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %166 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i64 @reiserfs_test_and_set_le_bit(i32 %164, i64 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %201

170:                                              ; preds = %163
  %171 = load %struct.super_block*, %struct.super_block** %16, align 8
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @scan_bitmap, i32 0, i32 0), align 4
  %173 = call i32 @PROC_INFO_INC(%struct.super_block* %171, i32 %172)
  %174 = load i32, i32* %22, align 4
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %176, %177
  %179 = icmp sge i32 %174, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = load i32, i32* %22, align 4
  store i32 %181, i32* %19, align 4
  br label %205

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %189, %182
  %184 = load i32, i32* %22, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %22, align 4
  %186 = load i32*, i32** %11, align 8
  %187 = load i32, i32* %186, align 4
  %188 = icmp sge i32 %185, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load i32, i32* %22, align 4
  %191 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %192 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @reiserfs_clear_le_bit(i32 %190, i64 %193)
  br label %183

195:                                              ; preds = %183
  %196 = load %struct.super_block*, %struct.super_block** %16, align 8
  %197 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %198 = call i32 @reiserfs_restore_prepared_buffer(%struct.super_block* %196, %struct.buffer_head* %197)
  %199 = load i32, i32* %21, align 4
  %200 = load i32*, i32** %11, align 8
  store i32 %199, i32* %200, align 4
  br label %68

201:                                              ; preds = %163
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %22, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %22, align 4
  br label %159

205:                                              ; preds = %180, %159
  %206 = load i32, i32* %19, align 4
  %207 = load i32*, i32** %11, align 8
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %206, %208
  %210 = load %struct.reiserfs_bitmap_info*, %struct.reiserfs_bitmap_info** %17, align 8
  %211 = getelementptr inbounds %struct.reiserfs_bitmap_info, %struct.reiserfs_bitmap_info* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %212, %209
  store i32 %213, i32* %211, align 4
  %214 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %9, align 8
  %215 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %216 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %214, %struct.buffer_head* %215)
  %217 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %218 = call i32 @brelse(%struct.buffer_head* %217)
  %219 = load %struct.super_block*, %struct.super_block** %16, align 8
  %220 = load %struct.super_block*, %struct.super_block** %16, align 8
  %221 = call %struct.buffer_head* @SB_BUFFER_WITH_SB(%struct.super_block* %220)
  %222 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %219, %struct.buffer_head* %221, i32 1)
  %223 = load %struct.super_block*, %struct.super_block** %16, align 8
  %224 = load %struct.super_block*, %struct.super_block** %16, align 8
  %225 = call i64 @SB_FREE_BLOCKS(%struct.super_block* %224)
  %226 = load i32, i32* %19, align 4
  %227 = load i32*, i32** %11, align 8
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %226, %228
  %230 = sext i32 %229 to i64
  %231 = sub nsw i64 %225, %230
  %232 = call i32 @PUT_SB_FREE_BLOCKS(%struct.super_block* %223, i64 %231)
  %233 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %9, align 8
  %234 = load %struct.super_block*, %struct.super_block** %16, align 8
  %235 = call %struct.buffer_head* @SB_BUFFER_WITH_SB(%struct.super_block* %234)
  %236 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %233, %struct.buffer_head* %235)
  %237 = load i32, i32* %19, align 4
  %238 = load i32*, i32** %11, align 8
  %239 = load i32, i32* %238, align 4
  %240 = sub nsw i32 %237, %239
  store i32 %240, i32* %8, align 4
  br label %245

241:                                              ; preds = %146
  %242 = load i32, i32* %20, align 4
  %243 = load i32*, i32** %11, align 8
  store i32 %242, i32* %243, align 4
  br label %244

244:                                              ; preds = %241
  br label %67

245:                                              ; preds = %205, %93, %74, %65, %55
  %246 = load i32, i32* %8, align 4
  ret i32 %246
}

declare dso_local %struct.reiserfs_bitmap_info* @SB_AP_BITMAP(%struct.super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, i32) #1

declare dso_local i32 @reiserfs_bmap_count(%struct.super_block*) #1

declare dso_local i32 @PROC_INFO_INC(%struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*, i32) #1

declare dso_local %struct.buffer_head* @reiserfs_read_bitmap_block(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @reiserfs_find_next_zero_le_bit(i64*, i32, i32) #1

declare dso_local i64 @is_block_in_journal(%struct.super_block*, i32, i32, i32*) #1

declare dso_local i64 @reiserfs_test_le_bit(i32, i64) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, %struct.buffer_head*, i32) #1

declare dso_local i64 @reiserfs_test_and_set_le_bit(i32, i64) #1

declare dso_local i32 @reiserfs_clear_le_bit(i32, i64) #1

declare dso_local i32 @reiserfs_restore_prepared_buffer(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, %struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @PUT_SB_FREE_BLOCKS(%struct.super_block*, i64) #1

declare dso_local i64 @SB_FREE_BLOCKS(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
