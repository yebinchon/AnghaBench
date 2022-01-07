; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_empty_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_namei.c_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fileIdentDesc = type { i32, i64 }
%struct.udf_fileident_bh = type { i32, i32, i32*, i32* }
%struct.kernel_lb_addr = type { i32 }
%struct.extent_position = type { i32, i32* }
%struct.udf_inode_info = type { i64 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@EXT_RECORDED_ALLOCATED = common dso_local global i32 0, align 4
@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@FID_FILE_CHAR_DELETED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @empty_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @empty_dir(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.fileIdentDesc*, align 8
  %5 = alloca %struct.fileIdentDesc, align 8
  %6 = alloca %struct.udf_fileident_bh, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kernel_lb_addr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_position, align 8
  %14 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @udf_ext0_offset(%struct.inode* %15)
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %8, align 4
  %21 = bitcast %struct.extent_position* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 16, i1 false)
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %22)
  store %struct.udf_inode_info* %23, %struct.udf_inode_info** %14, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call i32 @udf_ext0_offset(%struct.inode* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %26, %32
  %34 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %37 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 3
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %121

44:                                               ; preds = %1
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %46, %51
  %53 = call i32 @inode_bmap(%struct.inode* %45, i32 %52, %struct.extent_position* %13, %struct.kernel_lb_addr* %10, i32* %11, i32* %12)
  %54 = load i32, i32* @EXT_RECORDED_ALLOCATED, align 4
  %55 = ashr i32 %54, 30
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %116

57:                                               ; preds = %44
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @udf_get_lb_pblock(%struct.TYPE_3__* %60, %struct.kernel_lb_addr* %10, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %64, %69
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %57
  %74 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %75 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = sub i64 %82, 4
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 8
  br label %98

85:                                               ; preds = %73
  %86 = load %struct.udf_inode_info*, %struct.udf_inode_info** %14, align 8
  %87 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, 4
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 8
  br label %97

97:                                               ; preds = %91, %85
  br label %98

98:                                               ; preds = %97, %79
  br label %100

99:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %99, %98
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32* @udf_tread(%struct.TYPE_3__* %103, i32 %104)
  %106 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 3
  store i32* %105, i32** %106, align 8
  %107 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 2
  store i32* %105, i32** %107, align 8
  %108 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %115, label %111

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @brelse(i32* %113)
  store i32 0, i32* %2, align 4
  br label %193

115:                                              ; preds = %100
  br label %120

116:                                              ; preds = %44
  %117 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = call i32 @brelse(i32* %118)
  store i32 0, i32* %2, align 4
  br label %193

120:                                              ; preds = %115
  br label %121

121:                                              ; preds = %120, %41
  br label %122

122:                                              ; preds = %175, %121
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %176

126:                                              ; preds = %122
  %127 = load %struct.inode*, %struct.inode** %3, align 8
  %128 = call %struct.fileIdentDesc* @udf_fileident_read(%struct.inode* %127, i32* %7, %struct.udf_fileident_bh* %6, %struct.fileIdentDesc* %5, %struct.extent_position* %13, %struct.kernel_lb_addr* %10, i32* %11, i32* %12)
  store %struct.fileIdentDesc* %128, %struct.fileIdentDesc** %4, align 8
  %129 = load %struct.fileIdentDesc*, %struct.fileIdentDesc** %4, align 8
  %130 = icmp ne %struct.fileIdentDesc* %129, null
  br i1 %130, label %148, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %133, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @brelse(i32* %139)
  br label %141

141:                                              ; preds = %137, %131
  %142 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @brelse(i32* %143)
  %145 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = call i32 @brelse(i32* %146)
  store i32 0, i32* %2, align 4
  br label %193

148:                                              ; preds = %126
  %149 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %5, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %175

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.fileIdentDesc, %struct.fileIdentDesc* %5, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @FID_FILE_CHAR_DELETED, align 4
  %156 = and i32 %154, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %160, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @brelse(i32* %166)
  br label %168

168:                                              ; preds = %164, %158
  %169 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @brelse(i32* %170)
  %172 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @brelse(i32* %173)
  store i32 0, i32* %2, align 4
  br label %193

175:                                              ; preds = %152, %148
  br label %122

176:                                              ; preds = %122
  %177 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 2
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 3
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %178, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 3
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @brelse(i32* %184)
  br label %186

186:                                              ; preds = %182, %176
  %187 = getelementptr inbounds %struct.udf_fileident_bh, %struct.udf_fileident_bh* %6, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @brelse(i32* %188)
  %190 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %13, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @brelse(i32* %191)
  store i32 1, i32* %2, align 4
  br label %193

193:                                              ; preds = %186, %168, %141, %116, %111
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @udf_ext0_offset(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @inode_bmap(%struct.inode*, i32, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.TYPE_3__*, %struct.kernel_lb_addr*, i32) #1

declare dso_local i32* @udf_tread(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local %struct.fileIdentDesc* @udf_fileident_read(%struct.inode*, i32*, %struct.udf_fileident_bh*, %struct.fileIdentDesc*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
