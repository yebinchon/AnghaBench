; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_delete_aext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_delete_aext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.extent_position = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.allocExtDesc = type { i32 }
%struct.udf_inode_info = type { i64, i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@UDF_FLAG_STRICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_delete_aext(%struct.inode* %0, %struct.extent_position* byval(%struct.extent_position) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.extent_position, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.allocExtDesc*, align 8
  %9 = alloca %struct.udf_inode_info*, align 8
  %10 = alloca %struct.kernel_lb_addr, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @get_bh(%struct.TYPE_5__* %17)
  %19 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @get_bh(%struct.TYPE_5__* %20)
  br label %22

22:                                               ; preds = %15, %2
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %23)
  store %struct.udf_inode_info* %24, %struct.udf_inode_info** %9, align 8
  %25 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %26 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 4, i32* %6, align 4
  br label %40

31:                                               ; preds = %22
  %32 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %33 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 4, i32* %6, align 4
  br label %39

38:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %30
  %41 = bitcast %struct.extent_position* %5 to i8*
  %42 = bitcast %struct.extent_position* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 24, i1 false)
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = call i32 @udf_next_aext(%struct.inode* %43, %struct.extent_position* %1, %struct.kernel_lb_addr* %10, i32* %11, i32 1)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %235

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %82, %47
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = call i32 @udf_next_aext(%struct.inode* %49, %struct.extent_position* %1, %struct.kernel_lb_addr* %10, i32* %11, i32 1)
  store i32 %50, i32* %7, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %83

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load i32, i32* %7, align 4
  %55 = shl i32 %54, 30
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @udf_write_aext(%struct.inode* %53, %struct.extent_position* %5, %struct.kernel_lb_addr* %10, i32 %57, i32 1)
  %59 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = icmp ne %struct.TYPE_5__* %60, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = call i32 @brelse(%struct.TYPE_5__* %69)
  %71 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = call i32 @get_bh(%struct.TYPE_5__* %72)
  %74 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  store %struct.TYPE_5__* %75, %struct.TYPE_5__** %76, align 8
  %77 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %78, %79
  %81 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  br label %82

82:                                               ; preds = %64, %52
  br label %48

83:                                               ; preds = %48
  %84 = call i32 @memset(%struct.kernel_lb_addr* %10, i32 0, i32 4)
  store i32 0, i32* %11, align 4
  %85 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = icmp ne %struct.TYPE_5__* %86, %88
  br i1 %89, label %90, label %164

90:                                               ; preds = %83
  %91 = load %struct.inode*, %struct.inode** %4, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.inode*, %struct.inode** %4, align 8
  %95 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 2
  %96 = call i32 @udf_free_blocks(i32 %93, %struct.inode* %94, i32* %95, i32 0, i32 1)
  %97 = load %struct.inode*, %struct.inode** %4, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @udf_write_aext(%struct.inode* %97, %struct.extent_position* %5, %struct.kernel_lb_addr* %10, i32 %98, i32 1)
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @udf_write_aext(%struct.inode* %100, %struct.extent_position* %5, %struct.kernel_lb_addr* %10, i32 %101, i32 1)
  %103 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = icmp ne %struct.TYPE_5__* %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %90
  %107 = load i32, i32* %6, align 4
  %108 = mul nsw i32 %107, 2
  %109 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %110 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sub nsw i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.inode*, %struct.inode** %4, align 8
  %114 = call i32 @mark_inode_dirty(%struct.inode* %113)
  br label %163

115:                                              ; preds = %90
  %116 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %120, %struct.allocExtDesc** %8, align 8
  %121 = load %struct.allocExtDesc*, %struct.allocExtDesc** %8, align 8
  %122 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %121, i32 0, i32 0
  %123 = load i32, i32* %6, align 4
  %124 = mul nsw i32 2, %123
  %125 = sub nsw i32 0, %124
  %126 = call i32 @le32_add_cpu(i32* %122, i32 %125)
  %127 = load %struct.inode*, %struct.inode** %4, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %131 = call i32 @UDF_QUERY_FLAG(i32 %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %115
  %134 = load %struct.inode*, %struct.inode** %4, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call %struct.TYPE_6__* @UDF_SB(i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 513
  br i1 %140, label %141, label %152

141:                                              ; preds = %133, %115
  %142 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = mul nsw i32 2, %148
  %150 = sub nsw i32 %147, %149
  %151 = call i32 @udf_update_tag(i64 %145, i32 %150)
  br label %158

152:                                              ; preds = %133
  %153 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @udf_update_tag(i64 %156, i32 4)
  br label %158

158:                                              ; preds = %152, %141
  %159 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = load %struct.inode*, %struct.inode** %4, align 8
  %162 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_5__* %160, %struct.inode* %161)
  br label %163

163:                                              ; preds = %158, %106
  br label %226

164:                                              ; preds = %83
  %165 = load %struct.inode*, %struct.inode** %4, align 8
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @udf_write_aext(%struct.inode* %165, %struct.extent_position* %5, %struct.kernel_lb_addr* %10, i32 %166, i32 1)
  %168 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = icmp ne %struct.TYPE_5__* %169, null
  br i1 %170, label %179, label %171

171:                                              ; preds = %164
  %172 = load i32, i32* %6, align 4
  %173 = load %struct.udf_inode_info*, %struct.udf_inode_info** %9, align 8
  %174 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = sub nsw i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load %struct.inode*, %struct.inode** %4, align 8
  %178 = call i32 @mark_inode_dirty(%struct.inode* %177)
  br label %225

179:                                              ; preds = %164
  %180 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.allocExtDesc*
  store %struct.allocExtDesc* %184, %struct.allocExtDesc** %8, align 8
  %185 = load %struct.allocExtDesc*, %struct.allocExtDesc** %8, align 8
  %186 = getelementptr inbounds %struct.allocExtDesc, %struct.allocExtDesc* %185, i32 0, i32 0
  %187 = load i32, i32* %6, align 4
  %188 = sub nsw i32 0, %187
  %189 = call i32 @le32_add_cpu(i32* %186, i32 %188)
  %190 = load %struct.inode*, %struct.inode** %4, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @UDF_FLAG_STRICT, align 4
  %194 = call i32 @UDF_QUERY_FLAG(i32 %192, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %179
  %197 = load %struct.inode*, %struct.inode** %4, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call %struct.TYPE_6__* @UDF_SB(i32 %199)
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp sge i32 %202, 513
  br i1 %203, label %204, label %214

204:                                              ; preds = %196, %179
  %205 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sub nsw i32 %210, %211
  %213 = call i32 @udf_update_tag(i64 %208, i32 %212)
  br label %220

214:                                              ; preds = %196
  %215 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @udf_update_tag(i64 %218, i32 4)
  br label %220

220:                                              ; preds = %214, %204
  %221 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = load %struct.inode*, %struct.inode** %4, align 8
  %224 = call i32 @mark_buffer_dirty_inode(%struct.TYPE_5__* %222, %struct.inode* %223)
  br label %225

225:                                              ; preds = %220, %171
  br label %226

226:                                              ; preds = %225, %163
  %227 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %1, i32 0, i32 1
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %227, align 8
  %229 = call i32 @brelse(%struct.TYPE_5__* %228)
  %230 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %5, i32 0, i32 1
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = call i32 @brelse(%struct.TYPE_5__* %231)
  %233 = load i32, i32* %11, align 4
  %234 = ashr i32 %233, 30
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %226, %46
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @get_bh(%struct.TYPE_5__*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @brelse(%struct.TYPE_5__*) #1

declare dso_local i32 @memset(%struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @udf_free_blocks(i32, %struct.inode*, i32*, i32, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @UDF_QUERY_FLAG(i32, i32) #1

declare dso_local %struct.TYPE_6__* @UDF_SB(i32) #1

declare dso_local i32 @udf_update_tag(i64, i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.TYPE_5__*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
