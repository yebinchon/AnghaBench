; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_buf_lo_scan_elements.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_lops.c_buf_lo_scan_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_jdesc = type { i32, i32, i32 }
%struct.gfs2_log_descriptor = type { i32, i32 }
%struct.gfs2_inode = type { %struct.gfs2_glock* }
%struct.gfs2_glock = type { i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.gfs2_meta_header = type { i64 }
%struct.gfs2_rgrpd = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GFS2_LOG_DESC_METADATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFS2_METATYPE_RG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Replaying 0x%llx but we already have a bh!\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"busy:%d, pinned:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_jdesc*, i32, %struct.gfs2_log_descriptor*, i32*, i32)* @buf_lo_scan_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buf_lo_scan_elements(%struct.gfs2_jdesc* %0, i32 %1, %struct.gfs2_log_descriptor* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_jdesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_log_descriptor*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca %struct.gfs2_glock*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.gfs2_meta_header*, align 8
  %21 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_jdesc* %0, %struct.gfs2_jdesc** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.gfs2_log_descriptor* %2, %struct.gfs2_log_descriptor** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %23 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.gfs2_inode* @GFS2_I(i32 %24)
  store %struct.gfs2_inode* %25, %struct.gfs2_inode** %12, align 8
  %26 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %27 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.gfs2_sbd* @GFS2_SB(i32 %28)
  store %struct.gfs2_sbd* %29, %struct.gfs2_sbd** %13, align 8
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 0
  %32 = load %struct.gfs2_glock*, %struct.gfs2_glock** %31, align 8
  store %struct.gfs2_glock* %32, %struct.gfs2_glock** %14, align 8
  %33 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %34 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %15, align 4
  store i32 0, i32* %19, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %46, label %39

39:                                               ; preds = %5
  %40 = load %struct.gfs2_log_descriptor*, %struct.gfs2_log_descriptor** %9, align 8
  %41 = getelementptr inbounds %struct.gfs2_log_descriptor, %struct.gfs2_log_descriptor* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32_to_cpu(i32 %42)
  %44 = load i32, i32* @GFS2_LOG_DESC_METADATA, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %5
  store i32 0, i32* %6, align 4
  br label %182

47:                                               ; preds = %39
  %48 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %49 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc* %48, i32* %8)
  br label %50

50:                                               ; preds = %175, %47
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %180

53:                                               ; preds = %50
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %10, align 8
  %56 = load i32, i32* %54, align 4
  %57 = call i64 @be64_to_cpu(i32 %56)
  store i64 %57, i64* %18, align 8
  %58 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %59 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %63 = load i64, i64* %18, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @gfs2_revoke_check(%struct.gfs2_jdesc* %62, i64 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %175

68:                                               ; preds = %53
  %69 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @gfs2_replay_read_block(%struct.gfs2_jdesc* %69, i32 %70, %struct.buffer_head** %16)
  store i32 %71, i32* %19, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %19, align 4
  store i32 %75, i32* %6, align 4
  br label %182

76:                                               ; preds = %68
  %77 = load %struct.gfs2_glock*, %struct.gfs2_glock** %14, align 8
  %78 = load i64, i64* %18, align 8
  %79 = call %struct.buffer_head* @gfs2_meta_new(%struct.gfs2_glock* %77, i64 %78)
  store %struct.buffer_head* %79, %struct.buffer_head** %17, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %84 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @memcpy(i64 %82, i64 %85, i32 %88)
  %90 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %91 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %92 = call i64 @gfs2_meta_check(%struct.gfs2_sbd* %90, %struct.buffer_head* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %76
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %19, align 4
  br label %162

97:                                               ; preds = %76
  %98 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %99 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to %struct.gfs2_meta_header*
  store %struct.gfs2_meta_header* %101, %struct.gfs2_meta_header** %20, align 8
  %102 = load %struct.gfs2_meta_header*, %struct.gfs2_meta_header** %20, align 8
  %103 = getelementptr inbounds %struct.gfs2_meta_header, %struct.gfs2_meta_header* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @GFS2_METATYPE_RG, align 4
  %106 = call i64 @cpu_to_be32(i32 %105)
  %107 = icmp eq i64 %104, %106
  br i1 %107, label %108, label %159

108:                                              ; preds = %97
  %109 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %110 = load i64, i64* %18, align 8
  %111 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %109, i64 %110, i32 0)
  store %struct.gfs2_rgrpd* %111, %struct.gfs2_rgrpd** %21, align 8
  %112 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %21, align 8
  %113 = icmp ne %struct.gfs2_rgrpd* %112, null
  br i1 %113, label %114, label %158

114:                                              ; preds = %108
  %115 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %21, align 8
  %116 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %18, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %158

120:                                              ; preds = %114
  %121 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %21, align 8
  %122 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = icmp ne %struct.TYPE_2__* %123, null
  br i1 %124, label %125, label %158

125:                                              ; preds = %120
  %126 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %21, align 8
  %127 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %158

132:                                              ; preds = %125
  %133 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %134 = load i64, i64* %18, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 (%struct.gfs2_sbd*, i8*, i32, ...) @fs_info(%struct.gfs2_sbd* %133, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %135)
  %137 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %138 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %21, align 8
  %139 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %138, i32 0, i32 2
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @buffer_busy(i64 %142)
  %144 = icmp ne i64 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 1, i32 0
  %147 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %21, align 8
  %148 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %147, i32 0, i32 2
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @buffer_pinned(i64 %151)
  %153 = call i32 (%struct.gfs2_sbd*, i8*, i32, ...) @fs_info(%struct.gfs2_sbd* %137, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %152)
  %154 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %21, align 8
  %155 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @gfs2_dump_glock(i32* null, i32 %156, i32 1)
  br label %158

158:                                              ; preds = %132, %125, %120, %114, %108
  br label %159

159:                                              ; preds = %158, %97
  %160 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %161 = call i32 @mark_buffer_dirty(%struct.buffer_head* %160)
  br label %162

162:                                              ; preds = %159, %94
  %163 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %164 = call i32 @brelse(%struct.buffer_head* %163)
  %165 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %166 = call i32 @brelse(%struct.buffer_head* %165)
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %162
  br label %180

170:                                              ; preds = %162
  %171 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %172 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %170, %67
  %176 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %7, align 8
  %177 = call i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc* %176, i32* %8)
  %178 = load i32, i32* %15, align 4
  %179 = add i32 %178, -1
  store i32 %179, i32* %15, align 4
  br label %50

180:                                              ; preds = %169, %50
  %181 = load i32, i32* %19, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %180, %74, %46
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @gfs2_replay_incr_blk(%struct.gfs2_jdesc*, i32*) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @gfs2_revoke_check(%struct.gfs2_jdesc*, i64, i32) #1

declare dso_local i32 @gfs2_replay_read_block(%struct.gfs2_jdesc*, i32, %struct.buffer_head**) #1

declare dso_local %struct.buffer_head* @gfs2_meta_new(%struct.gfs2_glock*, i64) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @gfs2_meta_check(%struct.gfs2_sbd*, %struct.buffer_head*) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @fs_info(%struct.gfs2_sbd*, i8*, i32, ...) #1

declare dso_local i64 @buffer_busy(i64) #1

declare dso_local i32 @buffer_pinned(i64) #1

declare dso_local i32 @gfs2_dump_glock(i32*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
