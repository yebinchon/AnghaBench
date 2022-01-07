; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_setup_indirect_aext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_setup_indirect_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.extent_position = type { i32, %struct.buffer_head*, %struct.kernel_lb_addr }
%struct.buffer_head = type { i64 }
%struct.kernel_lb_addr = type { i32, i32 }
%struct.allocExtDesc = type { i8*, i8* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@UDF_FLAG_STRICT = common dso_local global i32 0, align 4
@TAG_IDENT_AED = common dso_local global i32 0, align 4
@EXT_NEXT_EXTENT_ALLOCDECS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_setup_indirect_aext(%struct.inode* %0, i32 %1, %struct.extent_position* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.extent_position*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.allocExtDesc*, align 8
  %11 = alloca %struct.extent_position, align 8
  %12 = alloca %struct.kernel_lb_addr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.kernel_lb_addr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.extent_position* %2, %struct.extent_position** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call %struct.TYPE_4__* @UDF_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 4, i32* %14, align 4
  br label %40

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call %struct.TYPE_4__* @UDF_I(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 4, i32* %14, align 4
  br label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %167

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39, %27
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %44 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %12, i32 0, i32 1
  store i32 %46, i32* %47, align 4
  %48 = load %struct.super_block*, %struct.super_block** %8, align 8
  %49 = load %struct.super_block*, %struct.super_block** %8, align 8
  %50 = call i32 @udf_get_lb_pblock(%struct.super_block* %49, %struct.kernel_lb_addr* %12, i32 0)
  %51 = call %struct.buffer_head* @udf_tgetblk(%struct.super_block* %48, i32 %50)
  store %struct.buffer_head* %51, %struct.buffer_head** %9, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %53 = icmp ne %struct.buffer_head* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %40
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %167

57:                                               ; preds = %40
  %58 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %59 = call i32 @lock_buffer(%struct.buffer_head* %58)
  %60 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.super_block*, %struct.super_block** %8, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memset(i64 %62, i32 0, i32 %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = call i32 @set_buffer_uptodate(%struct.buffer_head* %67)
  %69 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %70 = call i32 @unlock_buffer(%struct.buffer_head* %69)
  %71 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %71, %struct.inode* %72)
  %74 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %75 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %77, %struct.allocExtDesc** %10, align 8
  %78 = load %struct.super_block*, %struct.super_block** %8, align 8
  %79 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %80 = call i32 @UDF_QUERY_FLAG(%struct.super_block* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %57
  %83 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %84 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.allocExtDesc*, %struct.allocExtDesc** %10, align 8
  %89 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %82, %57
  %91 = call i8* @cpu_to_le32(i32 0)
  %92 = load %struct.allocExtDesc*, %struct.allocExtDesc** %10, align 8
  %93 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.super_block*, %struct.super_block** %8, align 8
  %95 = call %struct.TYPE_3__* @UDF_SB(%struct.super_block* %94)
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp sge i32 %97, 512
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  store i32 3, i32* %13, align 4
  br label %101

100:                                              ; preds = %90
  store i32 2, i32* %13, align 4
  br label %101

101:                                              ; preds = %100, %99
  %102 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @TAG_IDENT_AED, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @udf_new_tag(i64 %104, i32 %105, i32 %106, i32 1, i32 %107, i32 4)
  %109 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 2
  %110 = bitcast %struct.kernel_lb_addr* %109 to i8*
  %111 = bitcast %struct.kernel_lb_addr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 4 %111, i64 8, i1 false)
  %112 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 0
  store i32 16, i32* %112, align 8
  %113 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %114 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 1
  store %struct.buffer_head* %113, %struct.buffer_head** %114, align 8
  %115 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %116 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %117, %118
  %120 = load %struct.super_block*, %struct.super_block** %8, align 8
  %121 = getelementptr inbounds %struct.super_block, %struct.super_block* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %101
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %127 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %132 = call i32 @udf_current_aext(%struct.inode* %130, %struct.extent_position* %131, %struct.kernel_lb_addr* %15, i32* %16, i32 0)
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = shl i32 %133, 30
  %135 = load i32, i32* %16, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %16, align 4
  %137 = load %struct.inode*, %struct.inode** %5, align 8
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @__udf_add_aext(%struct.inode* %137, %struct.extent_position* %11, %struct.kernel_lb_addr* %15, i32 %138, i32 1)
  %140 = load %struct.inode*, %struct.inode** %5, align 8
  %141 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %142 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 2
  %143 = load %struct.super_block*, %struct.super_block** %8, align 8
  %144 = getelementptr inbounds %struct.super_block, %struct.super_block* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @EXT_NEXT_EXTENT_ALLOCDECS, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @udf_write_aext(%struct.inode* %140, %struct.extent_position* %141, %struct.kernel_lb_addr* %142, i32 %147, i32 0)
  br label %159

149:                                              ; preds = %101
  %150 = load %struct.inode*, %struct.inode** %5, align 8
  %151 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %152 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %11, i32 0, i32 2
  %153 = load %struct.super_block*, %struct.super_block** %8, align 8
  %154 = getelementptr inbounds %struct.super_block, %struct.super_block* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @EXT_NEXT_EXTENT_ALLOCDECS, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @__udf_add_aext(%struct.inode* %150, %struct.extent_position* %151, %struct.kernel_lb_addr* %152, i32 %157, i32 0)
  br label %159

159:                                              ; preds = %149, %124
  %160 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %161 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %160, i32 0, i32 1
  %162 = load %struct.buffer_head*, %struct.buffer_head** %161, align 8
  %163 = call i32 @brelse(%struct.buffer_head* %162)
  %164 = load %struct.extent_position*, %struct.extent_position** %7, align 8
  %165 = bitcast %struct.extent_position* %164 to i8*
  %166 = bitcast %struct.extent_position* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %165, i8* align 8 %166, i64 24, i1 false)
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %159, %54, %36
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.TYPE_4__* @UDF_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @udf_tgetblk(%struct.super_block*, i32) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.super_block*, %struct.kernel_lb_addr*, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @UDF_QUERY_FLAG(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.TYPE_3__* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_new_tag(i64, i32, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_current_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @__udf_add_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
