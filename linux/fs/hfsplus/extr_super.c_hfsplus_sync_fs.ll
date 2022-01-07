; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_super.c_hfsplus_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfsplus_sb_info = type { i32, i32, i32, i32, i64, i64, i32, %struct.hfsplus_vh*, i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.hfsplus_vh = type { i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SUPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"hfsplus_sync_fs\0A\00", align 1
@HFSPLUS_SB_WRITEBACKUP = common dso_local global i32 0, align 4
@HFSPLUS_VOLHEAD_SECTOR = common dso_local global i64 0, align 8
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@HFSPLUS_SB_NOBARRIER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @hfsplus_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfsplus_sb_info*, align 8
  %7 = alloca %struct.hfsplus_vh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block* %11)
  store %struct.hfsplus_sb_info* %12, %struct.hfsplus_sb_info** %6, align 8
  %13 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %14 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %13, i32 0, i32 7
  %15 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %14, align 8
  store %struct.hfsplus_vh* %15, %struct.hfsplus_vh** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %178

19:                                               ; preds = %2
  %20 = load i32, i32* @SUPER, align 4
  %21 = call i32 @hfs_dbg(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %23 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %22, i32 0, i32 16
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @filemap_write_and_wait(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %31 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %30, i32 0, i32 15
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @filemap_write_and_wait(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %19
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %19
  %43 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %44 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %43, i32 0, i32 14
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %49 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %48, i32 0, i32 14
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @filemap_write_and_wait(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %47
  br label %61

61:                                               ; preds = %60, %42
  %62 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %63 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %62, i32 0, i32 13
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @filemap_write_and_wait(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %61
  %73 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %74 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %73, i32 0, i32 1
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %77 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %76, i32 0, i32 2
  %78 = call i32 @mutex_lock(i32* %77)
  %79 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %80 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @cpu_to_be32(i32 %81)
  %83 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %7, align 8
  %84 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %86 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @cpu_to_be32(i32 %87)
  %89 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %7, align 8
  %90 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %92 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %91, i32 0, i32 10
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %7, align 8
  %96 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %98 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_be32(i32 %99)
  %101 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %7, align 8
  %102 = getelementptr inbounds %struct.hfsplus_vh, %struct.hfsplus_vh* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load i32, i32* @HFSPLUS_SB_WRITEBACKUP, align 4
  %104 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %105 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %104, i32 0, i32 0
  %106 = call i64 @test_and_clear_bit(i32 %103, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %72
  %109 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %110 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %113 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %112, i32 0, i32 7
  %114 = load %struct.hfsplus_vh*, %struct.hfsplus_vh** %113, align 8
  %115 = call i32 @memcpy(i32 %111, %struct.hfsplus_vh* %114, i32 32)
  store i32 1, i32* %8, align 4
  br label %116

116:                                              ; preds = %108, %72
  %117 = load %struct.super_block*, %struct.super_block** %4, align 8
  %118 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %119 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @HFSPLUS_VOLHEAD_SECTOR, align 8
  %122 = add nsw i64 %120, %121
  %123 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %124 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @REQ_OP_WRITE, align 4
  %127 = load i32, i32* @REQ_SYNC, align 4
  %128 = call i32 @hfsplus_submit_bio(%struct.super_block* %117, i64 %122, i32 %125, i32* null, i32 %126, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %131, %116
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  br label %158

137:                                              ; preds = %133
  %138 = load %struct.super_block*, %struct.super_block** %4, align 8
  %139 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %140 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %143 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = sub nsw i64 %145, 2
  %147 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %148 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @REQ_OP_WRITE, align 4
  %151 = load i32, i32* @REQ_SYNC, align 4
  %152 = call i32 @hfsplus_submit_bio(%struct.super_block* %138, i64 %146, i32 %149, i32* null, i32 %150, i32 %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %137
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %155, %137
  br label %158

158:                                              ; preds = %157, %136
  %159 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %160 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %159, i32 0, i32 2
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %163 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %162, i32 0, i32 1
  %164 = call i32 @mutex_unlock(i32* %163)
  %165 = load i32, i32* @HFSPLUS_SB_NOBARRIER, align 4
  %166 = load %struct.hfsplus_sb_info*, %struct.hfsplus_sb_info** %6, align 8
  %167 = getelementptr inbounds %struct.hfsplus_sb_info, %struct.hfsplus_sb_info* %166, i32 0, i32 0
  %168 = call i32 @test_bit(i32 %165, i32* %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %158
  %171 = load %struct.super_block*, %struct.super_block** %4, align 8
  %172 = getelementptr inbounds %struct.super_block, %struct.super_block* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @GFP_KERNEL, align 4
  %175 = call i32 @blkdev_issue_flush(i32 %173, i32 %174, i32* null)
  br label %176

176:                                              ; preds = %170, %158
  %177 = load i32, i32* %9, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %18
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.hfsplus_sb_info* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_dbg(i32, i8*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32, %struct.hfsplus_vh*, i32) #1

declare dso_local i32 @hfsplus_submit_bio(%struct.super_block*, i64, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
