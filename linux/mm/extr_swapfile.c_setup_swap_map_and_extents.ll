; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c_setup_swap_map_and_extents.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c_setup_swap_map_and_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i64, i32, i32, i32 }
%union.swap_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32*, i32 }
%struct.swap_cluster_info = type { i32 }

@SWAPFILE_CLUSTER = common dso_local global i32 0, align 4
@SWAP_CLUSTER_COLS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SWAP_MAP_BAD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [17 x i8] c"Empty swap-file\0A\00", align 1
@CLUSTER_FLAG_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.swap_info_struct*, %union.swap_header*, i8*, %struct.swap_cluster_info*, i64, i32*)* @setup_swap_map_and_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_swap_map_and_extents(%struct.swap_info_struct* %0, %union.swap_header* %1, i8* %2, %struct.swap_cluster_info* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.swap_info_struct*, align 8
  %9 = alloca %union.swap_header*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.swap_cluster_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %8, align 8
  store %union.swap_header* %1, %union.swap_header** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.swap_cluster_info* %3, %struct.swap_cluster_info** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %25 = call i64 @DIV_ROUND_UP(i64 %23, i32 %24)
  store i64 %25, i64* %18, align 8
  %26 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %27 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %30 = udiv i32 %28, %29
  %31 = load i32, i32* @SWAP_CLUSTER_COLS, align 4
  %32 = urem i32 %30, %31
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %19, align 8
  %34 = load i64, i64* %12, align 8
  %35 = sub i64 %34, 1
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %16, align 4
  %37 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %38 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %37, i32 0, i32 3
  %39 = call i32 @cluster_list_init(i32* %38)
  %40 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %41 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %40, i32 0, i32 4
  %42 = call i32 @cluster_list_init(i32* %41)
  store i64 0, i64* %20, align 8
  br label %43

43:                                               ; preds = %89, %6
  %44 = load i64, i64* %20, align 8
  %45 = load %union.swap_header*, %union.swap_header** %9, align 8
  %46 = bitcast %union.swap_header* %45 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ult i64 %44, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %43
  %51 = load %union.swap_header*, %union.swap_header** %9, align 8
  %52 = bitcast %union.swap_header* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %20, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %22, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %22, align 4
  %62 = load %union.swap_header*, %union.swap_header** %9, align 8
  %63 = bitcast %union.swap_header* %62 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ugt i32 %61, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %50
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %206

70:                                               ; preds = %60
  %71 = load i32, i32* %22, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* %12, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i8, i8* @SWAP_MAP_BAD, align 1
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %22, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 %76, i8* %80, align 1
  %81 = load i32, i32* %16, align 4
  %82 = add i32 %81, -1
  store i32 %82, i32* %16, align 4
  %83 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %84 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %11, align 8
  %85 = load i32, i32* %22, align 4
  %86 = zext i32 %85 to i64
  %87 = call i32 @inc_cluster_info_page(%struct.swap_info_struct* %83, %struct.swap_cluster_info* %84, i64 %86)
  br label %88

88:                                               ; preds = %75, %70
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %20, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %20, align 8
  br label %43

92:                                               ; preds = %43
  %93 = load i64, i64* %12, align 8
  store i64 %93, i64* %20, align 8
  br label %94

94:                                               ; preds = %105, %92
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i32, i32* @SWAPFILE_CLUSTER, align 4
  %98 = call i64 @round_up(i64 %96, i32 %97)
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %102 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %11, align 8
  %103 = load i64, i64* %20, align 8
  %104 = call i32 @inc_cluster_info_page(%struct.swap_info_struct* %101, %struct.swap_cluster_info* %102, i64 %103)
  br label %105

105:                                              ; preds = %100
  %106 = load i64, i64* %20, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %20, align 8
  br label %94

108:                                              ; preds = %94
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %135

111:                                              ; preds = %108
  %112 = load i8, i8* @SWAP_MAP_BAD, align 1
  %113 = load i8*, i8** %10, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  store i8 %112, i8* %114, align 1
  %115 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %116 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %11, align 8
  %117 = call i32 @inc_cluster_info_page(%struct.swap_info_struct* %115, %struct.swap_cluster_info* %116, i64 0)
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %120 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* %16, align 4
  %122 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %123 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  %124 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %125 = load i32*, i32** %13, align 8
  %126 = call i32 @setup_swap_extents(%struct.swap_info_struct* %124, i32* %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %111
  %130 = load i32, i32* %17, align 4
  store i32 %130, i32* %7, align 4
  br label %206

131:                                              ; preds = %111
  %132 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %133 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %16, align 4
  br label %135

135:                                              ; preds = %131, %108
  %136 = load i32, i32* %16, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = call i32 @pr_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %7, align 4
  br label %206

142:                                              ; preds = %135
  %143 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %11, align 8
  %144 = icmp ne %struct.swap_cluster_info* %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %17, align 4
  store i32 %146, i32* %7, align 4
  br label %206

147:                                              ; preds = %142
  store i32 0, i32* %15, align 4
  br label %148

148:                                              ; preds = %201, %147
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* @SWAP_CLUSTER_COLS, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %204

152:                                              ; preds = %148
  %153 = load i32, i32* %15, align 4
  %154 = zext i32 %153 to i64
  %155 = load i64, i64* %19, align 8
  %156 = add i64 %154, %155
  %157 = load i32, i32* @SWAP_CLUSTER_COLS, align 4
  %158 = zext i32 %157 to i64
  %159 = urem i64 %156, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %14, align 4
  store i64 0, i64* %20, align 8
  br label %161

161:                                              ; preds = %197, %152
  %162 = load i64, i64* %20, align 8
  %163 = load i64, i64* %18, align 8
  %164 = load i32, i32* @SWAP_CLUSTER_COLS, align 4
  %165 = call i64 @DIV_ROUND_UP(i64 %163, i32 %164)
  %166 = icmp ult i64 %162, %165
  br i1 %166, label %167, label %200

167:                                              ; preds = %161
  %168 = load i64, i64* %20, align 8
  %169 = load i32, i32* @SWAP_CLUSTER_COLS, align 4
  %170 = zext i32 %169 to i64
  %171 = mul i64 %168, %170
  %172 = load i32, i32* %14, align 4
  %173 = zext i32 %172 to i64
  %174 = add i64 %171, %173
  store i64 %174, i64* %21, align 8
  %175 = load i64, i64* %21, align 8
  %176 = load i64, i64* %18, align 8
  %177 = icmp uge i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %197

179:                                              ; preds = %167
  %180 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %11, align 8
  %181 = load i64, i64* %21, align 8
  %182 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %180, i64 %181
  %183 = call i64 @cluster_count(%struct.swap_cluster_info* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %197

186:                                              ; preds = %179
  %187 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %11, align 8
  %188 = load i64, i64* %21, align 8
  %189 = getelementptr inbounds %struct.swap_cluster_info, %struct.swap_cluster_info* %187, i64 %188
  %190 = load i32, i32* @CLUSTER_FLAG_FREE, align 4
  %191 = call i32 @cluster_set_flag(%struct.swap_cluster_info* %189, i32 %190)
  %192 = load %struct.swap_info_struct*, %struct.swap_info_struct** %8, align 8
  %193 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %192, i32 0, i32 3
  %194 = load %struct.swap_cluster_info*, %struct.swap_cluster_info** %11, align 8
  %195 = load i64, i64* %21, align 8
  %196 = call i32 @cluster_list_add_tail(i32* %193, %struct.swap_cluster_info* %194, i64 %195)
  br label %197

197:                                              ; preds = %186, %185, %178
  %198 = load i64, i64* %20, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %20, align 8
  br label %161

200:                                              ; preds = %161
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %15, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %15, align 4
  br label %148

204:                                              ; preds = %148
  %205 = load i32, i32* %17, align 4
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %204, %145, %138, %129, %67
  %207 = load i32, i32* %7, align 4
  ret i32 %207
}

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @cluster_list_init(i32*) #1

declare dso_local i32 @inc_cluster_info_page(%struct.swap_info_struct*, %struct.swap_cluster_info*, i64) #1

declare dso_local i64 @round_up(i64, i32) #1

declare dso_local i32 @setup_swap_extents(%struct.swap_info_struct*, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i64 @cluster_count(%struct.swap_cluster_info*) #1

declare dso_local i32 @cluster_set_flag(%struct.swap_cluster_info*, i32) #1

declare dso_local i32 @cluster_list_add_tail(i32*, %struct.swap_cluster_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
