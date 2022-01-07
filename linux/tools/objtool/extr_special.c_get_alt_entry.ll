; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_special.c_get_alt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_special.c_get_alt_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf = type { i32 }
%struct.special_entry = type { i32, i16, i64, i64, i64, i64, i64, i32 }
%struct.section = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.special_alt = type { i8, i8, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.rela = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@X86_FEATURE_POPCNT = common dso_local global i16 0, align 2
@X86_FEATURE_SMAP = common dso_local global i16 0, align 2
@uaccess = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"can't find orig rela\00", align 1
@STT_SECTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"don't know how to handle non-section rela symbol %s\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"can't find new rela\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf*, %struct.special_entry*, %struct.section*, i32, %struct.special_alt*)* @get_alt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_alt_entry(%struct.elf* %0, %struct.special_entry* %1, %struct.section* %2, i32 %3, %struct.special_alt* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.elf*, align 8
  %8 = alloca %struct.special_entry*, align 8
  %9 = alloca %struct.section*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.special_alt*, align 8
  %12 = alloca %struct.rela*, align 8
  %13 = alloca %struct.rela*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i16, align 2
  store %struct.elf* %0, %struct.elf** %7, align 8
  store %struct.special_entry* %1, %struct.special_entry** %8, align 8
  store %struct.section* %2, %struct.section** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.special_alt* %4, %struct.special_alt** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %18 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %14, align 8
  %22 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %23 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %26 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %25, i32 0, i32 8
  store i64 %24, i64* %26, align 8
  %27 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %28 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %31 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %33 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %5
  %37 = load %struct.section*, %struct.section** %9, align 8
  %38 = getelementptr inbounds %struct.section, %struct.section* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %14, align 8
  %43 = add i64 %41, %42
  %44 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %45 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = inttoptr i64 %47 to i8*
  %49 = load i8, i8* %48, align 1
  %50 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %51 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %50, i32 0, i32 0
  store i8 %49, i8* %51, align 8
  %52 = load %struct.section*, %struct.section** %9, align 8
  %53 = getelementptr inbounds %struct.section, %struct.section* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %56, %57
  %59 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %60 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %58, %61
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8, i8* %63, align 1
  %65 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %66 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %65, i32 0, i32 1
  store i8 %64, i8* %66, align 1
  br label %67

67:                                               ; preds = %36, %5
  %68 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %69 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %68, i32 0, i32 1
  %70 = load i16, i16* %69, align 4
  %71 = icmp ne i16 %70, 0
  br i1 %71, label %72, label %112

72:                                               ; preds = %67
  %73 = load %struct.section*, %struct.section** %9, align 8
  %74 = getelementptr inbounds %struct.section, %struct.section* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %14, align 8
  %79 = add i64 %77, %78
  %80 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %81 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %80, i32 0, i32 1
  %82 = load i16, i16* %81, align 4
  %83 = sext i16 %82 to i64
  %84 = add i64 %79, %83
  %85 = inttoptr i64 %84 to i16*
  %86 = load i16, i16* %85, align 2
  store i16 %86, i16* %15, align 2
  %87 = load i16, i16* %15, align 2
  %88 = zext i16 %87 to i32
  %89 = load i16, i16* @X86_FEATURE_POPCNT, align 2
  %90 = zext i16 %89 to i32
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %72
  %93 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %94 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %93, i32 0, i32 2
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %72
  %96 = load i16, i16* %15, align 2
  %97 = zext i16 %96 to i32
  %98 = load i16, i16* @X86_FEATURE_SMAP, align 2
  %99 = zext i16 %98 to i32
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load i64, i64* @uaccess, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %106 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %105, i32 0, i32 2
  store i32 1, i32* %106, align 4
  br label %110

107:                                              ; preds = %101
  %108 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %109 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %108, i32 0, i32 3
  store i32 1, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %95
  br label %112

112:                                              ; preds = %111, %67
  %113 = load %struct.section*, %struct.section** %9, align 8
  %114 = load i64, i64* %14, align 8
  %115 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %116 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %114, %117
  %119 = call %struct.rela* @find_rela_by_dest(%struct.section* %113, i64 %118)
  store %struct.rela* %119, %struct.rela** %12, align 8
  %120 = load %struct.rela*, %struct.rela** %12, align 8
  %121 = icmp ne %struct.rela* %120, null
  br i1 %121, label %130, label %122

122:                                              ; preds = %112
  %123 = load %struct.section*, %struct.section** %9, align 8
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %126 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %124, %127
  %129 = call i32 (i8*, %struct.section*, i64, ...) @WARN_FUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.section* %123, i64 %128)
  store i32 -1, i32* %6, align 4
  br label %217

130:                                              ; preds = %112
  %131 = load %struct.rela*, %struct.rela** %12, align 8
  %132 = getelementptr inbounds %struct.rela, %struct.rela* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @STT_SECTION, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %130
  %139 = load %struct.section*, %struct.section** %9, align 8
  %140 = load i64, i64* %14, align 8
  %141 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %142 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %140, %143
  %145 = load %struct.rela*, %struct.rela** %12, align 8
  %146 = getelementptr inbounds %struct.rela, %struct.rela* %145, i32 0, i32 1
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, %struct.section*, i64, ...) @WARN_FUNC(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), %struct.section* %139, i64 %144, i32 %149)
  store i32 -1, i32* %6, align 4
  br label %217

151:                                              ; preds = %130
  %152 = load %struct.rela*, %struct.rela** %12, align 8
  %153 = getelementptr inbounds %struct.rela, %struct.rela* %152, i32 0, i32 1
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %158 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 8
  %159 = load %struct.rela*, %struct.rela** %12, align 8
  %160 = getelementptr inbounds %struct.rela, %struct.rela* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %163 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %162, i32 0, i32 6
  store i64 %161, i64* %163, align 8
  %164 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %165 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %151
  %169 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %170 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %169, i32 0, i32 1
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %216

174:                                              ; preds = %168, %151
  %175 = load %struct.section*, %struct.section** %9, align 8
  %176 = load i64, i64* %14, align 8
  %177 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %178 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %176, %179
  %181 = call %struct.rela* @find_rela_by_dest(%struct.section* %175, i64 %180)
  store %struct.rela* %181, %struct.rela** %13, align 8
  %182 = load %struct.rela*, %struct.rela** %13, align 8
  %183 = icmp ne %struct.rela* %182, null
  br i1 %183, label %192, label %184

184:                                              ; preds = %174
  %185 = load %struct.section*, %struct.section** %9, align 8
  %186 = load i64, i64* %14, align 8
  %187 = load %struct.special_entry*, %struct.special_entry** %8, align 8
  %188 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = add i64 %186, %189
  %191 = call i32 (i8*, %struct.section*, i64, ...) @WARN_FUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), %struct.section* %185, i64 %190)
  store i32 -1, i32* %6, align 4
  br label %217

192:                                              ; preds = %174
  %193 = load %struct.rela*, %struct.rela** %13, align 8
  %194 = getelementptr inbounds %struct.rela, %struct.rela* %193, i32 0, i32 1
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %199 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 8
  %200 = load %struct.rela*, %struct.rela** %13, align 8
  %201 = getelementptr inbounds %struct.rela, %struct.rela* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %205 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %204, i32 0, i32 4
  store i32 %203, i32* %205, align 4
  %206 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %207 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = icmp uge i32 %208, 2147483632
  br i1 %209, label %210, label %215

210:                                              ; preds = %192
  %211 = load %struct.special_alt*, %struct.special_alt** %11, align 8
  %212 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = sub i32 %213, 2147483632
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %210, %192
  br label %216

216:                                              ; preds = %215, %168
  store i32 0, i32* %6, align 4
  br label %217

217:                                              ; preds = %216, %184, %138, %122
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local %struct.rela* @find_rela_by_dest(%struct.section*, i64) #1

declare dso_local i32 @WARN_FUNC(i8*, %struct.section*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
