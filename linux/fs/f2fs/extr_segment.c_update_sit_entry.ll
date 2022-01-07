; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_update_sit_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_update_sit_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64, i32, i32, i32 }
%struct.seg_entry = type { i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Bitmap was wrongly set, blk:%u\00", align 1
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Bitmap was wrongly cleared, blk:%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32)* @update_sit_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_sit_entry(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.seg_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GET_SEGNO(%struct.f2fs_sb_info* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %15, i32 %16)
  store %struct.seg_entry* %17, %struct.seg_entry** %7, align 8
  %18 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %19 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %10, align 8
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @GET_BLKOFF_FROM_SEG0(%struct.f2fs_sb_info* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %28 = load i64, i64* %10, align 8
  %29 = ashr i64 %28, 16
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* %10, align 8
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %34 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %32, %35
  br label %37

37:                                               ; preds = %31, %3
  %38 = phi i1 [ true, %3 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %27, i32 %39)
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %44 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %46 = call i64 @get_mtime(%struct.f2fs_sb_info* %45, i32 0)
  %47 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %48 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %50 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %53 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %51, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %37
  %58 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %59 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %62 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  br label %64

64:                                               ; preds = %57, %37
  %65 = load i32, i32* %6, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %117

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %70 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @f2fs_test_and_set_bit(i32 %68, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (%struct.f2fs_sb_info*, i8*, i32, ...) @f2fs_err(%struct.f2fs_sb_info* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %81 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %80, i32 1)
  %82 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %83 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 8
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %76, %67
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %89 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @f2fs_test_and_set_bit(i32 %87, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %95 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %93, %86
  %99 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %100 = load i32, i32* @SBI_CP_DISABLED, align 4
  %101 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %116, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %106 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @f2fs_test_and_set_bit(i32 %104, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %103
  %111 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %112 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %110, %103
  br label %116

116:                                              ; preds = %115, %98
  br label %178

117:                                              ; preds = %64
  %118 = load i32, i32* %9, align 4
  %119 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %120 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @f2fs_test_and_clear_bit(i32 %118, i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i64 @unlikely(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %117
  %130 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i32 (%struct.f2fs_sb_info*, i8*, i32, ...) @f2fs_err(%struct.f2fs_sb_info* %130, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %131)
  %133 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %134 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %133, i32 1)
  %135 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %136 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  store i32 0, i32* %6, align 4
  br label %165

139:                                              ; preds = %117
  %140 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %141 = load i32, i32* @SBI_CP_DISABLED, align 4
  %142 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %140, i32 %141)
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %139
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %148 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @f2fs_test_bit(i32 %146, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %145
  %153 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %154 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %153, i32 0, i32 2
  %155 = call i32 @spin_lock(i32* %154)
  %156 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %157 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %161 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %160, i32 0, i32 2
  %162 = call i32 @spin_unlock(i32* %161)
  br label %163

163:                                              ; preds = %152, %145
  br label %164

164:                                              ; preds = %163, %139
  br label %165

165:                                              ; preds = %164, %129
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %168 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @f2fs_test_and_clear_bit(i32 %166, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %165
  %173 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %174 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  br label %177

177:                                              ; preds = %172, %165
  br label %178

178:                                              ; preds = %177, %116
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %181 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = call i64 @f2fs_test_bit(i32 %179, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %178
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = load %struct.seg_entry*, %struct.seg_entry** %7, align 8
  %189 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, %187
  store i64 %191, i64* %189, align 8
  br label %192

192:                                              ; preds = %185, %178
  %193 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @__mark_sit_entry_dirty(%struct.f2fs_sb_info* %193, i32 %194)
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %198 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %197)
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = add nsw i32 %200, %196
  store i32 %201, i32* %199, align 8
  %202 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %203 = call i64 @__is_large_section(%struct.f2fs_sb_info* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %192
  %206 = load i32, i32* %6, align 4
  %207 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call %struct.TYPE_3__* @get_sec_entry(%struct.f2fs_sb_info* %207, i32 %208)
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %206
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %205, %192
  ret void
}

declare dso_local i32 @GET_SEGNO(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @GET_BLKOFF_FROM_SEG0(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @get_mtime(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_test_and_set_bit(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_err(%struct.f2fs_sb_info*, i8*, i32, ...) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_test_and_clear_bit(i32, i32) #1

declare dso_local i64 @f2fs_test_bit(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__mark_sit_entry_dirty(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @__is_large_section(%struct.f2fs_sb_info*) #1

declare dso_local %struct.TYPE_3__* @get_sec_entry(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
