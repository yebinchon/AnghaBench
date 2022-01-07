; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dma_of_path.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sh/rcar/extr_dma.c_rsnd_dma_of_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsnd_mod = type { i32 }
%struct.rsnd_dai_stream = type { i32 }
%struct.rsnd_priv = type { i32 }
%struct.device = type { i32 }

@MOD_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"module connection (this is %s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"  %s%s\0A\00", align 1
@mem = common dso_local global %struct.rsnd_mod zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" from\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" to\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsnd_mod*, %struct.rsnd_dai_stream*, i32, %struct.rsnd_mod**, %struct.rsnd_mod**)* @rsnd_dma_of_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsnd_dma_of_path(%struct.rsnd_mod* %0, %struct.rsnd_dai_stream* %1, i32 %2, %struct.rsnd_mod** %3, %struct.rsnd_mod** %4) #0 {
  %6 = alloca %struct.rsnd_mod*, align 8
  %7 = alloca %struct.rsnd_dai_stream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rsnd_mod**, align 8
  %10 = alloca %struct.rsnd_mod**, align 8
  %11 = alloca %struct.rsnd_mod*, align 8
  %12 = alloca %struct.rsnd_mod*, align 8
  %13 = alloca %struct.rsnd_mod*, align 8
  %14 = alloca %struct.rsnd_mod*, align 8
  %15 = alloca %struct.rsnd_mod*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.rsnd_mod*, align 8
  %19 = alloca %struct.rsnd_mod*, align 8
  %20 = alloca %struct.rsnd_priv*, align 8
  %21 = alloca %struct.device*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.rsnd_mod*, align 8
  %26 = alloca i32, align 4
  store %struct.rsnd_mod* %0, %struct.rsnd_mod** %6, align 8
  store %struct.rsnd_dai_stream* %1, %struct.rsnd_dai_stream** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.rsnd_mod** %3, %struct.rsnd_mod*** %9, align 8
  store %struct.rsnd_mod** %4, %struct.rsnd_mod*** %10, align 8
  %27 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %28 = call %struct.rsnd_mod* @rsnd_io_to_mod_src(%struct.rsnd_dai_stream* %27)
  store %struct.rsnd_mod* %28, %struct.rsnd_mod** %12, align 8
  %29 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %30 = call %struct.rsnd_mod* @rsnd_io_to_mod_ctu(%struct.rsnd_dai_stream* %29)
  store %struct.rsnd_mod* %30, %struct.rsnd_mod** %13, align 8
  %31 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %32 = call %struct.rsnd_mod* @rsnd_io_to_mod_mix(%struct.rsnd_dai_stream* %31)
  store %struct.rsnd_mod* %32, %struct.rsnd_mod** %14, align 8
  %33 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %34 = call %struct.rsnd_mod* @rsnd_io_to_mod_dvc(%struct.rsnd_dai_stream* %33)
  store %struct.rsnd_mod* %34, %struct.rsnd_mod** %15, align 8
  %35 = load i32, i32* @MOD_MAX, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %16, align 8
  %38 = alloca %struct.rsnd_mod*, i64 %36, align 16
  store i64 %36, i64* %17, align 8
  %39 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %40 = call %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod* %39)
  store %struct.rsnd_priv* %40, %struct.rsnd_priv** %20, align 8
  %41 = load %struct.rsnd_priv*, %struct.rsnd_priv** %20, align 8
  %42 = call %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv* %41)
  store %struct.device* %42, %struct.device** %21, align 8
  %43 = load %struct.rsnd_priv*, %struct.rsnd_priv** %20, align 8
  %44 = call i64 @rsnd_ssiu_of_node(%struct.rsnd_priv* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %5
  %47 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %48 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssiu(%struct.rsnd_dai_stream* %47)
  store %struct.rsnd_mod* %48, %struct.rsnd_mod** %25, align 8
  %49 = load %struct.rsnd_mod*, %struct.rsnd_mod** %25, align 8
  store %struct.rsnd_mod* %49, %struct.rsnd_mod** %11, align 8
  %50 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %51 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %52 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream* %51)
  %53 = icmp eq %struct.rsnd_mod* %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load %struct.rsnd_mod*, %struct.rsnd_mod** %25, align 8
  store %struct.rsnd_mod* %55, %struct.rsnd_mod** %6, align 8
  br label %56

56:                                               ; preds = %54, %46
  br label %60

57:                                               ; preds = %5
  %58 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %59 = call %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream* %58)
  store %struct.rsnd_mod* %59, %struct.rsnd_mod** %11, align 8
  br label %60

60:                                               ; preds = %57, %56
  %61 = load %struct.rsnd_mod*, %struct.rsnd_mod** %11, align 8
  %62 = icmp ne %struct.rsnd_mod* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 1, i32* %26, align 4
  br label %232

64:                                               ; preds = %60
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %65

65:                                               ; preds = %82, %64
  %66 = load i32, i32* %23, align 4
  %67 = load i32, i32* @MOD_MAX, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load i32, i32* %23, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %71
  store %struct.rsnd_mod* null, %struct.rsnd_mod** %72, align 8
  %73 = load %struct.rsnd_dai_stream*, %struct.rsnd_dai_stream** %7, align 8
  %74 = load i32, i32* %23, align 4
  %75 = call i32 @rsnd_io_to_mod(%struct.rsnd_dai_stream* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %22, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %22, align 4
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %23, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %23, align 4
  br label %65

85:                                               ; preds = %65
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %91

89:                                               ; preds = %85
  %90 = load %struct.rsnd_mod*, %struct.rsnd_mod** %11, align 8
  br label %91

91:                                               ; preds = %89, %88
  %92 = phi %struct.rsnd_mod* [ null, %88 ], [ %90, %89 ]
  store %struct.rsnd_mod* %92, %struct.rsnd_mod** %18, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load %struct.rsnd_mod*, %struct.rsnd_mod** %11, align 8
  br label %98

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi %struct.rsnd_mod* [ %96, %95 ], [ null, %97 ]
  store %struct.rsnd_mod* %99, %struct.rsnd_mod** %19, align 8
  store i32 0, i32* %24, align 4
  %100 = load %struct.rsnd_mod*, %struct.rsnd_mod** %18, align 8
  %101 = load i32, i32* %24, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %24, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %103
  store %struct.rsnd_mod* %100, %struct.rsnd_mod** %104, align 8
  store i32 1, i32* %23, align 4
  br label %105

105:                                              ; preds = %149, %98
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* %22, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %152

109:                                              ; preds = %105
  %110 = load %struct.rsnd_mod*, %struct.rsnd_mod** %12, align 8
  %111 = icmp ne %struct.rsnd_mod* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load %struct.rsnd_mod*, %struct.rsnd_mod** %12, align 8
  %114 = load i32, i32* %24, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %24, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %116
  store %struct.rsnd_mod* %113, %struct.rsnd_mod** %117, align 8
  store %struct.rsnd_mod* null, %struct.rsnd_mod** %12, align 8
  br label %148

118:                                              ; preds = %109
  %119 = load %struct.rsnd_mod*, %struct.rsnd_mod** %13, align 8
  %120 = icmp ne %struct.rsnd_mod* %119, null
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.rsnd_mod*, %struct.rsnd_mod** %13, align 8
  %123 = load i32, i32* %24, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %24, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %125
  store %struct.rsnd_mod* %122, %struct.rsnd_mod** %126, align 8
  store %struct.rsnd_mod* null, %struct.rsnd_mod** %13, align 8
  br label %147

127:                                              ; preds = %118
  %128 = load %struct.rsnd_mod*, %struct.rsnd_mod** %14, align 8
  %129 = icmp ne %struct.rsnd_mod* %128, null
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load %struct.rsnd_mod*, %struct.rsnd_mod** %14, align 8
  %132 = load i32, i32* %24, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %24, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %134
  store %struct.rsnd_mod* %131, %struct.rsnd_mod** %135, align 8
  store %struct.rsnd_mod* null, %struct.rsnd_mod** %14, align 8
  br label %146

136:                                              ; preds = %127
  %137 = load %struct.rsnd_mod*, %struct.rsnd_mod** %15, align 8
  %138 = icmp ne %struct.rsnd_mod* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.rsnd_mod*, %struct.rsnd_mod** %15, align 8
  %141 = load i32, i32* %24, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %24, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %143
  store %struct.rsnd_mod* %140, %struct.rsnd_mod** %144, align 8
  store %struct.rsnd_mod* null, %struct.rsnd_mod** %15, align 8
  br label %145

145:                                              ; preds = %139, %136
  br label %146

146:                                              ; preds = %145, %130
  br label %147

147:                                              ; preds = %146, %121
  br label %148

148:                                              ; preds = %147, %112
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %23, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %23, align 4
  br label %105

152:                                              ; preds = %105
  %153 = load %struct.rsnd_mod*, %struct.rsnd_mod** %19, align 8
  %154 = load i32, i32* %24, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %155
  store %struct.rsnd_mod* %153, %struct.rsnd_mod** %156, align 8
  %157 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %158 = load %struct.rsnd_mod*, %struct.rsnd_mod** %11, align 8
  %159 = icmp eq %struct.rsnd_mod* %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i32, i32* %8, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %152
  %164 = load i32, i32* %24, align 4
  %165 = sub nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %166
  %168 = load %struct.rsnd_mod*, %struct.rsnd_mod** %167, align 8
  %169 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %9, align 8
  store %struct.rsnd_mod* %168, %struct.rsnd_mod** %169, align 8
  %170 = load i32, i32* %24, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %171
  %173 = load %struct.rsnd_mod*, %struct.rsnd_mod** %172, align 8
  %174 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %10, align 8
  store %struct.rsnd_mod* %173, %struct.rsnd_mod** %174, align 8
  br label %182

175:                                              ; preds = %152
  %176 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 0
  %177 = load %struct.rsnd_mod*, %struct.rsnd_mod** %176, align 16
  %178 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %9, align 8
  store %struct.rsnd_mod* %177, %struct.rsnd_mod** %178, align 8
  %179 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 1
  %180 = load %struct.rsnd_mod*, %struct.rsnd_mod** %179, align 8
  %181 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %10, align 8
  store %struct.rsnd_mod* %180, %struct.rsnd_mod** %181, align 8
  br label %182

182:                                              ; preds = %175, %163
  %183 = load %struct.device*, %struct.device** %21, align 8
  %184 = load %struct.rsnd_mod*, %struct.rsnd_mod** %6, align 8
  %185 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %184)
  %186 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %183, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %185)
  store i32 0, i32* %23, align 4
  br label %187

187:                                              ; preds = %228, %182
  %188 = load i32, i32* %23, align 4
  %189 = load i32, i32* %24, align 4
  %190 = icmp sle i32 %188, %189
  br i1 %190, label %191, label %231

191:                                              ; preds = %187
  %192 = load %struct.device*, %struct.device** %21, align 8
  %193 = load i32, i32* %23, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %194
  %196 = load %struct.rsnd_mod*, %struct.rsnd_mod** %195, align 8
  %197 = icmp ne %struct.rsnd_mod* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = load i32, i32* %23, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %200
  %202 = load %struct.rsnd_mod*, %struct.rsnd_mod** %201, align 8
  br label %204

203:                                              ; preds = %191
  br label %204

204:                                              ; preds = %203, %198
  %205 = phi %struct.rsnd_mod* [ %202, %198 ], [ @mem, %203 ]
  %206 = call i32 @rsnd_mod_name(%struct.rsnd_mod* %205)
  %207 = load i32, i32* %23, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %208
  %210 = load %struct.rsnd_mod*, %struct.rsnd_mod** %209, align 8
  %211 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %9, align 8
  %212 = load %struct.rsnd_mod*, %struct.rsnd_mod** %211, align 8
  %213 = icmp eq %struct.rsnd_mod* %210, %212
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  br label %225

215:                                              ; preds = %204
  %216 = load i32, i32* %23, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.rsnd_mod*, %struct.rsnd_mod** %38, i64 %217
  %219 = load %struct.rsnd_mod*, %struct.rsnd_mod** %218, align 8
  %220 = load %struct.rsnd_mod**, %struct.rsnd_mod*** %10, align 8
  %221 = load %struct.rsnd_mod*, %struct.rsnd_mod** %220, align 8
  %222 = icmp eq %struct.rsnd_mod* %219, %221
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  br label %225

225:                                              ; preds = %215, %214
  %226 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %214 ], [ %224, %215 ]
  %227 = call i32 (%struct.device*, i8*, i32, ...) @dev_dbg(%struct.device* %192, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %206, i8* %226)
  br label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %23, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %23, align 4
  br label %187

231:                                              ; preds = %187
  store i32 0, i32* %26, align 4
  br label %232

232:                                              ; preds = %231, %63
  %233 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load i32, i32* %26, align 4
  switch i32 %234, label %236 [
    i32 0, label %235
    i32 1, label %235
  ]

235:                                              ; preds = %232, %232
  ret void

236:                                              ; preds = %232
  unreachable
}

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_src(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ctu(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_mix(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_dvc(%struct.rsnd_dai_stream*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.rsnd_priv* @rsnd_mod_to_priv(%struct.rsnd_mod*) #1

declare dso_local %struct.device* @rsnd_priv_to_dev(%struct.rsnd_priv*) #1

declare dso_local i64 @rsnd_ssiu_of_node(%struct.rsnd_priv*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ssiu(%struct.rsnd_dai_stream*) #1

declare dso_local %struct.rsnd_mod* @rsnd_io_to_mod_ssi(%struct.rsnd_dai_stream*) #1

declare dso_local i32 @rsnd_io_to_mod(%struct.rsnd_dai_stream*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @rsnd_mod_name(%struct.rsnd_mod*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
