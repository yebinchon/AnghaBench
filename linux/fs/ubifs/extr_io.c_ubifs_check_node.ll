; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_check_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_io.c_ubifs_check_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ubifs_ch = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UBIFS_NODE_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"bad magic %#08x, expected %#08x\00", align 1
@EUCLEAN = common dso_local global i32 0, align 4
@UBIFS_NODE_TYPES_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"bad node type %d\00", align 1
@UBIFS_DATA_NODE = common dso_local global i32 0, align 4
@UBIFS_CRC32_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"bad CRC: calculated %#08x, read %#08x\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bad node length %d\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"bad node at LEB %d:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_check_node(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_info*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.ubifs_ch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %14, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = bitcast i8* %23 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %24, %struct.ubifs_ch** %20, align 8
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %31 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp sge i32 %35, 0
  br label %37

37:                                               ; preds = %34, %28, %6
  %38 = phi i1 [ false, %28 ], [ false, %6 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @ubifs_assert(%struct.ubifs_info* %25, i32 %39)
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 7
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %48 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br label %51

51:                                               ; preds = %45, %37
  %52 = phi i1 [ false, %37 ], [ %50, %45 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @ubifs_assert(%struct.ubifs_info* %41, i32 %53)
  %55 = load %struct.ubifs_ch*, %struct.ubifs_ch** %20, align 8
  %56 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le32_to_cpu(i32 %57)
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %19, align 8
  %60 = load i64, i64* %19, align 8
  %61 = load i64, i64* @UBIFS_NODE_MAGIC, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %51
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %68 = load i64, i64* %19, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i64, i64* @UBIFS_NODE_MAGIC, align 8
  %71 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* @EUCLEAN, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %14, align 4
  br label %213

75:                                               ; preds = %51
  %76 = load %struct.ubifs_ch*, %struct.ubifs_ch** %20, align 8
  %77 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @UBIFS_NODE_TYPES_CNT, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81, %75
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %89, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %88, %85
  br label %213

93:                                               ; preds = %81
  %94 = load %struct.ubifs_ch*, %struct.ubifs_ch** %20, align 8
  %95 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i8* @le32_to_cpu(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %99, %100
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %101, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %205

107:                                              ; preds = %93
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %109 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %108, i32 0, i32 5
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %107
  %118 = load i32, i32* %16, align 4
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %120 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %119, i32 0, i32 5
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %118, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %205

129:                                              ; preds = %117
  br label %154

130:                                              ; preds = %107
  %131 = load i32, i32* %16, align 4
  %132 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %133 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %132, i32 0, i32 5
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp slt i32 %131, %139
  br i1 %140, label %152, label %141

141:                                              ; preds = %130
  %142 = load i32, i32* %16, align 4
  %143 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %144 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %143, i32 0, i32 5
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %142, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %141, %130
  br label %205

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %129
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %177, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* @UBIFS_DATA_NODE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %177

161:                                              ; preds = %157
  %162 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %163 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %177, label %166

166:                                              ; preds = %161
  %167 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %168 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %166
  %172 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %173 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  store i32 0, i32* %7, align 4
  br label %227

177:                                              ; preds = %171, %166, %161, %157, %154
  %178 = load i32, i32* @UBIFS_CRC32_INIT, align 4
  %179 = load i8*, i8** %9, align 8
  %180 = getelementptr i8, i8* %179, i64 8
  %181 = load i32, i32* %16, align 4
  %182 = sub nsw i32 %181, 8
  %183 = call i64 @crc32(i32 %178, i8* %180, i32 %182)
  store i64 %183, i64* %17, align 8
  %184 = load %struct.ubifs_ch*, %struct.ubifs_ch** %20, align 8
  %185 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = call i8* @le32_to_cpu(i32 %186)
  %188 = ptrtoint i8* %187 to i64
  store i64 %188, i64* %18, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load i64, i64* %18, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %177
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %192
  %196 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %197 = load i64, i64* %17, align 8
  %198 = trunc i64 %197 to i32
  %199 = load i64, i64* %18, align 8
  %200 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %196, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %198, i64 %199)
  br label %201

201:                                              ; preds = %195, %192
  %202 = load i32, i32* @EUCLEAN, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %14, align 4
  br label %213

204:                                              ; preds = %177
  store i32 0, i32* %7, align 4
  br label %227

205:                                              ; preds = %152, %128, %106
  %206 = load i32, i32* %12, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %205
  %209 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %210 = load i32, i32* %16, align 4
  %211 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %210)
  br label %212

212:                                              ; preds = %208, %205
  br label %213

213:                                              ; preds = %212, %201, %92, %72
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %225, label %216

216:                                              ; preds = %213
  %217 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %11, align 4
  %220 = call i32 (%struct.ubifs_info*, i8*, i32, ...) @ubifs_err(%struct.ubifs_info* %217, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %218, i32 %219)
  %221 = load %struct.ubifs_info*, %struct.ubifs_info** %8, align 8
  %222 = load i8*, i8** %9, align 8
  %223 = call i32 @ubifs_dump_node(%struct.ubifs_info* %221, i8* %222)
  %224 = call i32 (...) @dump_stack()
  br label %225

225:                                              ; preds = %216, %213
  %226 = load i32, i32* %14, align 4
  store i32 %226, i32* %7, align 4
  br label %227

227:                                              ; preds = %225, %204, %176
  %228 = load i32, i32* %7, align 4
  ret i32 %228
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, ...) #1

declare dso_local i64 @crc32(i32, i8*, i32) #1

declare dso_local i32 @ubifs_dump_node(%struct.ubifs_info*, i8*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
