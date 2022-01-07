; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_bpf_load.c_load_elf_maps_section.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_bpf_load.c_load_elf_maps_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_map_data = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64, i32 }
%struct.bpf_load_map_def = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to get Elf_Data from maps section %d\0A\00", align 1
@MAX_MAPS = common dso_local global i32 0, align 4
@cmp_symbols = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"strdup(%s): %s(%d)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_map_data*, i32, i32*, %struct.TYPE_11__*, i32)* @load_elf_maps_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_elf_maps_section(%struct.bpf_map_data* %0, i32 %1, i32* %2, %struct.TYPE_11__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bpf_map_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_10__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.bpf_load_map_def*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store %struct.bpf_map_data* %0, %struct.bpf_map_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %235

31:                                               ; preds = %5
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %235

37:                                               ; preds = %31
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32* @elf_getscn(i32* %38, i32 %39)
  store i32* %40, i32** %19, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32*, i32** %19, align 8
  %45 = call %struct.TYPE_11__* @elf_getdata(i32* %44, i32* null)
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %15, align 8
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32*, i32** %19, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %51 = icmp ne %struct.TYPE_11__* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %8, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %235

57:                                               ; preds = %49
  %58 = load i32, i32* @MAX_MAPS, align 4
  %59 = add nsw i32 %58, 1
  %60 = call %struct.TYPE_10__* @calloc(i32 %59, i32 24)
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %18, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %61

61:                                               ; preds = %99, %57
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = udiv i64 %67, 24
  %69 = icmp ult i64 %63, %68
  br i1 %69, label %70, label %102

70:                                               ; preds = %61
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @MAX_MAPS, align 4
  %73 = add nsw i32 %72, 1
  %74 = icmp slt i32 %71, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %80 = load i32, i32* %17, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %81
  %83 = call i32 @gelf_getsym(%struct.TYPE_11__* %77, i32 %78, %struct.TYPE_10__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %70
  br label %99

86:                                               ; preds = %70
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %99

96:                                               ; preds = %86
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %17, align 4
  br label %99

99:                                               ; preds = %96, %95, %85
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  br label %61

102:                                              ; preds = %61
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @cmp_symbols, align 4
  %106 = call i32 @qsort(%struct.TYPE_10__* %103, i32 %104, i32 24, i32 %105)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sdiv i32 %109, %110
  store i32 %111, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %13, align 4
  br label %123

117:                                              ; preds = %102
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i32 1, i32* %14, align 4
  br label %122

122:                                              ; preds = %121, %117
  br label %123

123:                                              ; preds = %122, %115
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %228, %123
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %231

128:                                              ; preds = %124
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @elf_strptr(i32* %129, i32 %130, i32 %136)
  store i8* %137, i8** %24, align 8
  %138 = load i8*, i8** %24, align 8
  %139 = call i32 @strdup(i8* %138)
  %140 = load %struct.bpf_map_data*, %struct.bpf_map_data** %7, align 8
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %140, i64 %142
  %144 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %143, i32 0, i32 2
  store i32 %139, i32* %144, align 4
  %145 = load %struct.bpf_map_data*, %struct.bpf_map_data** %7, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %145, i64 %147
  %149 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %128
  %153 = load i8*, i8** %24, align 8
  %154 = load i32, i32* @errno, align 4
  %155 = call i8* @strerror(i32 %154)
  %156 = load i32, i32* @errno, align 4
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %153, i8* %155, i32 %156)
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %159 = call i32 @free(%struct.TYPE_10__* %158)
  %160 = load i32, i32* @errno, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %6, align 4
  br label %235

162:                                              ; preds = %128
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %25, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %25, align 8
  %173 = add i64 %171, %172
  %174 = inttoptr i64 %173 to %struct.bpf_load_map_def*
  store %struct.bpf_load_map_def* %174, %struct.bpf_load_map_def** %21, align 8
  %175 = load i64, i64* %25, align 8
  %176 = load %struct.bpf_map_data*, %struct.bpf_map_data** %7, align 8
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %176, i64 %178
  %180 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %179, i32 0, i32 0
  store i64 %175, i64* %180, align 8
  %181 = load %struct.bpf_map_data*, %struct.bpf_map_data** %7, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %181, i64 %183
  %185 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %184, i32 0, i32 1
  %186 = call i32 @memset(i32* %185, i32 0, i32 4)
  %187 = load %struct.bpf_map_data*, %struct.bpf_map_data** %7, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %187, i64 %189
  %191 = getelementptr inbounds %struct.bpf_map_data, %struct.bpf_map_data* %190, i32 0, i32 1
  %192 = load %struct.bpf_load_map_def*, %struct.bpf_load_map_def** %21, align 8
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @memcpy(i32* %191, %struct.bpf_load_map_def* %192, i32 %193)
  %195 = load i32, i32* %14, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %227

197:                                              ; preds = %162
  %198 = load %struct.bpf_load_map_def*, %struct.bpf_load_map_def** %21, align 8
  %199 = bitcast %struct.bpf_load_map_def* %198 to i8*
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  store i8* %202, i8** %22, align 8
  %203 = load %struct.bpf_load_map_def*, %struct.bpf_load_map_def** %21, align 8
  %204 = bitcast %struct.bpf_load_map_def* %203 to i8*
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  store i8* %207, i8** %23, align 8
  br label %208

208:                                              ; preds = %223, %197
  %209 = load i8*, i8** %22, align 8
  %210 = load i8*, i8** %23, align 8
  %211 = icmp ult i8* %209, %210
  br i1 %211, label %212, label %226

212:                                              ; preds = %208
  %213 = load i8*, i8** %22, align 8
  %214 = load i8, i8* %213, align 1
  %215 = zext i8 %214 to i32
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %212
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %219 = call i32 @free(%struct.TYPE_10__* %218)
  %220 = load i32, i32* @EFBIG, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %6, align 4
  br label %235

222:                                              ; preds = %212
  br label %223

223:                                              ; preds = %222
  %224 = load i8*, i8** %22, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %22, align 8
  br label %208

226:                                              ; preds = %208
  br label %227

227:                                              ; preds = %226, %162
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %16, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %16, align 4
  br label %124

231:                                              ; preds = %124
  %232 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %233 = call i32 @free(%struct.TYPE_10__* %232)
  %234 = load i32, i32* %17, align 4
  store i32 %234, i32* %6, align 4
  br label %235

235:                                              ; preds = %231, %217, %152, %52, %34, %28
  %236 = load i32, i32* %6, align 4
  ret i32 %236
}

declare dso_local i32* @elf_getscn(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @elf_getdata(i32*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_10__* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @gelf_getsym(%struct.TYPE_11__*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @qsort(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.bpf_load_map_def*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
