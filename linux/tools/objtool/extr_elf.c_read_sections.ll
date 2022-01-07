; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_elf.c_read_sections.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_elf.c_read_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf = type { i32, i32 }
%struct.section = type { i64, %struct.TYPE_3__, i32, %struct.TYPE_4__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"elf_getshdrnum\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"elf_getshdrstrndx\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"elf_getscn\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"gelf_getshdr\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"elf_strptr\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"elf_getdata\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"unexpected data attributes for %s\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"section entry mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf*)* @read_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sections(%struct.elf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elf*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.elf* %0, %struct.elf** %3, align 8
  store i32* null, i32** %4, align 8
  %9 = load %struct.elf*, %struct.elf** %3, align 8
  %10 = getelementptr inbounds %struct.elf, %struct.elf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @elf_getshdrnum(i32 %11, i64* %7)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @WARN_ELF(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %158

16:                                               ; preds = %1
  %17 = load %struct.elf*, %struct.elf** %3, align 8
  %18 = getelementptr inbounds %struct.elf, %struct.elf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @elf_getshdrstrndx(i32 %19, i64* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = call i32 @WARN_ELF(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %158

24:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %145, %24
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %148

30:                                               ; preds = %25
  %31 = call %struct.section* @malloc(i32 64)
  store %struct.section* %31, %struct.section** %5, align 8
  %32 = load %struct.section*, %struct.section** %5, align 8
  %33 = icmp ne %struct.section* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %158

36:                                               ; preds = %30
  %37 = load %struct.section*, %struct.section** %5, align 8
  %38 = call i32 @memset(%struct.section* %37, i32 0, i32 64)
  %39 = load %struct.section*, %struct.section** %5, align 8
  %40 = getelementptr inbounds %struct.section, %struct.section* %39, i32 0, i32 9
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.section*, %struct.section** %5, align 8
  %43 = getelementptr inbounds %struct.section, %struct.section* %42, i32 0, i32 8
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.section*, %struct.section** %5, align 8
  %46 = getelementptr inbounds %struct.section, %struct.section* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hash_init(i32 %47)
  %49 = load %struct.section*, %struct.section** %5, align 8
  %50 = getelementptr inbounds %struct.section, %struct.section* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @hash_init(i32 %51)
  %53 = load %struct.section*, %struct.section** %5, align 8
  %54 = getelementptr inbounds %struct.section, %struct.section* %53, i32 0, i32 5
  %55 = load %struct.elf*, %struct.elf** %3, align 8
  %56 = getelementptr inbounds %struct.elf, %struct.elf* %55, i32 0, i32 1
  %57 = call i32 @list_add_tail(i32* %54, i32* %56)
  %58 = load %struct.elf*, %struct.elf** %3, align 8
  %59 = getelementptr inbounds %struct.elf, %struct.elf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32* @elf_getscn(i32 %60, i32 %61)
  store i32* %62, i32** %4, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %36
  %66 = call i32 @WARN_ELF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %158

67:                                               ; preds = %36
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @elf_ndxscn(i32* %68)
  %70 = load %struct.section*, %struct.section** %5, align 8
  %71 = getelementptr inbounds %struct.section, %struct.section* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load %struct.section*, %struct.section** %5, align 8
  %74 = getelementptr inbounds %struct.section, %struct.section* %73, i32 0, i32 1
  %75 = call i32 @gelf_getshdr(i32* %72, %struct.TYPE_3__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %67
  %78 = call i32 @WARN_ELF(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %158

79:                                               ; preds = %67
  %80 = load %struct.elf*, %struct.elf** %3, align 8
  %81 = getelementptr inbounds %struct.elf, %struct.elf* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.section*, %struct.section** %5, align 8
  %85 = getelementptr inbounds %struct.section, %struct.section* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @elf_strptr(i32 %82, i64 %83, i32 %87)
  %89 = load %struct.section*, %struct.section** %5, align 8
  %90 = getelementptr inbounds %struct.section, %struct.section* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.section*, %struct.section** %5, align 8
  %92 = getelementptr inbounds %struct.section, %struct.section* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %79
  %96 = call i32 @WARN_ELF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %158

97:                                               ; preds = %79
  %98 = load %struct.section*, %struct.section** %5, align 8
  %99 = getelementptr inbounds %struct.section, %struct.section* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %97
  %104 = load i32*, i32** %4, align 8
  %105 = call %struct.TYPE_4__* @elf_getdata(i32* %104, i32* null)
  %106 = load %struct.section*, %struct.section** %5, align 8
  %107 = getelementptr inbounds %struct.section, %struct.section* %106, i32 0, i32 3
  store %struct.TYPE_4__* %105, %struct.TYPE_4__** %107, align 8
  %108 = load %struct.section*, %struct.section** %5, align 8
  %109 = getelementptr inbounds %struct.section, %struct.section* %108, i32 0, i32 3
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = icmp ne %struct.TYPE_4__* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %103
  %113 = call i32 @WARN_ELF(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %158

114:                                              ; preds = %103
  %115 = load %struct.section*, %struct.section** %5, align 8
  %116 = getelementptr inbounds %struct.section, %struct.section* %115, i32 0, i32 3
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %114
  %122 = load %struct.section*, %struct.section** %5, align 8
  %123 = getelementptr inbounds %struct.section, %struct.section* %122, i32 0, i32 3
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.section*, %struct.section** %5, align 8
  %128 = getelementptr inbounds %struct.section, %struct.section* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %126, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %121, %114
  %133 = load %struct.section*, %struct.section** %5, align 8
  %134 = getelementptr inbounds %struct.section, %struct.section* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %135)
  store i32 -1, i32* %2, align 4
  br label %158

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137, %97
  %139 = load %struct.section*, %struct.section** %5, align 8
  %140 = getelementptr inbounds %struct.section, %struct.section* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.section*, %struct.section** %5, align 8
  %144 = getelementptr inbounds %struct.section, %struct.section* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %25

148:                                              ; preds = %25
  %149 = load %struct.elf*, %struct.elf** %3, align 8
  %150 = getelementptr inbounds %struct.elf, %struct.elf* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %4, align 8
  %153 = call i64 @elf_nextscn(i32 %151, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %158

157:                                              ; preds = %148
  store i32 0, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %155, %132, %112, %95, %77, %65, %34, %22, %14
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i64 @elf_getshdrnum(i32, i64*) #1

declare dso_local i32 @WARN_ELF(i8*) #1

declare dso_local i64 @elf_getshdrstrndx(i32, i64*) #1

declare dso_local %struct.section* @malloc(i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.section*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hash_init(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32* @elf_getscn(i32, i32) #1

declare dso_local i32 @elf_ndxscn(i32*) #1

declare dso_local i32 @gelf_getshdr(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @elf_strptr(i32, i64, i32) #1

declare dso_local %struct.TYPE_4__* @elf_getdata(i32*, i32*) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local i64 @elf_nextscn(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
