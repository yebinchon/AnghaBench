; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__parse_objdump_line.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__parse_objdump_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32 }
%struct.annotate_args = type { i32, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.symbol*, %struct.map* }
%struct.map = type { i32 }
%struct.annotation = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.disasm_line = type { i32, %struct.TYPE_11__, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32, %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.addr_map_symbol = type { i8*, i64, %struct.TYPE_12__*, %struct.map* }

@file_lineno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, i32*, %struct.annotate_args*, i32*)* @symbol__parse_objdump_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symbol__parse_objdump_line(%struct.symbol* %0, i32* %1, %struct.annotate_args* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.annotate_args*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.map*, align 8
  %11 = alloca %struct.annotation*, align 8
  %12 = alloca %struct.disasm_line*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x %struct.TYPE_14__], align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.addr_map_symbol, align 8
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.annotate_args* %2, %struct.annotate_args** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load %struct.annotate_args*, %struct.annotate_args** %8, align 8
  %25 = getelementptr inbounds %struct.annotate_args, %struct.annotate_args* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.map*, %struct.map** %26, align 8
  store %struct.map* %27, %struct.map** %10, align 8
  %28 = load %struct.symbol*, %struct.symbol** %6, align 8
  %29 = call %struct.annotation* @symbol__annotation(%struct.symbol* %28)
  store %struct.annotation* %29, %struct.annotation** %11, align 8
  store i8* null, i8** %13, align 8
  store i32 -1, i32* %19, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i64 @getline(i8** %13, i64* %17, i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %217

34:                                               ; preds = %4
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i32 -1, i32* %5, align 4
  br label %217

38:                                               ; preds = %34
  store i32 -1, i32* %18, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = call i8* @strim(i8* %39)
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %20, i64 0, i64 0
  %43 = call i64 @regexec(i32* @file_lineno, i8* %41, i32 2, %struct.TYPE_14__* %42, i32 0)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %38
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds [2 x %struct.TYPE_14__], [2 x %struct.TYPE_14__]* %20, i64 0, i64 1
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = call i32 @atoi(i8* %51)
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  store i32 0, i32* %5, align 4
  br label %217

54:                                               ; preds = %38
  %55 = load i8*, i8** %14, align 8
  %56 = call i8* @skip_spaces(i8* %55)
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %54
  %61 = load i8*, i8** %15, align 8
  %62 = call i32 @strtoull(i8* %61, i8** %16, i32 16)
  store i32 %62, i32* %18, align 4
  %63 = load i8*, i8** %16, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 58
  br i1 %66, label %77, label %67

67:                                               ; preds = %60
  %68 = load i8*, i8** %15, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %16, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %67, %60
  store i32 -1, i32* %18, align 4
  br label %78

78:                                               ; preds = %77, %71
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, -1
  br i1 %81, label %82, label %110

82:                                               ; preds = %79
  %83 = load %struct.map*, %struct.map** %10, align 8
  %84 = load %struct.symbol*, %struct.symbol** %6, align 8
  %85 = getelementptr inbounds %struct.symbol, %struct.symbol* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @map__rip_2objdump(%struct.map* %83, i32 %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %21, align 4
  %89 = load %struct.map*, %struct.map** %10, align 8
  %90 = load %struct.symbol*, %struct.symbol** %6, align 8
  %91 = getelementptr inbounds %struct.symbol, %struct.symbol* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @map__rip_2objdump(%struct.map* %89, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %21, align 4
  %97 = sub nsw i32 %95, %96
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %21, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %82
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %22, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %101, %82
  store i32 -1, i32* %19, align 4
  br label %109

106:                                              ; preds = %101
  %107 = load i8*, i8** %16, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  store i8* %108, i8** %14, align 8
  br label %109

109:                                              ; preds = %106, %105
  br label %110

110:                                              ; preds = %109, %79
  %111 = load i32, i32* %19, align 4
  %112 = load %struct.annotate_args*, %struct.annotate_args** %8, align 8
  %113 = getelementptr inbounds %struct.annotate_args, %struct.annotate_args* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load %struct.annotate_args*, %struct.annotate_args** %8, align 8
  %116 = getelementptr inbounds %struct.annotate_args, %struct.annotate_args* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.annotate_args*, %struct.annotate_args** %8, align 8
  %120 = getelementptr inbounds %struct.annotate_args, %struct.annotate_args* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.symbol*, %struct.symbol** %6, align 8
  %122 = load %struct.annotate_args*, %struct.annotate_args** %8, align 8
  %123 = getelementptr inbounds %struct.annotate_args, %struct.annotate_args* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  store %struct.symbol* %121, %struct.symbol** %124, align 8
  %125 = load %struct.annotate_args*, %struct.annotate_args** %8, align 8
  %126 = call %struct.disasm_line* @disasm_line__new(%struct.annotate_args* %125)
  store %struct.disasm_line* %126, %struct.disasm_line** %12, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %133 = icmp eq %struct.disasm_line* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %110
  store i32 -1, i32* %5, align 4
  br label %217

135:                                              ; preds = %110
  %136 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %137 = call i32 @disasm_line__has_local_offset(%struct.disasm_line* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %162, label %139

139:                                              ; preds = %135
  %140 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %141 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.map*, %struct.map** %10, align 8
  %146 = load %struct.symbol*, %struct.symbol** %6, align 8
  %147 = getelementptr inbounds %struct.symbol, %struct.symbol* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i8* @map__rip_2objdump(%struct.map* %145, i32 %148)
  %150 = ptrtoint i8* %144 to i64
  %151 = ptrtoint i8* %149 to i64
  %152 = sub i64 %150, %151
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %155 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  store i8* %153, i8** %157, align 8
  %158 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %159 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  store i32 1, i32* %161, align 8
  br label %162

162:                                              ; preds = %139, %135
  %163 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %164 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %209

168:                                              ; preds = %162
  %169 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %170 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %169, i32 0, i32 2
  %171 = call i64 @ins__is_call(%struct.TYPE_15__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %209

173:                                              ; preds = %168
  %174 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %175 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 2
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %177, align 8
  %179 = icmp ne %struct.TYPE_12__* %178, null
  br i1 %179, label %209, label %180

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %23, i32 0, i32 0
  %182 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %183 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  store i8* %186, i8** %181, align 8
  %187 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %23, i32 0, i32 1
  store i64 0, i64* %187, align 8
  %188 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %23, i32 0, i32 2
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %188, align 8
  %189 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %23, i32 0, i32 3
  %190 = load %struct.map*, %struct.map** %10, align 8
  store %struct.map* %190, %struct.map** %189, align 8
  %191 = call i32 @map_groups__find_ams(%struct.addr_map_symbol* %23)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %208, label %193

193:                                              ; preds = %180
  %194 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %23, i32 0, i32 2
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %23, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %197, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %193
  %202 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %23, i32 0, i32 2
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %202, align 8
  %204 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %205 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 2
  store %struct.TYPE_12__* %203, %struct.TYPE_12__** %207, align 8
  br label %208

208:                                              ; preds = %201, %193, %180
  br label %209

209:                                              ; preds = %208, %173, %168, %162
  %210 = load %struct.disasm_line*, %struct.disasm_line** %12, align 8
  %211 = getelementptr inbounds %struct.disasm_line, %struct.disasm_line* %210, i32 0, i32 0
  %212 = load %struct.annotation*, %struct.annotation** %11, align 8
  %213 = getelementptr inbounds %struct.annotation, %struct.annotation* %212, i32 0, i32 0
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  %216 = call i32 @annotation_line__add(i32* %211, i32* %215)
  store i32 0, i32* %5, align 4
  br label %217

217:                                              ; preds = %209, %134, %45, %37, %33
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @strim(i8*) #1

declare dso_local i64 @regexec(i32*, i8*, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i8* @map__rip_2objdump(%struct.map*, i32) #1

declare dso_local %struct.disasm_line* @disasm_line__new(%struct.annotate_args*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @disasm_line__has_local_offset(%struct.disasm_line*) #1

declare dso_local i64 @ins__is_call(%struct.TYPE_15__*) #1

declare dso_local i32 @map_groups__find_ams(%struct.addr_map_symbol*) #1

declare dso_local i32 @annotation_line__add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
