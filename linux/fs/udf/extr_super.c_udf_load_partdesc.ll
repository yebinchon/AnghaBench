; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_partdesc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_load_partdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.partitionDesc = type { i32 }
%struct.udf_part_map = type { i64, i64 }
%struct.udf_sb_info = type { i32, %struct.udf_part_map* }

@EAGAIN = common dso_local global i32 0, align 4
@TAG_IDENT_PD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Searching map: (%u == %u)\0A\00", align 1
@UDF_TYPE1_MAP15 = common dso_local global i64 0, align 8
@UDF_SPARABLE_MAP15 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Partition (%u) not found in partition map\0A\00", align 1
@UDF_VIRTUAL_MAP15 = common dso_local global i64 0, align 8
@UDF_VIRTUAL_MAP20 = common dso_local global i64 0, align 8
@UDF_METADATA_MAP25 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"error loading MetaData partition map %d\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@UDF_FLAG_RW_INCOMPAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @udf_load_partdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_partdesc(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.partitionDesc*, align 8
  %8 = alloca %struct.udf_part_map*, align 8
  %9 = alloca %struct.udf_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.super_block*, %struct.super_block** %4, align 8
  %16 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %15)
  store %struct.udf_sb_info* %16, %struct.udf_sb_info** %9, align 8
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.buffer_head* @udf_read_tagged(%struct.super_block* %17, i32 %18, i32 %19, i64* %13)
  store %struct.buffer_head* %20, %struct.buffer_head** %6, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %22 = icmp ne %struct.buffer_head* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %197

26:                                               ; preds = %2
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* @TAG_IDENT_PD, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %14, align 4
  br label %193

31:                                               ; preds = %26
  %32 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.partitionDesc*
  store %struct.partitionDesc* %35, %struct.partitionDesc** %7, align 8
  %36 = load %struct.partitionDesc*, %struct.partitionDesc** %7, align 8
  %37 = getelementptr inbounds %struct.partitionDesc, %struct.partitionDesc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le16_to_cpu(i32 %38)
  store i64 %39, i64* %12, align 8
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %77, %31
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %43 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %80

46:                                               ; preds = %40
  %47 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %48 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %47, i32 0, i32 1
  %49 = load %struct.udf_part_map*, %struct.udf_part_map** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %49, i64 %51
  store %struct.udf_part_map* %52, %struct.udf_part_map** %8, align 8
  %53 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %54 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 (i8*, i64, ...) @udf_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %59 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %46
  %64 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %65 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UDF_TYPE1_MAP15, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %63
  %70 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %71 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UDF_SPARABLE_MAP15, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %69, %63
  br label %80

76:                                               ; preds = %69, %46
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %40

80:                                               ; preds = %75, %40
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %83 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i64, i64* %12, align 8
  %88 = call i32 (i8*, i64, ...) @udf_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  store i32 0, i32* %14, align 4
  br label %193

89:                                               ; preds = %80
  %90 = load %struct.super_block*, %struct.super_block** %4, align 8
  %91 = load %struct.partitionDesc*, %struct.partitionDesc** %7, align 8
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @udf_fill_partdesc_info(%struct.super_block* %90, %struct.partitionDesc* %91, i32 %92)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %89
  br label %193

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %11, align 4
  store %struct.udf_part_map* null, %struct.udf_part_map** %8, align 8
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %137, %97
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %102 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %140

105:                                              ; preds = %99
  %106 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %107 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %106, i32 0, i32 1
  %108 = load %struct.udf_part_map*, %struct.udf_part_map** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %108, i64 %110
  store %struct.udf_part_map* %111, %struct.udf_part_map** %8, align 8
  %112 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %113 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %136

117:                                              ; preds = %105
  %118 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %119 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @UDF_VIRTUAL_MAP15, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %135, label %123

123:                                              ; preds = %117
  %124 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %125 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @UDF_VIRTUAL_MAP20, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %131 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @UDF_METADATA_MAP25, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %129, %123, %117
  br label %140

136:                                              ; preds = %129, %105
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %99

140:                                              ; preds = %135, %99
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.udf_sb_info*, %struct.udf_sb_info** %9, align 8
  %143 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = icmp sge i32 %141, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i32 0, i32* %14, align 4
  br label %193

147:                                              ; preds = %140
  %148 = load %struct.super_block*, %struct.super_block** %4, align 8
  %149 = load %struct.partitionDesc*, %struct.partitionDesc** %7, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @udf_fill_partdesc_info(%struct.super_block* %148, %struct.partitionDesc* %149, i32 %150)
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %147
  br label %193

155:                                              ; preds = %147
  %156 = load %struct.udf_part_map*, %struct.udf_part_map** %8, align 8
  %157 = getelementptr inbounds %struct.udf_part_map, %struct.udf_part_map* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @UDF_METADATA_MAP25, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %173

161:                                              ; preds = %155
  %162 = load %struct.super_block*, %struct.super_block** %4, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @udf_load_metadata_files(%struct.super_block* %162, i32 %163, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161
  %169 = load %struct.super_block*, %struct.super_block** %4, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @udf_err(%struct.super_block* %169, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  br label %193

172:                                              ; preds = %161
  br label %192

173:                                              ; preds = %155
  %174 = load %struct.super_block*, %struct.super_block** %4, align 8
  %175 = call i32 @sb_rdonly(%struct.super_block* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %173
  %178 = load i32, i32* @EACCES, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %14, align 4
  br label %193

180:                                              ; preds = %173
  %181 = load %struct.super_block*, %struct.super_block** %4, align 8
  %182 = load i32, i32* @UDF_FLAG_RW_INCOMPAT, align 4
  %183 = call i32 @UDF_SET_FLAG(%struct.super_block* %181, i32 %182)
  %184 = load %struct.super_block*, %struct.super_block** %4, align 8
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @udf_load_vat(%struct.super_block* %184, i32 %185, i32 %186)
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %14, align 4
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  br label %193

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %191, %172
  store i32 0, i32* %14, align 4
  br label %193

193:                                              ; preds = %192, %190, %177, %168, %154, %146, %96, %86, %30
  %194 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %195 = call i32 @brelse(%struct.buffer_head* %194)
  %196 = load i32, i32* %14, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %193, %23
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @udf_read_tagged(%struct.super_block*, i32, i32, i64*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @udf_debug(i8*, i64, ...) #1

declare dso_local i32 @udf_fill_partdesc_info(%struct.super_block*, %struct.partitionDesc*, i32) #1

declare dso_local i32 @udf_load_metadata_files(%struct.super_block*, i32, i32) #1

declare dso_local i32 @udf_err(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @UDF_SET_FLAG(%struct.super_block*, i32) #1

declare dso_local i32 @udf_load_vat(%struct.super_block*, i32, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
