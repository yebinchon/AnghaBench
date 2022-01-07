; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mmp.c_kmmpd.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mmp.c_kmmpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.ext4_super_block = type { i32, i32, i32 }
%struct.mmp_struct = type { i64, i8*, i8*, i32, i32 }
%struct.mmpd_data = type { %struct.buffer_head*, %struct.super_block* }
%struct.TYPE_4__ = type { i32*, %struct.ext4_super_block* }
%struct.TYPE_3__ = type { i32 }

@EXT4_MMP_CHECK_MULT = common dso_local global i32 0, align 4
@EXT4_MMP_MIN_CHECK_INTERVAL = common dso_local global i32 0, align 4
@EXT4_MMP_SEQ_MAX = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Error writing to MMP block\00", align 1
@EXT4_FEATURE_INCOMPAT_MMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"kmmpd being stopped since MMP feature has been disabled.\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error reading MMP data: %d\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"Error while updating MMP info. The filesystem seems to have been multiply mounted.\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EXT4_MMP_MAX_CHECK_INTERVAL = common dso_local global i32 0, align 4
@EXT4_MMP_SEQ_CLEAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kmmpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmmpd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.ext4_super_block*, align 8
  %6 = alloca %struct.mmp_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.mmp_struct*, align 8
  store i8* %0, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = bitcast i8* %17 to %struct.mmpd_data*
  %19 = getelementptr inbounds %struct.mmpd_data, %struct.mmpd_data* %18, i32 0, i32 1
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %3, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = bitcast i8* %21 to %struct.mmpd_data*
  %23 = getelementptr inbounds %struct.mmpd_data, %struct.mmpd_data* %22, i32 0, i32 0
  %24 = load %struct.buffer_head*, %struct.buffer_head** %23, align 8
  store %struct.buffer_head* %24, %struct.buffer_head** %4, align 8
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load %struct.ext4_super_block*, %struct.ext4_super_block** %27, align 8
  store %struct.ext4_super_block* %28, %struct.ext4_super_block** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %29 = load %struct.ext4_super_block*, %struct.ext4_super_block** %5, align 8
  %30 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ext4_super_block*, %struct.ext4_super_block** %5, align 8
  %34 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le64_to_cpu(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.mmp_struct*
  store %struct.mmp_struct* %40, %struct.mmp_struct** %6, align 8
  %41 = call i32 (...) @ktime_get_real_seconds()
  %42 = call i8* @cpu_to_le64(i32 %41)
  %43 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %44 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @EXT4_MMP_CHECK_MULT, align 4
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %45, %46
  %48 = load i32, i32* @EXT4_MMP_MIN_CHECK_INTERVAL, align 4
  %49 = call i32 @max(i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i8* @cpu_to_le16(i32 %50)
  %52 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %53 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %58 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bdevname(i32 %56, i32 %59)
  %61 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %62 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call %struct.TYPE_3__* (...) @init_utsname()
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32 %63, i32 %66, i32 4)
  br label %68

68:                                               ; preds = %193, %1
  %69 = call i32 (...) @kthread_should_stop()
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  br i1 %71, label %72, label %210

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* @EXT4_MMP_SEQ_MAX, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i64 1, i64* %8, align 8
  br label %78

78:                                               ; preds = %77, %72
  %79 = load i64, i64* %8, align 8
  %80 = call i8* @cpu_to_le32(i64 %79)
  %81 = ptrtoint i8* %80 to i64
  %82 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %83 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = call i32 (...) @ktime_get_real_seconds()
  %85 = call i8* @cpu_to_le64(i32 %84)
  %86 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %87 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i64, i64* @jiffies, align 8
  store i64 %88, i64* %12, align 8
  %89 = load %struct.super_block*, %struct.super_block** %3, align 8
  %90 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %91 = call i32 @write_mmp_block(%struct.super_block* %89, %struct.buffer_head* %90)
  store i32 %91, i32* %14, align 4
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %78
  %95 = load i64, i64* %9, align 8
  %96 = urem i64 %95, 60
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.super_block*, %struct.super_block** %3, align 8
  %100 = call i32 (%struct.super_block*, i8*, ...) @ext4_error(%struct.super_block* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %94
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %104

104:                                              ; preds = %101, %78
  %105 = load %struct.ext4_super_block*, %struct.ext4_super_block** %5, align 8
  %106 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @le32_to_cpu(i32 %107)
  %109 = load i32, i32* @EXT4_FEATURE_INCOMPAT_MMP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %104
  %113 = load %struct.super_block*, %struct.super_block** %3, align 8
  %114 = call i32 @ext4_warning(%struct.super_block* %113, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %223

115:                                              ; preds = %104
  %116 = load %struct.super_block*, %struct.super_block** %3, align 8
  %117 = call i64 @sb_rdonly(%struct.super_block* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %210

120:                                              ; preds = %115
  %121 = load i64, i64* @jiffies, align 8
  %122 = load i64, i64* %12, align 8
  %123 = sub i64 %121, %122
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %13, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @HZ, align 4
  %127 = mul nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = icmp ult i64 %124, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %120
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @HZ, align 4
  %133 = mul nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = load i64, i64* %13, align 8
  %136 = sub i64 %134, %135
  %137 = trunc i64 %136 to i32
  %138 = call i32 @schedule_timeout_interruptible(i32 %137)
  br label %139

139:                                              ; preds = %130, %120
  %140 = load i64, i64* @jiffies, align 8
  %141 = load i64, i64* %12, align 8
  %142 = sub i64 %140, %141
  store i64 %142, i64* %13, align 8
  %143 = load i64, i64* %13, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @HZ, align 4
  %146 = mul i32 %144, %145
  %147 = zext i32 %146 to i64
  %148 = icmp ugt i64 %143, %147
  br i1 %148, label %149, label %193

149:                                              ; preds = %139
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %150 = load %struct.super_block*, %struct.super_block** %3, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @read_mmp_block(%struct.super_block* %150, %struct.buffer_head** %15, i32 %151)
  store i32 %152, i32* %14, align 4
  %153 = load i32, i32* %14, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load %struct.super_block*, %struct.super_block** %3, align 8
  %157 = load i32, i32* %14, align 4
  %158 = call i32 (%struct.super_block*, i8*, ...) @ext4_error(%struct.super_block* %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %157)
  br label %223

159:                                              ; preds = %149
  %160 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %161 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to %struct.mmp_struct*
  store %struct.mmp_struct* %163, %struct.mmp_struct** %16, align 8
  %164 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %165 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.mmp_struct*, %struct.mmp_struct** %16, align 8
  %168 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %166, %169
  br i1 %170, label %180, label %171

171:                                              ; preds = %159
  %172 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %173 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.mmp_struct*, %struct.mmp_struct** %16, align 8
  %176 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @memcmp(i32 %174, i32 %177, i32 4)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %171, %159
  %181 = load %struct.super_block*, %struct.super_block** %3, align 8
  %182 = load %struct.mmp_struct*, %struct.mmp_struct** %16, align 8
  %183 = call i32 @dump_mmp_msg(%struct.super_block* %181, %struct.mmp_struct* %182, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %184 = load %struct.super_block*, %struct.super_block** %3, align 8
  %185 = call i32 (%struct.super_block*, i8*, ...) @ext4_error(%struct.super_block* %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %186 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %187 = call i32 @put_bh(%struct.buffer_head* %186)
  %188 = load i32, i32* @EBUSY, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %14, align 4
  br label %223

190:                                              ; preds = %171
  %191 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %192 = call i32 @put_bh(%struct.buffer_head* %191)
  br label %193

193:                                              ; preds = %190, %139
  %194 = load i32, i32* @EXT4_MMP_CHECK_MULT, align 4
  %195 = sext i32 %194 to i64
  %196 = load i64, i64* %13, align 8
  %197 = mul i64 %195, %196
  %198 = load i32, i32* @HZ, align 4
  %199 = sext i32 %198 to i64
  %200 = udiv i64 %197, %199
  %201 = trunc i64 %200 to i32
  %202 = load i32, i32* @EXT4_MMP_MAX_CHECK_INTERVAL, align 4
  %203 = call i32 @min(i32 %201, i32 %202)
  %204 = load i32, i32* @EXT4_MMP_MIN_CHECK_INTERVAL, align 4
  %205 = call i32 @max(i32 %203, i32 %204)
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i8* @cpu_to_le16(i32 %206)
  %208 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %209 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %208, i32 0, i32 2
  store i8* %207, i8** %209, align 8
  br label %68

210:                                              ; preds = %119, %68
  %211 = load i64, i64* @EXT4_MMP_SEQ_CLEAN, align 8
  %212 = call i8* @cpu_to_le32(i64 %211)
  %213 = ptrtoint i8* %212 to i64
  %214 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %215 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %214, i32 0, i32 0
  store i64 %213, i64* %215, align 8
  %216 = call i32 (...) @ktime_get_real_seconds()
  %217 = call i8* @cpu_to_le64(i32 %216)
  %218 = load %struct.mmp_struct*, %struct.mmp_struct** %6, align 8
  %219 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %218, i32 0, i32 1
  store i8* %217, i8** %219, align 8
  %220 = load %struct.super_block*, %struct.super_block** %3, align 8
  %221 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %222 = call i32 @write_mmp_block(%struct.super_block* %220, %struct.buffer_head* %221)
  store i32 %222, i32* %14, align 4
  br label %223

223:                                              ; preds = %210, %180, %155, %112
  %224 = load %struct.super_block*, %struct.super_block** %3, align 8
  %225 = call %struct.TYPE_4__* @EXT4_SB(%struct.super_block* %224)
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  store i32* null, i32** %226, align 8
  %227 = load i8*, i8** %2, align 8
  %228 = call i32 @kfree(i8* %227)
  %229 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %230 = call i32 @brelse(%struct.buffer_head* %229)
  %231 = load i32, i32* %14, align 4
  ret i32 %231
}

declare dso_local %struct.TYPE_4__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @bdevname(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @init_utsname(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @write_mmp_block(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*) #1

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @read_mmp_block(%struct.super_block*, %struct.buffer_head**, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @dump_mmp_msg(%struct.super_block*, %struct.mmp_struct*, i8*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
