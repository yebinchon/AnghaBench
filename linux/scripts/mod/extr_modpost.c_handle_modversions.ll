; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_handle_modversions.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_handle_modversions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32, i32, i32, i32, i64 }
%struct.elf_info = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"__ksymtab\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"__crc_\00", align 1
@SHN_ABS = common dso_local global i32 0, align 4
@ET_REL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"__gnu_lto_\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"\22%s\22 [%s] is COMMON symbol\0A\00", align 1
@STB_GLOBAL = common dso_local global i32 0, align 4
@STB_WEAK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c".ko\00", align 1
@.str.6 = private unnamed_addr constant [84 x i8] c"EXPORT symbol \22%s\22 [%s%s] version generation failed, symbol will not be versioned.\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"__ksymtab_\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"init_module\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"cleanup_module\00", align 1
@EM_SPARC = common dso_local global i32 0, align 4
@EM_SPARCV9 = common dso_local global i32 0, align 4
@STT_SPARC_REGISTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module*, %struct.elf_info*, %struct.TYPE_8__*, i8*)* @handle_modversions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_modversions(%struct.module* %0, %struct.elf_info* %1, %struct.TYPE_8__* %2, i8* %3) #0 {
  %5 = alloca %struct.module*, align 8
  %6 = alloca %struct.elf_info*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.module* %0, %struct.module** %5, align 8
  store %struct.elf_info* %1, %struct.elf_info** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.module*, %struct.module** %5, align 8
  %16 = getelementptr inbounds %struct.module, %struct.module* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @is_vmlinux(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load %struct.module*, %struct.module** %5, align 8
  %22 = getelementptr inbounds %struct.module, %struct.module* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20, %4
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @strstarts(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %31 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = call i32 @get_secindex(%struct.elf_info* %31, %struct.TYPE_8__* %32)
  %34 = call i32 @export_from_secname(%struct.elf_info* %30, i32 %33)
  store i32 %34, i32* %10, align 4
  br label %41

35:                                               ; preds = %25, %20
  %36 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %37 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = call i32 @get_secindex(%struct.elf_info* %37, %struct.TYPE_8__* %38)
  %40 = call i32 @export_from_sec(%struct.elf_info* %36, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %35, %29
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strstarts(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %118

45:                                               ; preds = %41
  store i32 1, i32* %11, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 128
  br i1 %52, label %53, label %109

53:                                               ; preds = %45
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SHN_ABS, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %109

59:                                               ; preds = %53
  %60 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %61 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = bitcast %struct.TYPE_7__* %62 to i8*
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr i8, i8* %63, i64 %67
  %69 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %70 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr i8, i8* %68, i64 %79
  %81 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %82 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ET_REL, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %59
  %89 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %90 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  br label %100

99:                                               ; preds = %59
  br label %100

100:                                              ; preds = %99, %88
  %101 = phi i32 [ %98, %88 ], [ 0, %99 ]
  %102 = sext i32 %101 to i64
  %103 = sub i64 0, %102
  %104 = getelementptr i8, i8* %80, i64 %103
  %105 = bitcast i8* %104 to i32*
  store i32* %105, i32** %13, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @TO_NATIVE(i32 %107)
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %100, %53, %45
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load %struct.module*, %struct.module** %5, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @sym_update_crc(i8* %113, %struct.module* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %109, %41
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  switch i32 %121, label %190 [
    i32 129, label %122
    i32 128, label %134
  ]

122:                                              ; preds = %118
  %123 = load i8*, i8** %8, align 8
  %124 = call i64 @strstarts(i8* %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  br label %133

127:                                              ; preds = %122
  %128 = load i8*, i8** %8, align 8
  %129 = load %struct.module*, %struct.module** %5, align 8
  %130 = getelementptr inbounds %struct.module, %struct.module* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i8*, i32, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %128, i32 %131)
  br label %133

133:                                              ; preds = %127, %126
  br label %218

134:                                              ; preds = %118
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ELF_ST_BIND(i32 %137)
  %139 = load i32, i32* @STB_GLOBAL, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %134
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @ELF_ST_BIND(i32 %144)
  %146 = load i32, i32* @STB_WEAK, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  br label %218

149:                                              ; preds = %141, %134
  %150 = load %struct.elf_info*, %struct.elf_info** %6, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = call i32 @ignore_undef_symbol(%struct.elf_info* %150, i8* %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %218

155:                                              ; preds = %149
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %155
  %159 = load %struct.module*, %struct.module** %5, align 8
  %160 = getelementptr inbounds %struct.module, %struct.module* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @is_vmlinux(i32 %161)
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  store i8* %165, i8** %14, align 8
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load %struct.module*, %struct.module** %5, align 8
  %171 = getelementptr inbounds %struct.module, %struct.module* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load i8*, i8** %14, align 8
  %174 = call i32 (i8*, i8*, i32, ...) @warn(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.6, i64 0, i64 0), i8* %169, i32 %172, i8* %173)
  br label %175

175:                                              ; preds = %158, %155
  %176 = load i8*, i8** %8, align 8
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @ELF_ST_BIND(i32 %179)
  %181 = load i32, i32* @STB_WEAK, align 4
  %182 = icmp eq i32 %180, %181
  %183 = zext i1 %182 to i32
  %184 = load %struct.module*, %struct.module** %5, align 8
  %185 = getelementptr inbounds %struct.module, %struct.module* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @alloc_symbol(i8* %176, i32 %183, i32 %186)
  %188 = load %struct.module*, %struct.module** %5, align 8
  %189 = getelementptr inbounds %struct.module, %struct.module* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  br label %218

190:                                              ; preds = %118
  %191 = load i8*, i8** %8, align 8
  %192 = call i64 @strstarts(i8* %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %190
  %195 = load i8*, i8** %8, align 8
  %196 = call i32 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  store i8* %198, i8** %12, align 8
  %199 = load i8*, i8** %12, align 8
  %200 = load %struct.module*, %struct.module** %5, align 8
  %201 = load i32, i32* %10, align 4
  %202 = call i32 @sym_add_exported(i8* %199, %struct.module* %200, i32 %201)
  br label %203

203:                                              ; preds = %194, %190
  %204 = load i8*, i8** %8, align 8
  %205 = call i32 @strcmp(i8* %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %203
  %208 = load %struct.module*, %struct.module** %5, align 8
  %209 = getelementptr inbounds %struct.module, %struct.module* %208, i32 0, i32 0
  store i32 1, i32* %209, align 8
  br label %210

210:                                              ; preds = %207, %203
  %211 = load i8*, i8** %8, align 8
  %212 = call i32 @strcmp(i8* %211, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load %struct.module*, %struct.module** %5, align 8
  %216 = getelementptr inbounds %struct.module, %struct.module* %215, i32 0, i32 1
  store i32 1, i32* %216, align 4
  br label %217

217:                                              ; preds = %214, %210
  br label %218

218:                                              ; preds = %217, %175, %154, %148, %133
  ret void
}

declare dso_local i64 @is_vmlinux(i32) #1

declare dso_local i64 @strstarts(i8*, i8*) #1

declare dso_local i32 @export_from_secname(%struct.elf_info*, i32) #1

declare dso_local i32 @get_secindex(%struct.elf_info*, %struct.TYPE_8__*) #1

declare dso_local i32 @export_from_sec(%struct.elf_info*, i32) #1

declare dso_local i32 @TO_NATIVE(i32) #1

declare dso_local i32 @sym_update_crc(i8*, %struct.module*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @warn(i8*, i8*, i32, ...) #1

declare dso_local i32 @ELF_ST_BIND(i32) #1

declare dso_local i32 @ignore_undef_symbol(%struct.elf_info*, i8*) #1

declare dso_local i32 @alloc_symbol(i8*, i32, i32) #1

declare dso_local i32 @sym_add_exported(i8*, %struct.module*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
