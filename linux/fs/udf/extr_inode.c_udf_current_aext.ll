; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_current_aext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_current_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_position = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.short_ad = type { i32, i32 }
%struct.long_ad = type { i32, i32 }
%struct.udf_inode_info = type { i32, i32, %struct.TYPE_6__, i32*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i8* }
%struct.allocExtDesc = type { i32 }

@UDF_EXTENT_LENGTH_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"alloc_type = %u unsupported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_current_aext(%struct.inode* %0, %struct.extent_position* %1, %struct.kernel_lb_addr* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.extent_position*, align 8
  %9 = alloca %struct.kernel_lb_addr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.short_ad*, align 8
  %16 = alloca %struct.long_ad*, align 8
  %17 = alloca %struct.udf_inode_info*, align 8
  %18 = alloca %struct.kernel_lb_addr, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.extent_position* %1, %struct.extent_position** %8, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.inode*, %struct.inode** %7, align 8
  %20 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %19)
  store %struct.udf_inode_info* %20, %struct.udf_inode_info** %17, align 8
  %21 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %22 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %63, label %25

25:                                               ; preds = %5
  %26 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %27 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.inode*, %struct.inode** %7, align 8
  %32 = call i8* @udf_file_entry_alloc_offset(%struct.inode* %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %35 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %38 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %42 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %40, i64 %44
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = call i8* @udf_file_entry_alloc_offset(%struct.inode* %46)
  %48 = ptrtoint i8* %45 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %52 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 %50
  store i32* %54, i32** %14, align 8
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call i8* @udf_file_entry_alloc_offset(%struct.inode* %55)
  %57 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %58 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %56, i64 %60
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %12, align 4
  br label %94

63:                                               ; preds = %5
  %64 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %65 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %70 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %69, i32 0, i32 0
  store i32 4, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %73 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %72, i32 0, i32 1
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %78 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  store i32* %81, i32** %14, align 8
  %82 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %83 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = bitcast i32* %86 to %struct.allocExtDesc*
  %88 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le32_to_cpu(i32 %89)
  %91 = sext i32 %90 to i64
  %92 = add i64 4, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %71, %36
  %95 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %96 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %164 [
    i32 128, label %98
    i32 129, label %133
  ]

98:                                               ; preds = %94
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %102 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %101, i32 0, i32 0
  %103 = load i32, i32* %11, align 4
  %104 = call %struct.short_ad* @udf_get_fileshortad(i32* %99, i32 %100, i32* %102, i32 %103)
  store %struct.short_ad* %104, %struct.short_ad** %15, align 8
  %105 = load %struct.short_ad*, %struct.short_ad** %15, align 8
  %106 = icmp ne %struct.short_ad* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %98
  store i32 -1, i32* %6, align 4
  br label %171

108:                                              ; preds = %98
  %109 = load %struct.short_ad*, %struct.short_ad** %15, align 8
  %110 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  %113 = ashr i32 %112, 30
  store i32 %113, i32* %13, align 4
  %114 = load %struct.short_ad*, %struct.short_ad** %15, align 8
  %115 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @le32_to_cpu(i32 %116)
  %118 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %119 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %121 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %125 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.short_ad*, %struct.short_ad** %15, align 8
  %127 = getelementptr inbounds %struct.short_ad, %struct.short_ad* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @le32_to_cpu(i32 %128)
  %130 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32*, i32** %10, align 8
  store i32 %131, i32* %132, align 4
  br label %169

133:                                              ; preds = %94
  %134 = load i32*, i32** %14, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.extent_position*, %struct.extent_position** %8, align 8
  %137 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %136, i32 0, i32 0
  %138 = load i32, i32* %11, align 4
  %139 = call %struct.long_ad* @udf_get_filelongad(i32* %134, i32 %135, i32* %137, i32 %138)
  store %struct.long_ad* %139, %struct.long_ad** %16, align 8
  %140 = load %struct.long_ad*, %struct.long_ad** %16, align 8
  %141 = icmp ne %struct.long_ad* %140, null
  br i1 %141, label %143, label %142

142:                                              ; preds = %133
  store i32 -1, i32* %6, align 4
  br label %171

143:                                              ; preds = %133
  %144 = load %struct.long_ad*, %struct.long_ad** %16, align 8
  %145 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = ashr i32 %147, 30
  store i32 %148, i32* %13, align 4
  %149 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %9, align 8
  %150 = load %struct.long_ad*, %struct.long_ad** %16, align 8
  %151 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @lelb_to_cpu(i32 %152)
  %154 = bitcast %struct.kernel_lb_addr* %18 to i64*
  store i64 %153, i64* %154, align 4
  %155 = bitcast %struct.kernel_lb_addr* %149 to i8*
  %156 = bitcast %struct.kernel_lb_addr* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 8, i1 false)
  %157 = load %struct.long_ad*, %struct.long_ad** %16, align 8
  %158 = getelementptr inbounds %struct.long_ad, %struct.long_ad* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @le32_to_cpu(i32 %159)
  %161 = load i32, i32* @UDF_EXTENT_LENGTH_MASK, align 4
  %162 = and i32 %160, %161
  %163 = load i32*, i32** %10, align 8
  store i32 %162, i32* %163, align 4
  br label %169

164:                                              ; preds = %94
  %165 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %166 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @udf_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %167)
  store i32 -1, i32* %6, align 4
  br label %171

169:                                              ; preds = %143, %108
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %164, %142, %107
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i8* @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.short_ad* @udf_get_fileshortad(i32*, i32, i32*, i32) #1

declare dso_local %struct.long_ad* @udf_get_filelongad(i32*, i32, i32*, i32) #1

declare dso_local i64 @lelb_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
