; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_parse_elf.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_parse_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i32, i64, i64, i64, i32, i32, i32, i32, i32, i64*, i64*, %struct.TYPE_5__*, %struct.TYPE_5__*, i8*, i8*, i8*, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i64*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@ignore_missing_files = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: %s (ignored)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@EI_MAG0 = common dso_local global i64 0, align 8
@ELFMAG0 = common dso_local global i64 0, align 8
@EI_MAG1 = common dso_local global i64 0, align 8
@ELFMAG1 = common dso_local global i64 0, align 8
@EI_MAG2 = common dso_local global i64 0, align 8
@ELFMAG2 = common dso_local global i64 0, align 8
@EI_MAG3 = common dso_local global i64 0, align 8
@ELFMAG3 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"section header offset=%lu in file '%s' is bigger than filesize=%lu\0A\00", align 1
@SHN_UNDEF = common dso_local global i64 0, align 8
@SHN_XINDEX = common dso_local global i64 0, align 8
@SHT_NOBITS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"%s is truncated. sechdrs[i].sh_offset=%lu > sizeof(*hrd)=%zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".modinfo\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%s has NOBITS .modinfo\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"__ksymtab\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"__ksymtab_unused\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"__ksymtab_gpl\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"__ksymtab_unused_gpl\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"__ksymtab_gpl_future\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"__ksymtab_strings\00", align 1
@SHT_SYMTAB = common dso_local global i64 0, align 8
@SHT_SYMTAB_SHNDX = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [19 x i8] c"%s has no symtab?\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"%s: SYMTAB_SHNDX has bad sh_link: %u!=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_info*, i8*)* @parse_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_elf(%struct.elf_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  store %struct.elf_info* %0, %struct.elf_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %19 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %18, i32 0, i32 0
  %20 = call %struct.TYPE_7__* @grab_file(i8* %17, i32* %19)
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %7, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = icmp ne %struct.TYPE_7__* %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %2
  %24 = load i64, i64* @ignore_missing_files, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* @errno, align 4
  %30 = call i8* @strerror(i32 %29)
  %31 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %30)
  store i32 0, i32* %3, align 4
  br label %745

32:                                               ; preds = %23
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @perror(i8* %33)
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %39 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %38, i32 0, i32 17
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %41 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 112
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %745

46:                                               ; preds = %36
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* @EI_MAG0, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ELFMAG0, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %82, label %55

55:                                               ; preds = %46
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @EI_MAG1, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ELFMAG1, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %82, label %64

64:                                               ; preds = %55
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @EI_MAG2, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ELFMAG2, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %64
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i64, i64* @EI_MAG3, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ELFMAG3, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73, %64, %55, %46
  store i32 0, i32* %3, align 4
  br label %745

83:                                               ; preds = %73
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @TO_NATIVE(i64 %86)
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @TO_NATIVE(i64 %93)
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @TO_NATIVE(i64 %100)
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @TO_NATIVE(i64 %107)
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @TO_NATIVE(i64 %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 5
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = call i8* @TO_NATIVE(i64 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 6
  store i64 %123, i64* %125, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = call i8* @TO_NATIVE(i64 %128)
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 7
  store i64 %130, i64* %132, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = call i8* @TO_NATIVE(i64 %135)
  %137 = ptrtoint i8* %136 to i64
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 8
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 9
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @TO_NATIVE(i64 %142)
  %144 = ptrtoint i8* %143 to i64
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 9
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 10
  %149 = load i64, i64* %148, align 8
  %150 = call i8* @TO_NATIVE(i64 %149)
  %151 = ptrtoint i8* %150 to i64
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 10
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 11
  %156 = load i64, i64* %155, align 8
  %157 = call i8* @TO_NATIVE(i64 %156)
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 11
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 12
  %163 = load i64, i64* %162, align 8
  %164 = call i8* @TO_NATIVE(i64 %163)
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 12
  store i64 %165, i64* %167, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 13
  %170 = load i64, i64* %169, align 8
  %171 = call i8* @TO_NATIVE(i64 %170)
  %172 = ptrtoint i8* %171 to i64
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 13
  store i64 %172, i64* %174, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %176 = bitcast %struct.TYPE_7__* %175 to i8*
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 6
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr i8, i8* %176, i64 %179
  %181 = bitcast i8* %180 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %181, %struct.TYPE_6__** %8, align 8
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %183 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %184 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %183, i32 0, i32 16
  store %struct.TYPE_6__* %182, %struct.TYPE_6__** %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %189 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = icmp sgt i64 %187, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %83
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 6
  %196 = load i64, i64* %195, align 8
  %197 = load i8*, i8** %5, align 8
  %198 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %199 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %196, i8* %197, i32 %200)
  store i32 0, i32* %3, align 4
  br label %745

202:                                              ; preds = %83
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 12
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @SHN_UNDEF, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %217

208:                                              ; preds = %202
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i64 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i8* @TO_NATIVE(i64 %212)
  %214 = ptrtoint i8* %213 to i64
  %215 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %216 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  br label %223

217:                                              ; preds = %202
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 12
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %222 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %221, i32 0, i32 1
  store i64 %220, i64* %222, align 8
  br label %223

223:                                              ; preds = %217, %208
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 13
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @SHN_XINDEX, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %223
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = call i8* @TO_NATIVE(i64 %233)
  %235 = ptrtoint i8* %234 to i64
  %236 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %237 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %236, i32 0, i32 2
  store i64 %235, i64* %237, align 8
  br label %244

238:                                              ; preds = %223
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 13
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %243 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %242, i32 0, i32 2
  store i64 %241, i64* %243, align 8
  br label %244

244:                                              ; preds = %238, %229
  store i32 0, i32* %6, align 4
  br label %245

245:                                              ; preds = %383, %244
  %246 = load i32, i32* %6, align 4
  %247 = zext i32 %246 to i64
  %248 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %249 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = icmp slt i64 %247, %250
  br i1 %251, label %252, label %386

252:                                              ; preds = %245
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %254 = load i32, i32* %6, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = call i8* @TO_NATIVE(i64 %258)
  %260 = ptrtoint i8* %259 to i64
  %261 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %262 = load i32, i32* %6, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 2
  store i64 %260, i64* %265, align 8
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %267 = load i32, i32* %6, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = call i8* @TO_NATIVE(i64 %271)
  %273 = ptrtoint i8* %272 to i64
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %275 = load i32, i32* %6, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 3
  store i64 %273, i64* %278, align 8
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %280 = load i32, i32* %6, align 4
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = call i8* @TO_NATIVE(i64 %284)
  %286 = ptrtoint i8* %285 to i64
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %288 = load i32, i32* %6, align 4
  %289 = zext i32 %288 to i64
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 4
  store i64 %286, i64* %291, align 8
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %293 = load i32, i32* %6, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 5
  %297 = load i64, i64* %296, align 8
  %298 = call i8* @TO_NATIVE(i64 %297)
  %299 = ptrtoint i8* %298 to i64
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %301 = load i32, i32* %6, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 5
  store i64 %299, i64* %304, align 8
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %306 = load i32, i32* %6, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 6
  %310 = load i64, i64* %309, align 8
  %311 = call i8* @TO_NATIVE(i64 %310)
  %312 = ptrtoint i8* %311 to i64
  %313 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %314 = load i32, i32* %6, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 6
  store i64 %312, i64* %317, align 8
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %319 = load i32, i32* %6, align 4
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = call i8* @TO_NATIVE(i64 %323)
  %325 = ptrtoint i8* %324 to i64
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %327 = load i32, i32* %6, align 4
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %329, i32 0, i32 0
  store i64 %325, i64* %330, align 8
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %332 = load i32, i32* %6, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = call i8* @TO_NATIVE(i64 %336)
  %338 = ptrtoint i8* %337 to i64
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %340 = load i32, i32* %6, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 1
  store i64 %338, i64* %343, align 8
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %345 = load i32, i32* %6, align 4
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i64 %346
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 7
  %349 = load i64, i64* %348, align 8
  %350 = call i8* @TO_NATIVE(i64 %349)
  %351 = ptrtoint i8* %350 to i64
  %352 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %353 = load i32, i32* %6, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %352, i64 %354
  %356 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %355, i32 0, i32 7
  store i64 %351, i64* %356, align 8
  %357 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %358 = load i32, i32* %6, align 4
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 8
  %362 = load i64, i64* %361, align 8
  %363 = call i8* @TO_NATIVE(i64 %362)
  %364 = ptrtoint i8* %363 to i64
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %366 = load i32, i32* %6, align 4
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 8
  store i64 %364, i64* %369, align 8
  %370 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %371 = load i32, i32* %6, align 4
  %372 = zext i32 %371 to i64
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i64 %372
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 9
  %375 = load i64, i64* %374, align 8
  %376 = call i8* @TO_NATIVE(i64 %375)
  %377 = ptrtoint i8* %376 to i64
  %378 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %379 = load i32, i32* %6, align 4
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 9
  store i64 %377, i64* %382, align 8
  br label %383

383:                                              ; preds = %252
  %384 = load i32, i32* %6, align 4
  %385 = add i32 %384, 1
  store i32 %385, i32* %6, align 4
  br label %245

386:                                              ; preds = %245
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %388 = bitcast %struct.TYPE_7__* %387 to i8*
  %389 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %390 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %391 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %390, i32 0, i32 2
  %392 = load i64, i64* %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 6
  %395 = load i64, i64* %394, align 8
  %396 = getelementptr i8, i8* %388, i64 %395
  store i8* %396, i8** %10, align 8
  store i32 1, i32* %6, align 4
  br label %397

397:                                              ; preds = %648, %386
  %398 = load i32, i32* %6, align 4
  %399 = zext i32 %398 to i64
  %400 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %401 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = icmp slt i64 %399, %402
  br i1 %403, label %404, label %651

404:                                              ; preds = %397
  %405 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %406 = load i32, i32* %6, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 3
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @SHT_NOBITS, align 8
  %412 = icmp eq i64 %410, %411
  %413 = zext i1 %412 to i32
  store i32 %413, i32* %14, align 4
  %414 = load i32, i32* %14, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %437, label %416

416:                                              ; preds = %404
  %417 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %418 = load i32, i32* %6, align 4
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %420, i32 0, i32 6
  %422 = load i64, i64* %421, align 8
  %423 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %424 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 8
  %426 = sext i32 %425 to i64
  %427 = icmp sgt i64 %422, %426
  br i1 %427, label %428, label %437

428:                                              ; preds = %416
  %429 = load i8*, i8** %5, align 8
  %430 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %431 = load i32, i32* %6, align 4
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %433, i32 0, i32 6
  %435 = load i64, i64* %434, align 8
  %436 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* %429, i64 %435, i64 112)
  store i32 0, i32* %3, align 4
  br label %745

437:                                              ; preds = %416, %404
  %438 = load i8*, i8** %10, align 8
  %439 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %440 = load i32, i32* %6, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = getelementptr inbounds i8, i8* %438, i64 %444
  store i8* %445, i8** %13, align 8
  %446 = load i8*, i8** %13, align 8
  %447 = call i64 @strcmp(i8* %446, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %448 = icmp eq i64 %447, 0
  br i1 %448, label %449, label %475

449:                                              ; preds = %437
  %450 = load i32, i32* %14, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %455

452:                                              ; preds = %449
  %453 = load i8*, i8** %5, align 8
  %454 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %453)
  br label %455

455:                                              ; preds = %452, %449
  %456 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %457 = bitcast %struct.TYPE_7__* %456 to i8*
  %458 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %459 = load i32, i32* %6, align 4
  %460 = zext i32 %459 to i64
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %458, i64 %460
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 6
  %463 = load i64, i64* %462, align 8
  %464 = getelementptr i8, i8* %457, i64 %463
  %465 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %466 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %465, i32 0, i32 15
  store i8* %464, i8** %466, align 8
  %467 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %468 = load i32, i32* %6, align 4
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %474 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %473, i32 0, i32 3
  store i64 %472, i64* %474, align 8
  br label %545

475:                                              ; preds = %437
  %476 = load i8*, i8** %13, align 8
  %477 = call i64 @strcmp(i8* %476, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %478 = icmp eq i64 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %475
  %480 = load i32, i32* %6, align 4
  %481 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %482 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %481, i32 0, i32 4
  store i32 %480, i32* %482, align 8
  br label %544

483:                                              ; preds = %475
  %484 = load i8*, i8** %13, align 8
  %485 = call i64 @strcmp(i8* %484, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %486 = icmp eq i64 %485, 0
  br i1 %486, label %487, label %491

487:                                              ; preds = %483
  %488 = load i32, i32* %6, align 4
  %489 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %490 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %489, i32 0, i32 5
  store i32 %488, i32* %490, align 4
  br label %543

491:                                              ; preds = %483
  %492 = load i8*, i8** %13, align 8
  %493 = call i64 @strcmp(i8* %492, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %495, label %499

495:                                              ; preds = %491
  %496 = load i32, i32* %6, align 4
  %497 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %498 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %497, i32 0, i32 6
  store i32 %496, i32* %498, align 8
  br label %542

499:                                              ; preds = %491
  %500 = load i8*, i8** %13, align 8
  %501 = call i64 @strcmp(i8* %500, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %502 = icmp eq i64 %501, 0
  br i1 %502, label %503, label %507

503:                                              ; preds = %499
  %504 = load i32, i32* %6, align 4
  %505 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %506 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %505, i32 0, i32 7
  store i32 %504, i32* %506, align 4
  br label %541

507:                                              ; preds = %499
  %508 = load i8*, i8** %13, align 8
  %509 = call i64 @strcmp(i8* %508, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %510 = icmp eq i64 %509, 0
  br i1 %510, label %511, label %515

511:                                              ; preds = %507
  %512 = load i32, i32* %6, align 4
  %513 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %514 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %513, i32 0, i32 8
  store i32 %512, i32* %514, align 8
  br label %540

515:                                              ; preds = %507
  %516 = load i8*, i8** %13, align 8
  %517 = call i64 @strcmp(i8* %516, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %519, label %539

519:                                              ; preds = %515
  %520 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %521 = bitcast %struct.TYPE_7__* %520 to i8*
  %522 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %523 = load i32, i32* %6, align 4
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %522, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %525, i32 0, i32 6
  %527 = load i64, i64* %526, align 8
  %528 = getelementptr i8, i8* %521, i64 %527
  %529 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %530 = load i32, i32* %6, align 4
  %531 = zext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %532, i32 0, i32 5
  %534 = load i64, i64* %533, align 8
  %535 = sub i64 0, %534
  %536 = getelementptr i8, i8* %528, i64 %535
  %537 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %538 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %537, i32 0, i32 14
  store i8* %536, i8** %538, align 8
  br label %539

539:                                              ; preds = %519, %515
  br label %540

540:                                              ; preds = %539, %511
  br label %541

541:                                              ; preds = %540, %503
  br label %542

542:                                              ; preds = %541, %495
  br label %543

543:                                              ; preds = %542, %487
  br label %544

544:                                              ; preds = %543, %479
  br label %545

545:                                              ; preds = %544, %455
  %546 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %547 = load i32, i32* %6, align 4
  %548 = zext i32 %547 to i64
  %549 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %546, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %549, i32 0, i32 3
  %551 = load i64, i64* %550, align 8
  %552 = load i64, i64* @SHT_SYMTAB, align 8
  %553 = icmp eq i64 %551, %552
  br i1 %553, label %554, label %605

554:                                              ; preds = %545
  %555 = load i32, i32* %6, align 4
  store i32 %555, i32* %11, align 4
  %556 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %557 = bitcast %struct.TYPE_7__* %556 to i8*
  %558 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %559 = load i32, i32* %6, align 4
  %560 = zext i32 %559 to i64
  %561 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %558, i64 %560
  %562 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %561, i32 0, i32 6
  %563 = load i64, i64* %562, align 8
  %564 = getelementptr i8, i8* %557, i64 %563
  %565 = bitcast i8* %564 to %struct.TYPE_5__*
  %566 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %567 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %566, i32 0, i32 12
  store %struct.TYPE_5__* %565, %struct.TYPE_5__** %567, align 8
  %568 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %569 = bitcast %struct.TYPE_7__* %568 to i8*
  %570 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %571 = load i32, i32* %6, align 4
  %572 = zext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %570, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %573, i32 0, i32 6
  %575 = load i64, i64* %574, align 8
  %576 = getelementptr i8, i8* %569, i64 %575
  %577 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %578 = load i32, i32* %6, align 4
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %577, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = getelementptr i8, i8* %576, i64 %582
  %584 = bitcast i8* %583 to %struct.TYPE_5__*
  %585 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %586 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %585, i32 0, i32 11
  store %struct.TYPE_5__* %584, %struct.TYPE_5__** %586, align 8
  %587 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %588 = load i32, i32* %6, align 4
  %589 = zext i32 %588 to i64
  %590 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %587, i64 %589
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %590, i32 0, i32 1
  %592 = load i64, i64* %591, align 8
  %593 = trunc i64 %592 to i32
  store i32 %593, i32* %15, align 4
  %594 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %595 = bitcast %struct.TYPE_7__* %594 to i8*
  %596 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %597 = load i32, i32* %15, align 4
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %596, i64 %598
  %600 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %599, i32 0, i32 6
  %601 = load i64, i64* %600, align 8
  %602 = getelementptr i8, i8* %595, i64 %601
  %603 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %604 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %603, i32 0, i32 13
  store i8* %602, i8** %604, align 8
  br label %605

605:                                              ; preds = %554, %545
  %606 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %607 = load i32, i32* %6, align 4
  %608 = zext i32 %607 to i64
  %609 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %606, i64 %608
  %610 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %609, i32 0, i32 3
  %611 = load i64, i64* %610, align 8
  %612 = load i64, i64* @SHT_SYMTAB_SHNDX, align 8
  %613 = icmp eq i64 %611, %612
  br i1 %613, label %614, label %647

614:                                              ; preds = %605
  %615 = load i32, i32* %6, align 4
  store i32 %615, i32* %12, align 4
  %616 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %617 = bitcast %struct.TYPE_7__* %616 to i8*
  %618 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %619 = load i32, i32* %6, align 4
  %620 = zext i32 %619 to i64
  %621 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %618, i64 %620
  %622 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %621, i32 0, i32 6
  %623 = load i64, i64* %622, align 8
  %624 = getelementptr i8, i8* %617, i64 %623
  %625 = bitcast i8* %624 to i64*
  %626 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %627 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %626, i32 0, i32 9
  store i64* %625, i64** %627, align 8
  %628 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %629 = bitcast %struct.TYPE_7__* %628 to i8*
  %630 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %631 = load i32, i32* %6, align 4
  %632 = zext i32 %631 to i64
  %633 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %630, i64 %632
  %634 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %633, i32 0, i32 6
  %635 = load i64, i64* %634, align 8
  %636 = getelementptr i8, i8* %629, i64 %635
  %637 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %638 = load i32, i32* %6, align 4
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %637, i64 %639
  %641 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %640, i32 0, i32 0
  %642 = load i64, i64* %641, align 8
  %643 = getelementptr i8, i8* %636, i64 %642
  %644 = bitcast i8* %643 to i64*
  %645 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %646 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %645, i32 0, i32 10
  store i64* %644, i64** %646, align 8
  br label %647

647:                                              ; preds = %614, %605
  br label %648

648:                                              ; preds = %647
  %649 = load i32, i32* %6, align 4
  %650 = add i32 %649, 1
  store i32 %650, i32* %6, align 4
  br label %397

651:                                              ; preds = %397
  %652 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %653 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %652, i32 0, i32 12
  %654 = load %struct.TYPE_5__*, %struct.TYPE_5__** %653, align 8
  %655 = icmp ne %struct.TYPE_5__* %654, null
  br i1 %655, label %659, label %656

656:                                              ; preds = %651
  %657 = load i8*, i8** %5, align 8
  %658 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i8* %657)
  br label %659

659:                                              ; preds = %656, %651
  %660 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %661 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %660, i32 0, i32 12
  %662 = load %struct.TYPE_5__*, %struct.TYPE_5__** %661, align 8
  store %struct.TYPE_5__* %662, %struct.TYPE_5__** %9, align 8
  br label %663

663:                                              ; preds = %698, %659
  %664 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %665 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %666 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %665, i32 0, i32 11
  %667 = load %struct.TYPE_5__*, %struct.TYPE_5__** %666, align 8
  %668 = icmp ult %struct.TYPE_5__* %664, %667
  br i1 %668, label %669, label %701

669:                                              ; preds = %663
  %670 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %671 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %670, i32 0, i32 0
  %672 = load i64, i64* %671, align 8
  %673 = call i8* @TO_NATIVE(i64 %672)
  %674 = ptrtoint i8* %673 to i64
  %675 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %676 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %675, i32 0, i32 0
  store i64 %674, i64* %676, align 8
  %677 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %678 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %677, i32 0, i32 1
  %679 = load i64, i64* %678, align 8
  %680 = call i8* @TO_NATIVE(i64 %679)
  %681 = ptrtoint i8* %680 to i64
  %682 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %683 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %682, i32 0, i32 1
  store i64 %681, i64* %683, align 8
  %684 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %685 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %684, i32 0, i32 2
  %686 = load i64, i64* %685, align 8
  %687 = call i8* @TO_NATIVE(i64 %686)
  %688 = ptrtoint i8* %687 to i64
  %689 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %690 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %689, i32 0, i32 2
  store i64 %688, i64* %690, align 8
  %691 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %692 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %691, i32 0, i32 3
  %693 = load i64, i64* %692, align 8
  %694 = call i8* @TO_NATIVE(i64 %693)
  %695 = ptrtoint i8* %694 to i64
  %696 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %697 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %696, i32 0, i32 3
  store i64 %695, i64* %697, align 8
  br label %698

698:                                              ; preds = %669
  %699 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %700 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %699, i32 1
  store %struct.TYPE_5__* %700, %struct.TYPE_5__** %9, align 8
  br label %663

701:                                              ; preds = %663
  %702 = load i32, i32* %12, align 4
  %703 = icmp ne i32 %702, -1
  br i1 %703, label %704, label %744

704:                                              ; preds = %701
  %705 = load i32, i32* %11, align 4
  %706 = zext i32 %705 to i64
  %707 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %708 = load i32, i32* %12, align 4
  %709 = zext i32 %708 to i64
  %710 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %707, i64 %709
  %711 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %710, i32 0, i32 1
  %712 = load i64, i64* %711, align 8
  %713 = icmp ne i64 %706, %712
  br i1 %713, label %714, label %724

714:                                              ; preds = %704
  %715 = load i8*, i8** %5, align 8
  %716 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %717 = load i32, i32* %12, align 4
  %718 = zext i32 %717 to i64
  %719 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %716, i64 %718
  %720 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %719, i32 0, i32 1
  %721 = load i64, i64* %720, align 8
  %722 = load i32, i32* %11, align 4
  %723 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i8* %715, i64 %721, i32 %722)
  br label %724

724:                                              ; preds = %714, %704
  %725 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %726 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %725, i32 0, i32 9
  %727 = load i64*, i64** %726, align 8
  store i64* %727, i64** %16, align 8
  br label %728

728:                                              ; preds = %740, %724
  %729 = load i64*, i64** %16, align 8
  %730 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %731 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %730, i32 0, i32 10
  %732 = load i64*, i64** %731, align 8
  %733 = icmp ult i64* %729, %732
  br i1 %733, label %734, label %743

734:                                              ; preds = %728
  %735 = load i64*, i64** %16, align 8
  %736 = load i64, i64* %735, align 8
  %737 = call i8* @TO_NATIVE(i64 %736)
  %738 = ptrtoint i8* %737 to i64
  %739 = load i64*, i64** %16, align 8
  store i64 %738, i64* %739, align 8
  br label %740

740:                                              ; preds = %734
  %741 = load i64*, i64** %16, align 8
  %742 = getelementptr inbounds i64, i64* %741, i32 1
  store i64* %742, i64** %16, align 8
  br label %728

743:                                              ; preds = %728
  br label %744

744:                                              ; preds = %743, %701
  store i32 1, i32* %3, align 4
  br label %745

745:                                              ; preds = %744, %428, %193, %82, %45, %26
  %746 = load i32, i32* %3, align 4
  ret i32 %746
}

declare dso_local %struct.TYPE_7__* @grab_file(i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @TO_NATIVE(i64) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
