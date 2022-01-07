; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_elf.c_elf_create_section.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_elf.c_elf_create_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.section = type { i64, i32, %struct.TYPE_6__, i64, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.section* }
%struct.elf = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"elf_newscn\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"elf_newdata\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"gelf_getshdr\00", align 1
@SHT_PROGBITS = common dso_local global i32 0, align 4
@SHF_ALLOC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c".shstrtab\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c".strtab\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"can't find .shstrtab or .strtab section\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"elf_getscn\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.section* @elf_create_section(%struct.elf* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.section*, align 8
  %6 = alloca %struct.elf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.section*, align 8
  %11 = alloca %struct.section*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store %struct.elf* %0, %struct.elf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %15, %17
  store i64 %18, i64* %12, align 8
  %19 = call i8* @malloc(i64 104)
  %20 = bitcast i8* %19 to %struct.section*
  store %struct.section* %20, %struct.section** %10, align 8
  %21 = load %struct.section*, %struct.section** %10, align 8
  %22 = icmp ne %struct.section* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.section* null, %struct.section** %5, align 8
  br label %212

25:                                               ; preds = %4
  %26 = load %struct.section*, %struct.section** %10, align 8
  %27 = call i32 @memset(%struct.section* %26, i32 0, i64 104)
  %28 = load %struct.section*, %struct.section** %10, align 8
  %29 = getelementptr inbounds %struct.section, %struct.section* %28, i32 0, i32 10
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.section*, %struct.section** %10, align 8
  %32 = getelementptr inbounds %struct.section, %struct.section* %31, i32 0, i32 9
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.section*, %struct.section** %10, align 8
  %35 = getelementptr inbounds %struct.section, %struct.section* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @hash_init(i32 %36)
  %38 = load %struct.section*, %struct.section** %10, align 8
  %39 = getelementptr inbounds %struct.section, %struct.section* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hash_init(i32 %40)
  %42 = load %struct.section*, %struct.section** %10, align 8
  %43 = getelementptr inbounds %struct.section, %struct.section* %42, i32 0, i32 6
  %44 = load %struct.elf*, %struct.elf** %6, align 8
  %45 = getelementptr inbounds %struct.elf, %struct.elf* %44, i32 0, i32 1
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  %47 = load %struct.elf*, %struct.elf** %6, align 8
  %48 = getelementptr inbounds %struct.elf, %struct.elf* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32* @elf_newscn(i32 %49)
  store i32* %50, i32** %13, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %25
  %54 = call i32 @WARN_ELF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.section* null, %struct.section** %5, align 8
  br label %212

55:                                               ; preds = %25
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strdup(i8* %56)
  %58 = load %struct.section*, %struct.section** %10, align 8
  %59 = getelementptr inbounds %struct.section, %struct.section* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load %struct.section*, %struct.section** %10, align 8
  %61 = getelementptr inbounds %struct.section, %struct.section* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %55
  %65 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.section* null, %struct.section** %5, align 8
  br label %212

66:                                               ; preds = %55
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @elf_ndxscn(i32* %67)
  %69 = load %struct.section*, %struct.section** %10, align 8
  %70 = getelementptr inbounds %struct.section, %struct.section* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.section*, %struct.section** %10, align 8
  %73 = getelementptr inbounds %struct.section, %struct.section* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load %struct.section*, %struct.section** %10, align 8
  %75 = getelementptr inbounds %struct.section, %struct.section* %74, i32 0, i32 1
  store i32 1, i32* %75, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i8* @elf_newdata(i32* %76)
  %78 = bitcast i8* %77 to %struct.TYPE_4__*
  %79 = load %struct.section*, %struct.section** %10, align 8
  %80 = getelementptr inbounds %struct.section, %struct.section* %79, i32 0, i32 5
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %80, align 8
  %81 = load %struct.section*, %struct.section** %10, align 8
  %82 = getelementptr inbounds %struct.section, %struct.section* %81, i32 0, i32 5
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = icmp ne %struct.TYPE_4__* %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %66
  %86 = call i32 @WARN_ELF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store %struct.section* null, %struct.section** %5, align 8
  br label %212

87:                                               ; preds = %66
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.section*, %struct.section** %10, align 8
  %90 = getelementptr inbounds %struct.section, %struct.section* %89, i32 0, i32 5
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i64 %88, i64* %92, align 8
  %93 = load %struct.section*, %struct.section** %10, align 8
  %94 = getelementptr inbounds %struct.section, %struct.section* %93, i32 0, i32 5
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 8
  %97 = load i64, i64* %12, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %123

99:                                               ; preds = %87
  %100 = load i64, i64* %12, align 8
  %101 = call i8* @malloc(i64 %100)
  %102 = bitcast i8* %101 to %struct.section*
  %103 = load %struct.section*, %struct.section** %10, align 8
  %104 = getelementptr inbounds %struct.section, %struct.section* %103, i32 0, i32 5
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  store %struct.section* %102, %struct.section** %106, align 8
  %107 = load %struct.section*, %struct.section** %10, align 8
  %108 = getelementptr inbounds %struct.section, %struct.section* %107, i32 0, i32 5
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  %111 = load %struct.section*, %struct.section** %110, align 8
  %112 = icmp ne %struct.section* %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %99
  %114 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.section* null, %struct.section** %5, align 8
  br label %212

115:                                              ; preds = %99
  %116 = load %struct.section*, %struct.section** %10, align 8
  %117 = getelementptr inbounds %struct.section, %struct.section* %116, i32 0, i32 5
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load %struct.section*, %struct.section** %119, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call i32 @memset(%struct.section* %120, i32 0, i64 %121)
  br label %123

123:                                              ; preds = %115, %87
  %124 = load i32*, i32** %13, align 8
  %125 = load %struct.section*, %struct.section** %10, align 8
  %126 = getelementptr inbounds %struct.section, %struct.section* %125, i32 0, i32 2
  %127 = call i32 @gelf_getshdr(i32* %124, %struct.TYPE_6__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = call i32 @WARN_ELF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store %struct.section* null, %struct.section** %5, align 8
  br label %212

131:                                              ; preds = %123
  %132 = load i64, i64* %12, align 8
  %133 = load %struct.section*, %struct.section** %10, align 8
  %134 = getelementptr inbounds %struct.section, %struct.section* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i64 %132, i64* %135, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load %struct.section*, %struct.section** %10, align 8
  %138 = getelementptr inbounds %struct.section, %struct.section* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  store i64 %136, i64* %139, align 8
  %140 = load i32, i32* @SHT_PROGBITS, align 4
  %141 = load %struct.section*, %struct.section** %10, align 8
  %142 = getelementptr inbounds %struct.section, %struct.section* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 5
  store i32 %140, i32* %143, align 4
  %144 = load %struct.section*, %struct.section** %10, align 8
  %145 = getelementptr inbounds %struct.section, %struct.section* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  store i32 1, i32* %146, align 8
  %147 = load i32, i32* @SHF_ALLOC, align 4
  %148 = load %struct.section*, %struct.section** %10, align 8
  %149 = getelementptr inbounds %struct.section, %struct.section* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 4
  store i32 %147, i32* %150, align 8
  %151 = load %struct.elf*, %struct.elf** %6, align 8
  %152 = call %struct.section* @find_section_by_name(%struct.elf* %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store %struct.section* %152, %struct.section** %11, align 8
  %153 = load %struct.section*, %struct.section** %11, align 8
  %154 = icmp ne %struct.section* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %131
  %156 = load %struct.elf*, %struct.elf** %6, align 8
  %157 = call %struct.section* @find_section_by_name(%struct.elf* %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store %struct.section* %157, %struct.section** %11, align 8
  br label %158

158:                                              ; preds = %155, %131
  %159 = load %struct.section*, %struct.section** %11, align 8
  %160 = icmp ne %struct.section* %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = call i32 @WARN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  store %struct.section* null, %struct.section** %5, align 8
  br label %212

163:                                              ; preds = %158
  %164 = load %struct.elf*, %struct.elf** %6, align 8
  %165 = getelementptr inbounds %struct.elf, %struct.elf* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.section*, %struct.section** %11, align 8
  %168 = getelementptr inbounds %struct.section, %struct.section* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32* @elf_getscn(i32 %166, i32 %169)
  store i32* %170, i32** %13, align 8
  %171 = load i32*, i32** %13, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %163
  %174 = call i32 @WARN_ELF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  store %struct.section* null, %struct.section** %5, align 8
  br label %212

175:                                              ; preds = %163
  %176 = load i32*, i32** %13, align 8
  %177 = call i8* @elf_newdata(i32* %176)
  %178 = bitcast i8* %177 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %178, %struct.TYPE_5__** %14, align 8
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %180 = icmp ne %struct.TYPE_5__* %179, null
  br i1 %180, label %183, label %181

181:                                              ; preds = %175
  %182 = call i32 @WARN_ELF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store %struct.section* null, %struct.section** %5, align 8
  br label %212

183:                                              ; preds = %175
  %184 = load %struct.section*, %struct.section** %10, align 8
  %185 = getelementptr inbounds %struct.section, %struct.section* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  %189 = load i8*, i8** %7, align 8
  %190 = call i64 @strlen(i8* %189)
  %191 = add nsw i64 %190, 1
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  store i32 1, i32* %195, align 8
  %196 = load %struct.section*, %struct.section** %11, align 8
  %197 = getelementptr inbounds %struct.section, %struct.section* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.section*, %struct.section** %10, align 8
  %200 = getelementptr inbounds %struct.section, %struct.section* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 3
  store i64 %198, i64* %201, align 8
  %202 = load i8*, i8** %7, align 8
  %203 = call i64 @strlen(i8* %202)
  %204 = add nsw i64 %203, 1
  %205 = load %struct.section*, %struct.section** %11, align 8
  %206 = getelementptr inbounds %struct.section, %struct.section* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = add i64 %207, %204
  store i64 %208, i64* %206, align 8
  %209 = load %struct.section*, %struct.section** %11, align 8
  %210 = getelementptr inbounds %struct.section, %struct.section* %209, i32 0, i32 1
  store i32 1, i32* %210, align 8
  %211 = load %struct.section*, %struct.section** %10, align 8
  store %struct.section* %211, %struct.section** %5, align 8
  br label %212

212:                                              ; preds = %183, %181, %173, %161, %129, %113, %85, %64, %53, %23
  %213 = load %struct.section*, %struct.section** %5, align 8
  ret %struct.section* %213
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.section*, i32, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32* @elf_newscn(i32) #1

declare dso_local i32 @WARN_ELF(i8*) #1

declare dso_local i64 @strdup(i8*) #1

declare dso_local i32 @elf_ndxscn(i32*) #1

declare dso_local i8* @elf_newdata(i32*) #1

declare dso_local i32 @gelf_getshdr(i32*, %struct.TYPE_6__*) #1

declare dso_local %struct.section* @find_section_by_name(%struct.elf*, i8*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32* @elf_getscn(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
