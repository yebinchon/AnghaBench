; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_section_rela.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_section_rela.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c".rela\00", align 1
@section_white_list = common dso_local global i32 0, align 4
@EM_MIPS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.elf_info*, %struct.TYPE_14__*)* @section_rela to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @section_rela(i8* %0, %struct.elf_info* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elf_info*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.elf_info* %1, %struct.elf_info** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %15 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %16 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %18 = bitcast %struct.TYPE_12__* %17 to i8*
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %18, i64 %22
  %24 = bitcast i8* %23 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %12, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %26 = bitcast %struct.TYPE_15__* %25 to i8*
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %26, i64 %30
  %32 = bitcast i8* %31 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %13, align 8
  %33 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = call i8* @sech_name(%struct.elf_info* %33, %struct.TYPE_14__* %34)
  store i8* %35, i8** %11, align 8
  %36 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %11, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %11, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* @section_white_list, align 4
  %42 = call i64 @match(i8* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %3
  br label %128

45:                                               ; preds = %3
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %8, align 8
  br label %47

47:                                               ; preds = %125, %45
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %50 = icmp ult %struct.TYPE_15__* %48, %49
  br i1 %50, label %51, label %128

51:                                               ; preds = %47
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @TO_NATIVE(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %59 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @EM_MIPS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %81

65:                                               ; preds = %51
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ELF64_MIPS_R_SYM(i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i8* @TO_NATIVE(i32 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ELF64_MIPS_R_TYPE(i32 %75)
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @ELF64_R_INFO(i32 %77, i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  br label %91

81:                                               ; preds = %51
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @TO_NATIVE(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ELF_R_SYM(i32 %89)
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %81, %65
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @TO_NATIVE(i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 2
  store i32 %96, i32* %97, align 4
  %98 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %99 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i64 %102
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %7, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @is_shndx_special(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %91
  br label %125

110:                                              ; preds = %91
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = call i64 @is_second_extable_reloc(%struct.TYPE_15__* %111, %struct.TYPE_15__* %112, i8* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i8*, i8** %11, align 8
  %118 = call i32 @find_extable_entry_size(i8* %117, %struct.TYPE_15__* %9)
  br label %119

119:                                              ; preds = %116, %110
  %120 = load i8*, i8** %4, align 8
  %121 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @check_section_mismatch(i8* %120, %struct.elf_info* %121, %struct.TYPE_15__* %9, %struct.TYPE_13__* %122, i8* %123)
  br label %125

125:                                              ; preds = %119, %109
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 1
  store %struct.TYPE_15__* %127, %struct.TYPE_15__** %8, align 8
  br label %47

128:                                              ; preds = %44, %47
  ret void
}

declare dso_local i8* @sech_name(%struct.elf_info*, %struct.TYPE_14__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @match(i8*, i32) #1

declare dso_local i8* @TO_NATIVE(i32) #1

declare dso_local i32 @ELF64_MIPS_R_SYM(i32) #1

declare dso_local i32 @ELF64_MIPS_R_TYPE(i32) #1

declare dso_local i32 @ELF64_R_INFO(i32, i32) #1

declare dso_local i32 @ELF_R_SYM(i32) #1

declare dso_local i64 @is_shndx_special(i32) #1

declare dso_local i64 @is_second_extable_reloc(%struct.TYPE_15__*, %struct.TYPE_15__*, i8*) #1

declare dso_local i32 @find_extable_entry_size(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @check_section_mismatch(i8*, %struct.elf_info*, %struct.TYPE_15__*, %struct.TYPE_13__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
