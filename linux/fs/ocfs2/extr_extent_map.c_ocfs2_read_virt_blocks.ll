; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_read_virt_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_extent_map.c_ocfs2_read_virt_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.super_block = type opaque
%struct.super_block.0 = type opaque
%struct.TYPE_4__ = type { i64, i32 }
%struct.super_block.1 = type opaque

@OCFS2_BH_READAHEAD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Inode #%llu contains a hole at offset %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_read_virt_blocks(%struct.inode* %0, i32 %1, i32 %2, %struct.buffer_head** %3, i32 %4, i32 (%struct.super_block*, %struct.buffer_head*)* %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32 (%struct.super_block*, %struct.buffer_head*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.buffer_head** %3, %struct.buffer_head*** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 (%struct.super_block*, %struct.buffer_head*)* %5, i32 (%struct.super_block*, %struct.buffer_head*)** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32 (%struct.super_block*, %struct.buffer_head*)*, i32 (%struct.super_block*, %struct.buffer_head*)** %12, align 8
  %26 = bitcast i32 (%struct.super_block*, %struct.buffer_head*)* %25 to i32 (%struct.super_block.0*, %struct.buffer_head*)*
  %27 = call i32 @trace_ocfs2_read_virt_blocks(%struct.inode* %19, i64 %21, i32 %22, %struct.buffer_head** %23, i32 %24, i32 (%struct.super_block.0*, %struct.buffer_head*)* %26)
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %31, %36
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = call i32 @i_size_read(%struct.inode* %38)
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %6
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @OCFS2_BH_READAHEAD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @BUG_ON(i32 %47)
  br label %162

49:                                               ; preds = %6
  br label %50

50:                                               ; preds = %157, %49
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %161

54:                                               ; preds = %50
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i32 @down_read(i32* %57)
  %59 = load %struct.inode*, %struct.inode** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %18, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %59, i32 %62, i32* %14, i32* %15, i32* null)
  store i32 %63, i32* %13, align 4
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = call i32 @up_read(i32* %66)
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %54
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @mlog_errno(i32 %71)
  br label %161

73:                                               ; preds = %54
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* @ML_ERROR, align 4
  %80 = load %struct.inode*, %struct.inode** %7, align 8
  %81 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = load %struct.inode*, %struct.inode** %7, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = zext i32 %92 to i64
  %94 = shl i64 %87, %93
  %95 = call i32 @mlog(i32 %79, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %83, i64 %94)
  br label %161

96:                                               ; preds = %73
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %18, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* %17, align 4
  br label %105

105:                                              ; preds = %103, %96
  store i32 0, i32* %16, align 4
  br label %106

106:                                              ; preds = %136, %105
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %17, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %139

110:                                              ; preds = %106
  %111 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %112 = load i32, i32* %18, align 4
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %111, i64 %115
  %117 = load %struct.buffer_head*, %struct.buffer_head** %116, align 8
  %118 = icmp ne %struct.buffer_head* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %110
  br label %136

120:                                              ; preds = %110
  %121 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %121, i64 %125
  %127 = load %struct.buffer_head*, %struct.buffer_head** %126, align 8
  %128 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %16, align 4
  %132 = add nsw i32 %130, %131
  %133 = icmp ne i32 %129, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @BUG_ON(i32 %134)
  br label %136

136:                                              ; preds = %120, %119
  %137 = load i32, i32* %16, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %16, align 4
  br label %106

139:                                              ; preds = %106
  %140 = load %struct.inode*, %struct.inode** %7, align 8
  %141 = call i32 @INODE_CACHE(%struct.inode* %140)
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %17, align 4
  %144 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %144, i64 %146
  %148 = load i32, i32* %11, align 4
  %149 = load i32 (%struct.super_block*, %struct.buffer_head*)*, i32 (%struct.super_block*, %struct.buffer_head*)** %12, align 8
  %150 = bitcast i32 (%struct.super_block*, %struct.buffer_head*)* %149 to i32 (%struct.super_block.1*, %struct.buffer_head*)*
  %151 = call i32 @ocfs2_read_blocks(i32 %141, i32 %142, i32 %143, %struct.buffer_head** %147, i32 %148, i32 (%struct.super_block.1*, %struct.buffer_head*)* %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %139
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %161

157:                                              ; preds = %139
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %18, align 4
  br label %50

161:                                              ; preds = %154, %76, %70, %50
  br label %162

162:                                              ; preds = %161, %41
  %163 = load i32, i32* %13, align 4
  ret i32 %163
}

declare dso_local i32 @trace_ocfs2_read_virt_blocks(%struct.inode*, i64, i32, %struct.buffer_head**, i32, i32 (%struct.super_block.0*, %struct.buffer_head*)*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @mlog(i32, i8*, i64, i64) #1

declare dso_local i32 @ocfs2_read_blocks(i32, i32, i32, %struct.buffer_head**, i32, i32 (%struct.super_block.1*, %struct.buffer_head*)*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
