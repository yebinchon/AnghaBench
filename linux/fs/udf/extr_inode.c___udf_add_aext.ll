; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c___udf_add_aext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c___udf_add_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.extent_position = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i64, i64 }
%struct.allocExtDesc = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@UDF_FLAG_STRICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__udf_add_aext(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_lb_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.extent_position*, align 8
  %9 = alloca %struct.kernel_lb_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.udf_inode_info*, align 8
  %13 = alloca %struct.allocExtDesc*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.extent_position* %1, %struct.extent_position** %8, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %15)
  store %struct.udf_inode_info* %16, %struct.udf_inode_info** %12, align 8
  %17 = load %struct.udf_inode_info*, %struct.udf_inode_info** %12, align 8
  %18 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 4, i32* %14, align 4
  br label %34

23:                                               ; preds = %5
  %24 = load %struct.udf_inode_info*, %struct.udf_inode_info** %12, align 8
  %25 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 4, i32* %14, align 4
  br label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %163

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %36 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = icmp ne %struct.TYPE_5__* %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %34
  %40 = load %struct.udf_inode_info*, %struct.udf_inode_info** %12, align 8
  %41 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %44 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call i64 @udf_file_entry_alloc_offset(%struct.inode* %47)
  %49 = sub nsw i64 %46, %48
  %50 = icmp ne i64 %42, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @WARN_ON(i32 %51)
  br label %86

53:                                               ; preds = %34
  %54 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %55 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %59, %struct.allocExtDesc** %13, align 8
  %60 = load %struct.allocExtDesc*, %struct.allocExtDesc** %13, align 8
  %61 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = sext i32 %63 to i64
  %65 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %66 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, 4
  %70 = icmp ne i64 %64, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @WARN_ON(i32 %71)
  %73 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %74 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %75, %76
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %77, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @WARN_ON(i32 %84)
  br label %86

86:                                               ; preds = %53, %39
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %89 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @udf_write_aext(%struct.inode* %87, %struct.extent_position* %88, %struct.kernel_lb_addr* %89, i32 %90, i32 %91)
  %93 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %94 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %93, i32 0, i32 1
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = icmp ne %struct.TYPE_5__* %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = load %struct.udf_inode_info*, %struct.udf_inode_info** %12, align 8
  %101 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = call i32 @mark_inode_dirty(%struct.inode* %104)
  br label %162

106:                                              ; preds = %86
  %107 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %108 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %107, i32 0, i32 1
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %112, %struct.allocExtDesc** %13, align 8
  %113 = load %struct.allocExtDesc*, %struct.allocExtDesc** %13, align 8
  %114 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %113, i32 0, i32 0
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @le32_add_cpu(i32* %114, i32 %115)
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %121 = call i32 @UDF_QUERY_FLAG(%struct.TYPE_7__* %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %106
  %124 = load %struct.inode*, %struct.inode** %7, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = call %struct.TYPE_6__* @UDF_SB(%struct.TYPE_7__* %126)
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp sge i32 %129, 513
  br i1 %130, label %131, label %149

131:                                              ; preds = %123, %106
  %132 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %133 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %132, i32 0, i32 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %138 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %131
  br label %145

143:                                              ; preds = %131
  %144 = load i32, i32* %14, align 4
  br label %145

145:                                              ; preds = %143, %142
  %146 = phi i32 [ 0, %142 ], [ %144, %143 ]
  %147 = add nsw i32 %139, %146
  %148 = call i32 @udf_update_tag(i64 %136, i32 %147)
  br label %156

149:                                              ; preds = %123
  %150 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %151 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %150, i32 0, i32 1
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @udf_update_tag(i64 %154, i32 4)
  br label %156

156:                                              ; preds = %149, %145
  %157 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %158 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %157, i32 0, i32 1
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = load %struct.inode*, %struct.inode** %7, align 8
  %161 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_5__* %159, %struct.inode* %160)
  br label %162

162:                                              ; preds = %156, %97
  store i32 0, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %30
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @UDF_QUERY_FLAG(%struct.TYPE_7__*, i32) #1

declare dso_local %struct.TYPE_6__* @UDF_SB(%struct.TYPE_7__*) #1

declare dso_local i32 @udf_update_tag(i64, i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.TYPE_5__*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
