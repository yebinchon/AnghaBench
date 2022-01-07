; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_do_roll_forward.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_do_roll_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i64, i64 }
%struct.super_block = type { i32 }
%struct.nilfs_root = type { i32 }
%struct.nilfs_recovery_info = type { i64, i64, i64, i64, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_segment_summary = type { i32, i32, i32, i32 }

@dsync_blocks = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NILFS_SEG_FAIL_IO = common dso_local global i32 0, align 4
@NILFS_SS_SR = common dso_local global i32 0, align 4
@NILFS_SS_GC = common dso_local global i32 0, align 4
@NILFS_SS_LOGBGN = common dso_local global i32 0, align 4
@NILFS_SS_SYNDT = common dso_local global i32 0, align 4
@NILFS_SS_LOGEND = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"salvaged %lu blocks\00", align 1
@NILFS_RECOVERY_ROLLFORWARD_DONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"error %d roll-forwarding partial segment at blocknr = %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.the_nilfs*, %struct.super_block*, %struct.nilfs_root*, %struct.nilfs_recovery_info*)* @nilfs_do_roll_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_do_roll_forward(%struct.the_nilfs* %0, %struct.super_block* %1, %struct.nilfs_root* %2, %struct.nilfs_recovery_info* %3) #0 {
  %5 = alloca %struct.the_nilfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.nilfs_root*, align 8
  %8 = alloca %struct.nilfs_recovery_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.nilfs_segment_summary*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.the_nilfs* %0, %struct.the_nilfs** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store %struct.nilfs_root* %2, %struct.nilfs_root** %7, align 8
  store %struct.nilfs_recovery_info* %3, %struct.nilfs_recovery_info** %8, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store %struct.nilfs_segment_summary* null, %struct.nilfs_segment_summary** %10, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %23 = load i32, i32* @dsync_blocks, align 4
  %24 = call i32 @LIST_HEAD(i32 %23)
  store i32 0, i32* %22, align 4
  %25 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %8, align 8
  %26 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %8, align 8
  %29 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %16, align 4
  %31 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i64 @nilfs_get_segnum_of_block(%struct.the_nilfs* %31, i64 %32)
  store i64 %33, i64* %17, align 8
  %34 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %35 = load i64, i64* %17, align 8
  %36 = call i32 @nilfs_get_segment_range(%struct.the_nilfs* %34, i64 %35, i64* %12, i64* %13)
  br label %37

37:                                               ; preds = %189, %174, %4
  %38 = load i64, i64* %17, align 8
  %39 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %8, align 8
  %40 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %8, align 8
  %46 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp sle i64 %44, %47
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ true, %37 ], [ %48, %43 ]
  br i1 %50, label %51, label %197

51:                                               ; preds = %49
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  %54 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call %struct.buffer_head* @nilfs_read_log_header(%struct.the_nilfs* %54, i64 %55, %struct.nilfs_segment_summary** %10)
  store %struct.buffer_head* %56, %struct.buffer_head** %9, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %58 = icmp ne %struct.buffer_head* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %20, align 4
  br label %218

62:                                               ; preds = %51
  %63 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %66 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %10, align 8
  %67 = call i32 @nilfs_validate_log(%struct.the_nilfs* %63, i32 %64, %struct.buffer_head* %65, %struct.nilfs_segment_summary* %66)
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load i32, i32* %21, align 4
  %72 = load i32, i32* @NILFS_SEG_FAIL_IO, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %20, align 4
  br label %218

77:                                               ; preds = %70
  br label %176

78:                                               ; preds = %62
  %79 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %10, align 8
  %80 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @NILFS_SS_SR, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %215

88:                                               ; preds = %78
  %89 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %90 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %10, align 8
  %91 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @le64_to_cpu(i32 %92)
  %94 = call i64 @nilfs_get_segnum_of_block(%struct.the_nilfs* %89, i64 %93)
  store i64 %94, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %95 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %10, align 8
  %96 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @le64_to_cpu(i32 %97)
  %99 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %100 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @NILFS_SS_GC, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %88
  %106 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %107 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %110 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  br label %111

111:                                              ; preds = %105, %88
  %112 = load i32, i32* %22, align 4
  switch i32 %112, label %156 [
    i32 0, label %113
    i32 1, label %125
  ]

113:                                              ; preds = %111
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @NILFS_SS_LOGBGN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @NILFS_SS_SYNDT, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118, %113
  br label %157

124:                                              ; preds = %118
  store i32 1, i32* %22, align 4
  br label %125

125:                                              ; preds = %111, %124
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @NILFS_SS_SYNDT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  br label %215

131:                                              ; preds = %125
  %132 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %10, align 8
  %135 = call i32 @nilfs_scan_dsync_log(%struct.the_nilfs* %132, i64 %133, %struct.nilfs_segment_summary* %134, i32* @dsync_blocks)
  store i32 %135, i32* %20, align 4
  %136 = load i32, i32* %20, align 4
  %137 = call i32 @unlikely(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %218

140:                                              ; preds = %131
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @NILFS_SS_LOGEND, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %140
  %146 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %147 = load %struct.super_block*, %struct.super_block** %6, align 8
  %148 = load %struct.nilfs_root*, %struct.nilfs_root** %7, align 8
  %149 = call i32 @nilfs_recover_dsync_blocks(%struct.the_nilfs* %146, %struct.super_block* %147, %struct.nilfs_root* %148, i32* @dsync_blocks, i64* %14)
  store i32 %149, i32* %20, align 4
  %150 = load i32, i32* %20, align 4
  %151 = call i32 @unlikely(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %218

154:                                              ; preds = %145
  store i32 0, i32* %22, align 4
  br label %155

155:                                              ; preds = %154, %140
  br label %156

156:                                              ; preds = %111, %155
  br label %157

157:                                              ; preds = %156, %123
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %8, align 8
  %160 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %197

164:                                              ; preds = %157
  %165 = load %struct.nilfs_segment_summary*, %struct.nilfs_segment_summary** %10, align 8
  %166 = getelementptr inbounds %struct.nilfs_segment_summary, %struct.nilfs_segment_summary* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @le32_to_cpu(i32 %167)
  %169 = load i64, i64* %11, align 8
  %170 = add nsw i64 %169, %168
  store i64 %170, i64* %11, align 8
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* %13, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %37

175:                                              ; preds = %164
  br label %184

176:                                              ; preds = %77
  %177 = load i64, i64* %11, align 8
  %178 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %8, align 8
  %179 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = icmp eq i64 %177, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %197

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183, %175
  %185 = load i32, i32* %19, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %19, align 4
  %187 = icmp ne i32 %185, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  br label %197

189:                                              ; preds = %184
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %16, align 4
  %192 = load i64, i64* %18, align 8
  store i64 %192, i64* %17, align 8
  %193 = load %struct.the_nilfs*, %struct.the_nilfs** %5, align 8
  %194 = load i64, i64* %17, align 8
  %195 = call i32 @nilfs_get_segment_range(%struct.the_nilfs* %193, i64 %194, i64* %12, i64* %13)
  %196 = load i64, i64* %12, align 8
  store i64 %196, i64* %11, align 8
  br label %37

197:                                              ; preds = %188, %182, %163, %49
  %198 = load i64, i64* %14, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %197
  %201 = load %struct.super_block*, %struct.super_block** %6, align 8
  %202 = load i32, i32* @KERN_INFO, align 4
  %203 = load i64, i64* %14, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 (%struct.super_block*, i32, i8*, i32, ...) @nilfs_msg(%struct.super_block* %201, i32 %202, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* @NILFS_RECOVERY_ROLLFORWARD_DONE, align 4
  %207 = load %struct.nilfs_recovery_info*, %struct.nilfs_recovery_info** %8, align 8
  %208 = getelementptr inbounds %struct.nilfs_recovery_info, %struct.nilfs_recovery_info* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %200, %197
  br label %210

210:                                              ; preds = %218, %209
  %211 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %212 = call i32 @brelse(%struct.buffer_head* %211)
  %213 = call i32 @dispose_recovery_list(i32* @dsync_blocks)
  %214 = load i32, i32* %20, align 4
  ret i32 %214

215:                                              ; preds = %130, %87
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %20, align 4
  br label %218

218:                                              ; preds = %215, %153, %139, %74, %59
  %219 = load %struct.super_block*, %struct.super_block** %6, align 8
  %220 = load i32, i32* @KERN_ERR, align 4
  %221 = load i32, i32* %20, align 4
  %222 = load i64, i64* %11, align 8
  %223 = call i32 (%struct.super_block*, i32, i8*, i32, ...) @nilfs_msg(%struct.super_block* %219, i32 %220, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %221, i64 %222)
  br label %210
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @nilfs_get_segnum_of_block(%struct.the_nilfs*, i64) #1

declare dso_local i32 @nilfs_get_segment_range(%struct.the_nilfs*, i64, i64*, i64*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @nilfs_read_log_header(%struct.the_nilfs*, i64, %struct.nilfs_segment_summary**) #1

declare dso_local i32 @nilfs_validate_log(%struct.the_nilfs*, i32, %struct.buffer_head*, %struct.nilfs_segment_summary*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @nilfs_scan_dsync_log(%struct.the_nilfs*, i64, %struct.nilfs_segment_summary*, i32*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @nilfs_recover_dsync_blocks(%struct.the_nilfs*, %struct.super_block*, %struct.nilfs_root*, i32*, i64*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i32, ...) #1

declare dso_local i32 @dispose_recovery_list(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
