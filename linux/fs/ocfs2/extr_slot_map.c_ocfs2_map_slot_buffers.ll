; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_map_slot_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_slot_map.c_ocfs2_map_slot_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ocfs2_slot_info = type { i64, i32, %struct.buffer_head**, %struct.TYPE_6__*, i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_BH_IGNORE_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.ocfs2_slot_info*)* @ocfs2_map_slot_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_map_slot_buffers(%struct.ocfs2_super* %0, %struct.ocfs2_slot_info* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_slot_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_slot_info* %1, %struct.ocfs2_slot_info** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %8, align 8
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %12 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %13 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call i32 @ocfs2_slot_map_physical_size(%struct.ocfs2_super* %11, %struct.TYPE_6__* %14, i64* %8)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %148

19:                                               ; preds = %2
  %20 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @ocfs2_blocks_for_bytes(i32 %24, i64 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @UINT_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %34 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %36 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %19
  br label %148

40:                                               ; preds = %19
  %41 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %42 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %47 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = udiv i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %55 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %67

56:                                               ; preds = %40
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %58 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %62, 4
  %64 = trunc i64 %63 to i32
  %65 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %66 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %56, %45
  %68 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %69 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %72 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = udiv i64 %70, %74
  %76 = load i64, i64* %7, align 8
  %77 = icmp ugt i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @BUG_ON(i32 %78)
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %82 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @trace_ocfs2_map_slot_buffers(i64 %80, i64 %83)
  %85 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %86 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = call %struct.buffer_head** @kcalloc(i64 %87, i32 8, i32 %88)
  %90 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %91 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %90, i32 0, i32 2
  store %struct.buffer_head** %89, %struct.buffer_head*** %91, align 8
  %92 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %93 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %92, i32 0, i32 2
  %94 = load %struct.buffer_head**, %struct.buffer_head*** %93, align 8
  %95 = icmp ne %struct.buffer_head** %94, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %67
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @mlog_errno(i32 %99)
  br label %148

101:                                              ; preds = %67
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %144, %101
  %103 = load i32, i32* %9, align 4
  %104 = zext i32 %103 to i64
  %105 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %106 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %104, %107
  br i1 %108, label %109, label %147

109:                                              ; preds = %102
  %110 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %111 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %110, i32 0, i32 3
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @ocfs2_extent_map_get_blocks(%struct.TYPE_6__* %112, i32 %113, i64* %6, i32* null, i32* null)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @mlog_errno(i32 %118)
  br label %148

120:                                              ; preds = %109
  %121 = load i64, i64* %6, align 8
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @trace_ocfs2_map_slot_buffers_block(i64 %121, i32 %122)
  store %struct.buffer_head* null, %struct.buffer_head** %10, align 8
  %124 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %125 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %124, i32 0, i32 3
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = call i32 @INODE_CACHE(%struct.TYPE_6__* %126)
  %128 = load i64, i64* %6, align 8
  %129 = load i32, i32* @OCFS2_BH_IGNORE_CACHE, align 4
  %130 = call i32 @ocfs2_read_blocks(i32 %127, i64 %128, i32 1, %struct.buffer_head** %10, i32 %129, i32* null)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %120
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @mlog_errno(i32 %134)
  br label %148

136:                                              ; preds = %120
  %137 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %138 = load %struct.ocfs2_slot_info*, %struct.ocfs2_slot_info** %4, align 8
  %139 = getelementptr inbounds %struct.ocfs2_slot_info, %struct.ocfs2_slot_info* %138, i32 0, i32 2
  %140 = load %struct.buffer_head**, %struct.buffer_head*** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %140, i64 %142
  store %struct.buffer_head* %137, %struct.buffer_head** %143, align 8
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %9, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %9, align 4
  br label %102

147:                                              ; preds = %102
  br label %148

148:                                              ; preds = %147, %133, %117, %96, %39, %18
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @ocfs2_slot_map_physical_size(%struct.ocfs2_super*, %struct.TYPE_6__*, i64*) #1

declare dso_local i64 @ocfs2_blocks_for_bytes(i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @trace_ocfs2_map_slot_buffers(i64, i64) #1

declare dso_local %struct.buffer_head** @kcalloc(i64, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.TYPE_6__*, i32, i64*, i32*, i32*) #1

declare dso_local i32 @trace_ocfs2_map_slot_buffers_block(i64, i32) #1

declare dso_local i32 @ocfs2_read_blocks(i32, i64, i32, %struct.buffer_head**, i32, i32*) #1

declare dso_local i32 @INODE_CACHE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
