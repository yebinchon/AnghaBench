; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_truncate.c_udf_truncate_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_truncate.c_udf_truncate_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.extent_position = type { i32, i64, %struct.kernel_lb_addr }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_inode_info = type { i64, i32, i32 }

@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@EXT_NEXT_EXTENT_ALLOCDECS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_truncate_extents(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.extent_position, align 8
  %5 = alloca %struct.kernel_lb_addr, align 4
  %6 = alloca %struct.kernel_lb_addr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %18 = bitcast %struct.kernel_lb_addr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %12, align 8
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.super_block*, %struct.super_block** %12, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %24, %27
  store i32 %28, i32* %13, align 4
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %29)
  store %struct.udf_inode_info* %30, %struct.udf_inode_info** %17, align 8
  %31 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %32 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 4, i32* %16, align 4
  br label %47

37:                                               ; preds = %1
  %38 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %39 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 4, i32* %16, align 4
  br label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @BUG()
  br label %46

46:                                               ; preds = %44, %43
  br label %47

47:                                               ; preds = %46, %36
  %48 = load %struct.inode*, %struct.inode** %3, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @inode_bmap(%struct.inode* %48, i32 %49, %struct.extent_position* %4, %struct.kernel_lb_addr* %5, i32* %7, i32* %14)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.super_block*, %struct.super_block** %12, align 8
  %53 = getelementptr inbounds %struct.super_block, %struct.super_block* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %51, %54
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.super_block*, %struct.super_block** %12, align 8
  %60 = getelementptr inbounds %struct.super_block, %struct.super_block* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %58, %62
  %64 = add nsw i32 %55, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %70

67:                                               ; preds = %47
  %68 = load i32, i32* %15, align 4
  %69 = call i32 @WARN_ON(i32 %68)
  store i32 0, i32* %2, align 4
  br label %233

70:                                               ; preds = %47
  %71 = load i32, i32* %16, align 4
  %72 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, %71
  store i32 %74, i32* %72, align 8
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @extent_trunc(%struct.inode* %75, %struct.extent_position* %4, %struct.kernel_lb_addr* %5, i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* %16, align 4
  %81 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, %80
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %10, align 4
  br label %94

89:                                               ; preds = %70
  %90 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %16, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %89, %86
  %95 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %94
  %99 = load %struct.inode*, %struct.inode** %3, align 8
  %100 = call i32 @udf_file_entry_alloc_offset(%struct.inode* %99)
  %101 = load i32, i32* %10, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %10, align 4
  br label %108

103:                                              ; preds = %94
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = sub i64 %105, 4
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %103, %98
  br label %109

109:                                              ; preds = %194, %108
  %110 = load %struct.inode*, %struct.inode** %3, align 8
  %111 = call i32 @udf_current_aext(%struct.inode* %110, %struct.extent_position* %4, %struct.kernel_lb_addr* %5, i32* %7, i32 0)
  store i32 %111, i32* %11, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %195

113:                                              ; preds = %109
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @EXT_NEXT_EXTENT_ALLOCDECS, align 4
  %116 = ashr i32 %115, 30
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %185

118:                                              ; preds = %113
  %119 = load %struct.inode*, %struct.inode** %3, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @udf_write_aext(%struct.inode* %119, %struct.extent_position* %4, %struct.kernel_lb_addr* %6, i32 %120, i32 0)
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i32 @BUG_ON(i32 %129)
  %131 = load %struct.super_block*, %struct.super_block** %12, align 8
  %132 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 2
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @udf_free_blocks(%struct.super_block* %131, i32* null, %struct.kernel_lb_addr* %132, i32 0, i32 %133)
  br label %150

135:                                              ; preds = %118
  %136 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %135
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %142 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load %struct.inode*, %struct.inode** %3, align 8
  %144 = call i32 @mark_inode_dirty(%struct.inode* %143)
  br label %149

145:                                              ; preds = %135
  %146 = load %struct.inode*, %struct.inode** %3, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @udf_update_alloc_ext_desc(%struct.inode* %146, %struct.extent_position* %4, i32 %147)
  br label %149

149:                                              ; preds = %145, %139
  br label %150

150:                                              ; preds = %149, %124
  %151 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @brelse(i64 %152)
  %154 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 0
  store i32 4, i32* %154, align 8
  %155 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 2
  %156 = bitcast %struct.kernel_lb_addr* %155 to i8*
  %157 = bitcast %struct.kernel_lb_addr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %156, i8* align 4 %157, i64 4, i1 false)
  %158 = load %struct.super_block*, %struct.super_block** %12, align 8
  %159 = load %struct.super_block*, %struct.super_block** %12, align 8
  %160 = call i32 @udf_get_lb_pblock(%struct.super_block* %159, %struct.kernel_lb_addr* %5, i32 0)
  %161 = call i64 @udf_tread(%struct.super_block* %158, i32 %160)
  %162 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 1
  store i64 %161, i64* %162, align 8
  %163 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %150
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %2, align 4
  br label %233

169:                                              ; preds = %150
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %169
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.super_block*, %struct.super_block** %12, align 8
  %175 = getelementptr inbounds %struct.super_block, %struct.super_block* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %173, %176
  %178 = sub nsw i32 %177, 1
  %179 = load %struct.super_block*, %struct.super_block** %12, align 8
  %180 = getelementptr inbounds %struct.super_block, %struct.super_block* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = ashr i32 %178, %181
  store i32 %182, i32* %9, align 4
  br label %184

183:                                              ; preds = %169
  store i32 1, i32* %9, align 4
  br label %184

184:                                              ; preds = %183, %172
  br label %194

185:                                              ; preds = %113
  %186 = load %struct.inode*, %struct.inode** %3, align 8
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @extent_trunc(%struct.inode* %186, %struct.extent_position* %4, %struct.kernel_lb_addr* %5, i32 %187, i32 %188, i32 0)
  %190 = load i32, i32* %16, align 4
  %191 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, %190
  store i32 %193, i32* %191, align 8
  br label %194

194:                                              ; preds = %185, %184
  br label %109

195:                                              ; preds = %109
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  %202 = xor i1 %201, true
  %203 = zext i1 %202 to i32
  %204 = call i32 @BUG_ON(i32 %203)
  %205 = load %struct.super_block*, %struct.super_block** %12, align 8
  %206 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 2
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @udf_free_blocks(%struct.super_block* %205, i32* null, %struct.kernel_lb_addr* %206, i32 0, i32 %207)
  br label %224

209:                                              ; preds = %195
  %210 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %209
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %216 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 8
  %217 = load %struct.inode*, %struct.inode** %3, align 8
  %218 = call i32 @mark_inode_dirty(%struct.inode* %217)
  br label %223

219:                                              ; preds = %209
  %220 = load %struct.inode*, %struct.inode** %3, align 8
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @udf_update_alloc_ext_desc(%struct.inode* %220, %struct.extent_position* %4, i32 %221)
  br label %223

223:                                              ; preds = %219, %213
  br label %224

224:                                              ; preds = %223, %198
  %225 = load %struct.inode*, %struct.inode** %3, align 8
  %226 = getelementptr inbounds %struct.inode, %struct.inode* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.udf_inode_info*, %struct.udf_inode_info** %17, align 8
  %229 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 4
  %230 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %4, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @brelse(i64 %231)
  store i32 0, i32* %2, align 4
  br label %233

233:                                              ; preds = %224, %166, %67
  %234 = load i32, i32* %2, align 4
  ret i32 %234
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @inode_bmap(%struct.inode*, i32, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @extent_trunc(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32, i32) #2

declare dso_local i32 @udf_file_entry_alloc_offset(%struct.inode*) #2

declare dso_local i32 @udf_current_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #2

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @udf_free_blocks(%struct.super_block*, i32*, %struct.kernel_lb_addr*, i32, i32) #2

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #2

declare dso_local i32 @udf_update_alloc_ext_desc(%struct.inode*, %struct.extent_position*, i32) #2

declare dso_local i32 @brelse(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @udf_tread(%struct.super_block*, i32) #2

declare dso_local i32 @udf_get_lb_pblock(%struct.super_block*, %struct.kernel_lb_addr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
