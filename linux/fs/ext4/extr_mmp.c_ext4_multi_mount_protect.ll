; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mmp.c_ext4_multi_mount_protect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mmp.c_ext4_multi_mount_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_super_block = type { i32, i32 }
%struct.buffer_head = type { i32, i64 }
%struct.mmp_struct = type { i32, i32, i32 }
%struct.mmpd_data = type { %struct.buffer_head*, %struct.super_block* }
%struct.TYPE_2__ = type { i32*, %struct.ext4_super_block* }

@.str = private unnamed_addr constant [32 x i8] c"Invalid MMP block in superblock\00", align 1
@EXT4_MMP_MIN_CHECK_INTERVAL = common dso_local global i32 0, align 4
@EXT4_MMP_SEQ_CLEAN = common dso_local global i64 0, align 8
@EXT4_MMP_SEQ_FSCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"fsck is running on the filesystem\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"MMP interval %u higher than expected, please wait.\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"MMP startup interrupted, failing mount\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Device is already active on another node.\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"MMP startup interrupted, failing mount\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"not enough memory for mmpd_data\00", align 1
@kmmpd = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"kmmpd-%s\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Unable to create kmmpd thread for %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_multi_mount_protect(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext4_super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.mmp_struct*, align 8
  %9 = alloca %struct.mmpd_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.ext4_super_block*, %struct.ext4_super_block** %16, align 8
  store %struct.ext4_super_block* %17, %struct.ext4_super_block** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store %struct.mmp_struct* null, %struct.mmp_struct** %8, align 8
  %18 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %19 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %24 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le32_to_cpu(i32 %25)
  %27 = icmp slt i64 %22, %26
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %31 = call i64 @ext4_blocks_count(%struct.ext4_super_block* %30)
  %32 = icmp sge i64 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %2
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %219

36:                                               ; preds = %28
  %37 = load %struct.super_block*, %struct.super_block** %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @read_mmp_block(%struct.super_block* %37, %struct.buffer_head** %7, i64 %38)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %219

43:                                               ; preds = %36
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.mmp_struct*
  store %struct.mmp_struct* %47, %struct.mmp_struct** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @EXT4_MMP_MIN_CHECK_INTERVAL, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @EXT4_MMP_MIN_CHECK_INTERVAL, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %51, %43
  %54 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %55 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le16_to_cpu(i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %62 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %60, %53
  %66 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %67 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le32_to_cpu(i32 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i64, i64* @EXT4_MMP_SEQ_CLEAN, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %130

74:                                               ; preds = %65
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* @EXT4_MMP_SEQ_FSCK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load %struct.super_block*, %struct.super_block** %4, align 8
  %80 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %81 = call i32 @dump_mmp_msg(%struct.super_block* %79, %struct.mmp_struct* %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %219

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  %84 = mul i32 %83, 2
  %85 = add i32 %84, 1
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 60
  %88 = call i32 @min(i32 %85, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @EXT4_MMP_MIN_CHECK_INTERVAL, align 4
  %91 = mul i32 %90, 4
  %92 = icmp ugt i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %82
  %94 = load %struct.super_block*, %struct.super_block** %4, align 8
  %95 = load i32, i32* %12, align 4
  %96 = mul i32 %95, 2
  %97 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %94, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %93, %82
  %99 = load i32, i32* @HZ, align 4
  %100 = load i32, i32* %12, align 4
  %101 = mul i32 %99, %100
  %102 = call i64 @schedule_timeout_interruptible(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load %struct.super_block*, %struct.super_block** %4, align 8
  %106 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %219

107:                                              ; preds = %98
  %108 = load %struct.super_block*, %struct.super_block** %4, align 8
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @read_mmp_block(%struct.super_block* %108, %struct.buffer_head** %7, i64 %109)
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %219

114:                                              ; preds = %107
  %115 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %116 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to %struct.mmp_struct*
  store %struct.mmp_struct* %118, %struct.mmp_struct** %8, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %121 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @le32_to_cpu(i32 %122)
  %124 = icmp ne i64 %119, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load %struct.super_block*, %struct.super_block** %4, align 8
  %127 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %128 = call i32 @dump_mmp_msg(%struct.super_block* %126, %struct.mmp_struct* %127, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %219

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %73
  %131 = call i64 (...) @mmp_new_seq()
  store i64 %131, i64* %10, align 8
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @cpu_to_le32(i64 %132)
  %134 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %135 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.super_block*, %struct.super_block** %4, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %138 = call i32 @write_mmp_block(%struct.super_block* %136, %struct.buffer_head* %137)
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  br label %219

142:                                              ; preds = %130
  %143 = load i32, i32* @HZ, align 4
  %144 = load i32, i32* %12, align 4
  %145 = mul i32 %143, %144
  %146 = call i64 @schedule_timeout_interruptible(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load %struct.super_block*, %struct.super_block** %4, align 8
  %150 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %149, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %219

151:                                              ; preds = %142
  %152 = load %struct.super_block*, %struct.super_block** %4, align 8
  %153 = load i64, i64* %5, align 8
  %154 = call i32 @read_mmp_block(%struct.super_block* %152, %struct.buffer_head** %7, i64 %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %219

158:                                              ; preds = %151
  %159 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to %struct.mmp_struct*
  store %struct.mmp_struct* %162, %struct.mmp_struct** %8, align 8
  %163 = load i64, i64* %10, align 8
  %164 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %165 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @le32_to_cpu(i32 %166)
  %168 = icmp ne i64 %163, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %158
  %170 = load %struct.super_block*, %struct.super_block** %4, align 8
  %171 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %172 = call i32 @dump_mmp_msg(%struct.super_block* %170, %struct.mmp_struct* %171, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %219

173:                                              ; preds = %158
  %174 = load i32, i32* @GFP_KERNEL, align 4
  %175 = call %struct.mmpd_data* @kmalloc(i32 16, i32 %174)
  store %struct.mmpd_data* %175, %struct.mmpd_data** %9, align 8
  %176 = load %struct.mmpd_data*, %struct.mmpd_data** %9, align 8
  %177 = icmp ne %struct.mmpd_data* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %173
  %179 = load %struct.super_block*, %struct.super_block** %4, align 8
  %180 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %219

181:                                              ; preds = %173
  %182 = load %struct.super_block*, %struct.super_block** %4, align 8
  %183 = load %struct.mmpd_data*, %struct.mmpd_data** %9, align 8
  %184 = getelementptr inbounds %struct.mmpd_data, %struct.mmpd_data* %183, i32 0, i32 1
  store %struct.super_block* %182, %struct.super_block** %184, align 8
  %185 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %186 = load %struct.mmpd_data*, %struct.mmpd_data** %9, align 8
  %187 = getelementptr inbounds %struct.mmpd_data, %struct.mmpd_data* %186, i32 0, i32 0
  store %struct.buffer_head* %185, %struct.buffer_head** %187, align 8
  %188 = load i32, i32* @kmmpd, align 4
  %189 = load %struct.mmpd_data*, %struct.mmpd_data** %9, align 8
  %190 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %191 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.mmp_struct*, %struct.mmp_struct** %8, align 8
  %194 = getelementptr inbounds %struct.mmp_struct, %struct.mmp_struct* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @bdevname(i32 %192, i32 %195)
  %197 = call i32* @kthread_run(i32 %188, %struct.mmpd_data* %189, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %196)
  %198 = load %struct.super_block*, %struct.super_block** %4, align 8
  %199 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %198)
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  store i32* %197, i32** %200, align 8
  %201 = load %struct.super_block*, %struct.super_block** %4, align 8
  %202 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %201)
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = call i64 @IS_ERR(i32* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %181
  %208 = load %struct.super_block*, %struct.super_block** %4, align 8
  %209 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %208)
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  store i32* null, i32** %210, align 8
  %211 = load %struct.mmpd_data*, %struct.mmpd_data** %9, align 8
  %212 = call i32 @kfree(%struct.mmpd_data* %211)
  %213 = load %struct.super_block*, %struct.super_block** %4, align 8
  %214 = load %struct.super_block*, %struct.super_block** %4, align 8
  %215 = getelementptr inbounds %struct.super_block, %struct.super_block* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %213, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %216)
  br label %219

218:                                              ; preds = %181
  store i32 0, i32* %3, align 4
  br label %222

219:                                              ; preds = %207, %178, %169, %157, %148, %141, %125, %113, %104, %78, %42, %33
  %220 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %221 = call i32 @brelse(%struct.buffer_head* %220)
  store i32 1, i32* %3, align 4
  br label %222

222:                                              ; preds = %219, %218
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @ext4_blocks_count(%struct.ext4_super_block*) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @read_mmp_block(%struct.super_block*, %struct.buffer_head**, i64) #1

declare dso_local i32 @dump_mmp_msg(%struct.super_block*, %struct.mmp_struct*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @mmp_new_seq(...) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @write_mmp_block(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local %struct.mmpd_data* @kmalloc(i32, i32) #1

declare dso_local i32* @kthread_run(i32, %struct.mmpd_data*, i8*, i32) #1

declare dso_local i32 @bdevname(i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @kfree(%struct.mmpd_data*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
