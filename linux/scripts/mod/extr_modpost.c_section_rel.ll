; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_section_rel.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_section_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { %struct.TYPE_20__*, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i64, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c".rel\00", align 1
@section_white_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.elf_info*, %struct.TYPE_21__*)* @section_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @section_rel(i8* %0, %struct.elf_info* %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.elf_info*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.elf_info* %1, %struct.elf_info** %5, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %6, align 8
  %15 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %16 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %18 = bitcast %struct.TYPE_19__* %17 to i8*
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr i8, i8* %18, i64 %22
  %24 = bitcast i8* %23 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %24, %struct.TYPE_23__** %12, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %26 = bitcast %struct.TYPE_23__* %25 to i8*
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %26, i64 %30
  %32 = bitcast i8* %31 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %32, %struct.TYPE_23__** %13, align 8
  %33 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %35 = call i8* @sech_name(%struct.elf_info* %33, %struct.TYPE_21__* %34)
  store i8* %35, i8** %11, align 8
  %36 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
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
  br label %147

45:                                               ; preds = %3
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %8, align 8
  br label %47

47:                                               ; preds = %144, %45
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %50 = icmp ult %struct.TYPE_23__* %48, %49
  br i1 %50, label %51, label %147

51:                                               ; preds = %47
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @TO_NATIVE(i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %58 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %57, i32 0, i32 1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %63, label %79

63:                                               ; preds = %51
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ELF64_MIPS_R_SYM(i32 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i8* @TO_NATIVE(i32 %68)
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ELF64_MIPS_R_TYPE(i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i8* @ELF64_R_INFO(i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i8* %77, i8** %78, align 8
  br label %88

79:                                               ; preds = %51
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @TO_NATIVE(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i8* %83, i8** %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @ELF_R_SYM(i8* %86)
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %79, %63
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %91 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %116 [
    i32 130, label %95
    i32 129, label %102
    i32 128, label %109
  ]

95:                                               ; preds = %88
  %96 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %98 = call i32 @addend_386_rel(%struct.elf_info* %96, %struct.TYPE_21__* %97, %struct.TYPE_22__* %9)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %144

101:                                              ; preds = %95
  br label %116

102:                                              ; preds = %88
  %103 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %105 = call i32 @addend_arm_rel(%struct.elf_info* %103, %struct.TYPE_21__* %104, %struct.TYPE_22__* %9)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %144

108:                                              ; preds = %102
  br label %116

109:                                              ; preds = %88
  %110 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %112 = call i32 @addend_mips_rel(%struct.elf_info* %110, %struct.TYPE_21__* %111, %struct.TYPE_22__* %9)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  br label %144

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %88, %115, %108, %101
  %117 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %118 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %117, i32 0, i32 0
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i64 %121
  store %struct.TYPE_20__* %122, %struct.TYPE_20__** %7, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @is_shndx_special(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %144

129:                                              ; preds = %116
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = call i64 @is_second_extable_reloc(%struct.TYPE_23__* %130, %struct.TYPE_23__* %131, i8* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i8*, i8** %11, align 8
  %137 = call i32 @find_extable_entry_size(i8* %136, %struct.TYPE_22__* %9)
  br label %138

138:                                              ; preds = %135, %129
  %139 = load i8*, i8** %4, align 8
  %140 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @check_section_mismatch(i8* %139, %struct.elf_info* %140, %struct.TYPE_22__* %9, %struct.TYPE_20__* %141, i8* %142)
  br label %144

144:                                              ; preds = %138, %128, %114, %107, %100
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 1
  store %struct.TYPE_23__* %146, %struct.TYPE_23__** %8, align 8
  br label %47

147:                                              ; preds = %44, %47
  ret void
}

declare dso_local i8* @sech_name(%struct.elf_info*, %struct.TYPE_21__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @match(i8*, i32) #1

declare dso_local i8* @TO_NATIVE(i32) #1

declare dso_local i32 @ELF64_MIPS_R_SYM(i32) #1

declare dso_local i32 @ELF64_MIPS_R_TYPE(i32) #1

declare dso_local i8* @ELF64_R_INFO(i32, i32) #1

declare dso_local i32 @ELF_R_SYM(i8*) #1

declare dso_local i32 @addend_386_rel(%struct.elf_info*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @addend_arm_rel(%struct.elf_info*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @addend_mips_rel(%struct.elf_info*, %struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i64 @is_shndx_special(i32) #1

declare dso_local i64 @is_second_extable_reloc(%struct.TYPE_23__*, %struct.TYPE_23__*, i8*) #1

declare dso_local i32 @find_extable_entry_size(i8*, %struct.TYPE_22__*) #1

declare dso_local i32 @check_section_mismatch(i8*, %struct.elf_info*, %struct.TYPE_22__*, %struct.TYPE_20__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
