; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_write_aext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_write_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_position = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.kernel_lb_addr = type { i32 }
%struct.short_ad = type { i8*, i8* }
%struct.long_ad = type { i32, i32, i8* }
%struct.udf_inode_info = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.allocExtDesc = type { i32 }
%struct.TYPE_6__ = type { i32 }

@UDF_FLAG_STRICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_write_aext(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_lb_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.extent_position*, align 8
  %8 = alloca %struct.kernel_lb_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.short_ad*, align 8
  %14 = alloca %struct.long_ad*, align 8
  %15 = alloca %struct.udf_inode_info*, align 8
  %16 = alloca %struct.allocExtDesc*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.extent_position* %1, %struct.extent_position** %7, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %17)
  store %struct.udf_inode_info* %18, %struct.udf_inode_info** %15, align 8
  %19 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %20 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %5
  %24 = load %struct.udf_inode_info*, %struct.udf_inode_info** %15, align 8
  %25 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %29 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %27, %30
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %32)
  %34 = sub nsw i32 %31, %33
  %35 = load %struct.udf_inode_info*, %struct.udf_inode_info** %15, align 8
  %36 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = sext i32 %34 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %12, align 8
  br label %51

40:                                               ; preds = %5
  %41 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %42 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %47 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  store i32* %50, i32** %12, align 8
  br label %51

51:                                               ; preds = %40, %23
  %52 = load %struct.udf_inode_info*, %struct.udf_inode_info** %15, align 8
  %53 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %85 [
    i32 128, label %55
    i32 129, label %68
  ]

55:                                               ; preds = %51
  %56 = load i32*, i32** %12, align 8
  %57 = bitcast i32* %56 to %struct.short_ad*
  store %struct.short_ad* %57, %struct.short_ad** %13, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.short_ad*, %struct.short_ad** %13, align 8
  %61 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %63 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le32(i32 %64)
  %66 = load %struct.short_ad*, %struct.short_ad** %13, align 8
  %67 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  store i32 16, i32* %11, align 4
  br label %86

68:                                               ; preds = %51
  %69 = load i32*, i32** %12, align 8
  %70 = bitcast i32* %69 to %struct.long_ad*
  store %struct.long_ad* %70, %struct.long_ad** %14, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i8* @cpu_to_le32(i32 %71)
  %73 = load %struct.long_ad*, %struct.long_ad** %14, align 8
  %74 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %8, align 8
  %76 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpu_to_lelb(i32 %77)
  %79 = load %struct.long_ad*, %struct.long_ad** %14, align 8
  %80 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.long_ad*, %struct.long_ad** %14, align 8
  %82 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @memset(i32 %83, i32 0, i32 4)
  store i32 16, i32* %11, align 4
  br label %86

85:                                               ; preds = %51
  br label %142

86:                                               ; preds = %68, %55
  %87 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %88 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = icmp ne %struct.TYPE_5__* %89, null
  br i1 %90, label %91, label %130

91:                                               ; preds = %86
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %96 = call i32 @UDF_QUERY_FLAG(i32 %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %91
  %99 = load %struct.inode*, %struct.inode** %6, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call %struct.TYPE_6__* @UDF_SB(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp sge i32 %104, 513
  br i1 %105, label %106, label %124

106:                                              ; preds = %98, %91
  %107 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %108 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32* %111 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %112, %struct.allocExtDesc** %16, align 8
  %113 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %114 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %113, i32 0, i32 1
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.allocExtDesc*, %struct.allocExtDesc** %16, align 8
  %119 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @le32_to_cpu(i32 %120)
  %122 = add i64 %121, 4
  %123 = call i32 @udf_update_tag(i32* %117, i64 %122)
  br label %124

124:                                              ; preds = %106, %98
  %125 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %126 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %125, i32 0, i32 1
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load %struct.inode*, %struct.inode** %6, align 8
  %129 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_5__* %127, %struct.inode* %128)
  br label %133

130:                                              ; preds = %86
  %131 = load %struct.inode*, %struct.inode** %6, align 8
  %132 = call i32 @mark_inode_dirty(%struct.inode* %131)
  br label %133

133:                                              ; preds = %130, %124
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %139 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %85, %136, %133
  ret void
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_lelb(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @UDF_QUERY_FLAG(i32, i32) #1

declare dso_local %struct.TYPE_6__* @UDF_SB(i32) #1

declare dso_local i32 @udf_update_tag(i32*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.TYPE_5__*, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
