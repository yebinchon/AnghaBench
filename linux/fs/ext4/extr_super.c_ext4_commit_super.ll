; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_commit_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_commit_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ext4_super_block = type { i32, i8* }
%struct.buffer_head = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, %struct.buffer_head*, %struct.ext4_super_block* }

@SB_RDONLY = common dso_local global i32 0, align 4
@s_wtime = common dso_local global i32 0, align 4
@sectors = common dso_local global i32* null, align 8
@STAT_WRITE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"marking dirty\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"previous I/O error to superblock detected\00", align 1
@REQ_SYNC = common dso_local global i32 0, align 4
@BARRIER = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"I/O error while writing superblock\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ext4_commit_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_commit_super(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext4_super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 5
  %12 = load %struct.ext4_super_block*, %struct.ext4_super_block** %11, align 8
  store %struct.ext4_super_block* %12, %struct.ext4_super_block** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 4
  %16 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* %16, %struct.buffer_head** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %18 = icmp ne %struct.buffer_head* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = call i64 @block_device_ejected(%struct.super_block* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %2
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %174

25:                                               ; preds = %19
  %26 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %27 = call i32 @buffer_mapped(%struct.buffer_head* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %174

31:                                               ; preds = %25
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SB_RDONLY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %40 = load i32, i32* @s_wtime, align 4
  %41 = call i32 @ext4_update_tstamp(%struct.ext4_super_block* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.super_block*, %struct.super_block** %4, align 8
  %44 = getelementptr inbounds %struct.super_block, %struct.super_block* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %42
  %50 = load %struct.super_block*, %struct.super_block** %4, align 8
  %51 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.super_block*, %struct.super_block** %4, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32*, i32** @sectors, align 8
  %60 = load i64, i64* @STAT_WRITE, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @part_stat_read(i64 %58, i32 %62)
  %64 = load %struct.super_block*, %struct.super_block** %4, align 8
  %65 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %64)
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %63, %67
  %69 = ashr i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %53, %70
  %72 = call i8* @cpu_to_le64(i64 %71)
  %73 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %74 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %83

75:                                               ; preds = %42
  %76 = load %struct.super_block*, %struct.super_block** %4, align 8
  %77 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %76)
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @cpu_to_le64(i64 %79)
  %81 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %82 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %83

83:                                               ; preds = %75, %49
  %84 = load %struct.super_block*, %struct.super_block** %4, align 8
  %85 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %84)
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = call i64 @percpu_counter_initialized(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %91 = load %struct.super_block*, %struct.super_block** %4, align 8
  %92 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %91)
  %93 = load %struct.super_block*, %struct.super_block** %4, align 8
  %94 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %93)
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = call i32 @percpu_counter_sum_positive(i32* %95)
  %97 = call i32 @EXT4_C2B(%struct.TYPE_5__* %92, i32 %96)
  %98 = call i32 @ext4_free_blocks_count_set(%struct.ext4_super_block* %90, i32 %97)
  br label %99

99:                                               ; preds = %89, %83
  %100 = load %struct.super_block*, %struct.super_block** %4, align 8
  %101 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %100)
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = call i64 @percpu_counter_initialized(i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %99
  %106 = load %struct.super_block*, %struct.super_block** %4, align 8
  %107 = call %struct.TYPE_5__* @EXT4_SB(%struct.super_block* %106)
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = call i32 @percpu_counter_sum_positive(i32* %108)
  %110 = call i32 @cpu_to_le32(i32 %109)
  %111 = load %struct.ext4_super_block*, %struct.ext4_super_block** %6, align 8
  %112 = getelementptr inbounds %struct.ext4_super_block, %struct.ext4_super_block* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %105, %99
  %114 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %115 = call i32 @BUFFER_TRACE(%struct.buffer_head* %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %116 = load %struct.super_block*, %struct.super_block** %4, align 8
  %117 = call i32 @ext4_superblock_csum_set(%struct.super_block* %116)
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %122 = call i32 @lock_buffer(%struct.buffer_head* %121)
  br label %123

123:                                              ; preds = %120, %113
  %124 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %125 = call i64 @buffer_write_io_error(%struct.buffer_head* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %123
  %128 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %129 = call i32 @buffer_uptodate(%struct.buffer_head* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %127, %123
  %132 = load %struct.super_block*, %struct.super_block** %4, align 8
  %133 = load i32, i32* @KERN_ERR, align 4
  %134 = call i32 @ext4_msg(%struct.super_block* %132, i32 %133, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %135 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %136 = call i32 @clear_buffer_write_io_error(%struct.buffer_head* %135)
  %137 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %138 = call i32 @set_buffer_uptodate(%struct.buffer_head* %137)
  br label %139

139:                                              ; preds = %131, %127
  %140 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %141 = call i32 @mark_buffer_dirty(%struct.buffer_head* %140)
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %172

144:                                              ; preds = %139
  %145 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %146 = call i32 @unlock_buffer(%struct.buffer_head* %145)
  %147 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %148 = load i32, i32* @REQ_SYNC, align 4
  %149 = load %struct.super_block*, %struct.super_block** %4, align 8
  %150 = load i32, i32* @BARRIER, align 4
  %151 = call i64 @test_opt(%struct.super_block* %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %144
  %154 = load i32, i32* @REQ_FUA, align 4
  br label %156

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i32 [ %154, %153 ], [ 0, %155 ]
  %158 = or i32 %148, %157
  %159 = call i32 @__sync_dirty_buffer(%struct.buffer_head* %147, i32 %158)
  store i32 %159, i32* %8, align 4
  %160 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %161 = call i64 @buffer_write_io_error(%struct.buffer_head* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %156
  %164 = load %struct.super_block*, %struct.super_block** %4, align 8
  %165 = load i32, i32* @KERN_ERR, align 4
  %166 = call i32 @ext4_msg(%struct.super_block* %164, i32 %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %167 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %168 = call i32 @clear_buffer_write_io_error(%struct.buffer_head* %167)
  %169 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %170 = call i32 @set_buffer_uptodate(%struct.buffer_head* %169)
  br label %171

171:                                              ; preds = %163, %156
  br label %172

172:                                              ; preds = %171, %139
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %172, %29, %23
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.TYPE_5__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @block_device_ejected(%struct.super_block*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @ext4_update_tstamp(%struct.ext4_super_block*, i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @part_stat_read(i64, i32) #1

declare dso_local i64 @percpu_counter_initialized(i32*) #1

declare dso_local i32 @ext4_free_blocks_count_set(%struct.ext4_super_block*, i32) #1

declare dso_local i32 @EXT4_C2B(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @percpu_counter_sum_positive(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_superblock_csum_set(%struct.super_block*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @clear_buffer_write_io_error(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @__sync_dirty_buffer(%struct.buffer_head*, i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
