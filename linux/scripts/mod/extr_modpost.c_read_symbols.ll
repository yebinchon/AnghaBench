; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_read_symbols.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_read_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, i32, i32, i32, i32 }
%struct.elf_info = type { i64, i32, i64, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.symbol = type { i64 }

@have_vmlinux = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.1 = private unnamed_addr constant [89 x i8] c"modpost: missing MODULE_LICENSE() in %s\0Asee include/linux/module.h for more information\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"import_ns\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"__kstrtabns_\00", align 1
@STB_GLOBAL = common dso_local global i8 0, align 1
@STB_WEAK = common dso_local global i8 0, align 1
@vmlinux_section_warnings = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@all_versions = common dso_local global i64 0, align 8
@modversions = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"module_layout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @read_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_symbols(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.module*, align 8
  %8 = alloca %struct.elf_info, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %2, align 8
  %12 = bitcast %struct.elf_info* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = load i8*, i8** %2, align 8
  %14 = call i32 @parse_elf(%struct.elf_info* %8, i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %223

17:                                               ; preds = %1
  %18 = load i8*, i8** %2, align 8
  %19 = call %struct.module* @new_module(i8* %18)
  store %struct.module* %19, %struct.module** %7, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = call i64 @is_vmlinux(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  store i32 1, i32* @have_vmlinux, align 4
  %24 = load %struct.module*, %struct.module** %7, align 8
  %25 = getelementptr inbounds %struct.module, %struct.module* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %17
  %27 = call i8* @get_modinfo(%struct.elf_info* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %2, align 8
  %32 = call i64 @is_vmlinux(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i8*, i8** %2, align 8
  %36 = call i32 @warn(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  br label %37

37:                                               ; preds = %34, %30, %26
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %54

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @license_is_gpl_compatible(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.module*, %struct.module** %7, align 8
  %47 = getelementptr inbounds %struct.module, %struct.module* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %51

48:                                               ; preds = %41
  %49 = load %struct.module*, %struct.module** %7, align 8
  %50 = getelementptr inbounds %struct.module, %struct.module* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %54

51:                                               ; preds = %45
  %52 = load i8*, i8** %5, align 8
  %53 = call i8* @get_next_modinfo(%struct.elf_info* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %52)
  store i8* %53, i8** %5, align 8
  br label %38

54:                                               ; preds = %48, %38
  %55 = call i8* @get_modinfo(%struct.elf_info* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %55, i8** %6, align 8
  br label %56

56:                                               ; preds = %59, %54
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.module*, %struct.module** %7, align 8
  %61 = getelementptr inbounds %struct.module, %struct.module* %60, i32 0, i32 4
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 @add_namespace(i32* %61, i8* %62)
  %64 = load i8*, i8** %6, align 8
  %65 = call i8* @get_next_modinfo(%struct.elf_info* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %64)
  store i8* %65, i8** %6, align 8
  br label %56

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  store %struct.TYPE_5__* %68, %struct.TYPE_5__** %9, align 8
  br label %69

69:                                               ; preds = %90, %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = icmp ult %struct.TYPE_5__* %70, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = call i8* @remove_dot(i64 %80)
  store i8* %81, i8** %3, align 8
  %82 = load %struct.module*, %struct.module** %7, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = load i8*, i8** %3, align 8
  %85 = call i32 @handle_modversions(%struct.module* %82, %struct.elf_info* %8, %struct.TYPE_5__* %83, i8* %84)
  %86 = load %struct.module*, %struct.module** %7, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @handle_moddevtable(%struct.module* %86, %struct.elf_info* %8, %struct.TYPE_5__* %87, i8* %88)
  br label %90

90:                                               ; preds = %74
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 1
  store %struct.TYPE_5__* %92, %struct.TYPE_5__** %9, align 8
  br label %69

93:                                               ; preds = %69
  %94 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  store %struct.TYPE_5__* %95, %struct.TYPE_5__** %9, align 8
  br label %96

96:                                               ; preds = %121, %93
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %98 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 3
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = icmp ult %struct.TYPE_5__* %97, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %103, %106
  %108 = call i8* @remove_dot(i64 %107)
  store i8* %108, i8** %3, align 8
  %109 = load i8*, i8** %3, align 8
  %110 = call i64 @strstarts(i8* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %101
  %113 = load i8*, i8** %3, align 8
  %114 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %118 = call i32 @namespace_from_kstrtabns(%struct.elf_info* %8, %struct.TYPE_5__* %117)
  %119 = call i32 @sym_update_namespace(i8* %116, i32 %118)
  br label %120

120:                                              ; preds = %112, %101
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 1
  store %struct.TYPE_5__* %123, %struct.TYPE_5__** %9, align 8
  br label %96

124:                                              ; preds = %96
  %125 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 4
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  store %struct.TYPE_5__* %126, %struct.TYPE_5__** %9, align 8
  br label %127

127:                                              ; preds = %164, %124
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %129 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 3
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = icmp ult %struct.TYPE_5__* %128, %130
  br i1 %131, label %132, label %167

132:                                              ; preds = %127
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call zeroext i8 @ELF_ST_BIND(i32 %135)
  store i8 %136, i8* %10, align 1
  %137 = load i8, i8* %10, align 1
  %138 = zext i8 %137 to i32
  %139 = load i8, i8* @STB_GLOBAL, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %138, %140
  br i1 %141, label %148, label %142

142:                                              ; preds = %132
  %143 = load i8, i8* %10, align 1
  %144 = zext i8 %143 to i32
  %145 = load i8, i8* @STB_WEAK, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %142, %132
  %149 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %150, %153
  %155 = call i8* @remove_dot(i64 %154)
  %156 = call %struct.symbol* @find_symbol(i8* %155)
  store %struct.symbol* %156, %struct.symbol** %11, align 8
  %157 = load %struct.symbol*, %struct.symbol** %11, align 8
  %158 = icmp ne %struct.symbol* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %148
  %160 = load %struct.symbol*, %struct.symbol** %11, align 8
  %161 = getelementptr inbounds %struct.symbol, %struct.symbol* %160, i32 0, i32 0
  store i64 0, i64* %161, align 8
  br label %162

162:                                              ; preds = %159, %148
  br label %163

163:                                              ; preds = %162, %142
  br label %164

164:                                              ; preds = %163
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 1
  store %struct.TYPE_5__* %166, %struct.TYPE_5__** %9, align 8
  br label %127

167:                                              ; preds = %127
  %168 = load i8*, i8** %2, align 8
  %169 = call i64 @is_vmlinux(i8* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i64, i64* @vmlinux_section_warnings, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171, %167
  %175 = load %struct.module*, %struct.module** %7, align 8
  %176 = load i8*, i8** %2, align 8
  %177 = call i32 @check_sec_ref(%struct.module* %175, i8* %176, %struct.elf_info* %8)
  br label %178

178:                                              ; preds = %174, %171
  %179 = call i8* @get_modinfo(%struct.elf_info* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %179, i8** %4, align 8
  %180 = load i8*, i8** %4, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %196

182:                                              ; preds = %178
  %183 = load i8*, i8** %2, align 8
  %184 = load i8*, i8** %4, align 8
  %185 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %8, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to i8*
  %191 = ptrtoint i8* %187 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = call i32 @maybe_frob_rcs_version(i8* %183, i8* %184, i32 %186, i32 %194)
  br label %196

196:                                              ; preds = %182, %178
  %197 = load i8*, i8** %4, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %206, label %199

199:                                              ; preds = %196
  %200 = load i64, i64* @all_versions, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load i8*, i8** %2, align 8
  %204 = call i64 @is_vmlinux(i8* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %202, %196
  %207 = load i8*, i8** %2, align 8
  %208 = load %struct.module*, %struct.module** %7, align 8
  %209 = getelementptr inbounds %struct.module, %struct.module* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @get_src_version(i8* %207, i32 %210, i32 3)
  br label %212

212:                                              ; preds = %206, %202, %199
  %213 = call i32 @parse_elf_finish(%struct.elf_info* %8)
  %214 = load i64, i64* @modversions, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %212
  %217 = load %struct.module*, %struct.module** %7, align 8
  %218 = getelementptr inbounds %struct.module, %struct.module* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @alloc_symbol(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 %219)
  %221 = load %struct.module*, %struct.module** %7, align 8
  %222 = getelementptr inbounds %struct.module, %struct.module* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %16, %216, %212
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @parse_elf(%struct.elf_info*, i8*) #2

declare dso_local %struct.module* @new_module(i8*) #2

declare dso_local i64 @is_vmlinux(i8*) #2

declare dso_local i8* @get_modinfo(%struct.elf_info*, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i64 @license_is_gpl_compatible(i8*) #2

declare dso_local i8* @get_next_modinfo(%struct.elf_info*, i8*, i8*) #2

declare dso_local i32 @add_namespace(i32*, i8*) #2

declare dso_local i8* @remove_dot(i64) #2

declare dso_local i32 @handle_modversions(%struct.module*, %struct.elf_info*, %struct.TYPE_5__*, i8*) #2

declare dso_local i32 @handle_moddevtable(%struct.module*, %struct.elf_info*, %struct.TYPE_5__*, i8*) #2

declare dso_local i64 @strstarts(i8*, i8*) #2

declare dso_local i32 @sym_update_namespace(i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @namespace_from_kstrtabns(%struct.elf_info*, %struct.TYPE_5__*) #2

declare dso_local zeroext i8 @ELF_ST_BIND(i32) #2

declare dso_local %struct.symbol* @find_symbol(i8*) #2

declare dso_local i32 @check_sec_ref(%struct.module*, i8*, %struct.elf_info*) #2

declare dso_local i32 @maybe_frob_rcs_version(i8*, i8*, i32, i32) #2

declare dso_local i32 @get_src_version(i8*, i32, i32) #2

declare dso_local i32 @parse_elf_finish(%struct.elf_info*) #2

declare dso_local i32 @alloc_symbol(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
