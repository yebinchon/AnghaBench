; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_elf.c_elf_create_rela_section.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_elf.c_elf_create_rela_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf = type { i32 }
%struct.section = type { i8*, %struct.TYPE_3__, i32, %struct.section*, %struct.section* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c".rela\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@SHT_RELA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c".symtab\00", align 1
@SHF_INFO_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.section* @elf_create_rela_section(%struct.elf* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.section*, align 8
  %4 = alloca %struct.elf*, align 8
  %5 = alloca %struct.section*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.section*, align 8
  store %struct.elf* %0, %struct.elf** %4, align 8
  store %struct.section* %1, %struct.section** %5, align 8
  %8 = load %struct.section*, %struct.section** %5, align 8
  %9 = getelementptr inbounds %struct.section, %struct.section* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %13 = add nsw i64 %11, %12
  %14 = add nsw i64 %13, 1
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.section* null, %struct.section** %3, align 8
  br label %68

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.section*, %struct.section** %5, align 8
  %25 = getelementptr inbounds %struct.section, %struct.section* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strcat(i8* %23, i8* %26)
  %28 = load %struct.elf*, %struct.elf** %4, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call %struct.section* @elf_create_section(%struct.elf* %28, i8* %29, i32 4, i32 0)
  store %struct.section* %30, %struct.section** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load %struct.section*, %struct.section** %7, align 8
  %34 = icmp ne %struct.section* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %20
  store %struct.section* null, %struct.section** %3, align 8
  br label %68

36:                                               ; preds = %20
  %37 = load %struct.section*, %struct.section** %7, align 8
  %38 = load %struct.section*, %struct.section** %5, align 8
  %39 = getelementptr inbounds %struct.section, %struct.section* %38, i32 0, i32 4
  store %struct.section* %37, %struct.section** %39, align 8
  %40 = load %struct.section*, %struct.section** %5, align 8
  %41 = load %struct.section*, %struct.section** %7, align 8
  %42 = getelementptr inbounds %struct.section, %struct.section* %41, i32 0, i32 3
  store %struct.section* %40, %struct.section** %42, align 8
  %43 = load i32, i32* @SHT_RELA, align 4
  %44 = load %struct.section*, %struct.section** %7, align 8
  %45 = getelementptr inbounds %struct.section, %struct.section* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 8
  %47 = load %struct.section*, %struct.section** %7, align 8
  %48 = getelementptr inbounds %struct.section, %struct.section* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 8, i32* %49, align 8
  %50 = load %struct.elf*, %struct.elf** %4, align 8
  %51 = call %struct.TYPE_4__* @find_section_by_name(%struct.elf* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.section*, %struct.section** %7, align 8
  %55 = getelementptr inbounds %struct.section, %struct.section* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 4
  %57 = load %struct.section*, %struct.section** %5, align 8
  %58 = getelementptr inbounds %struct.section, %struct.section* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.section*, %struct.section** %7, align 8
  %61 = getelementptr inbounds %struct.section, %struct.section* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @SHF_INFO_LINK, align 4
  %64 = load %struct.section*, %struct.section** %7, align 8
  %65 = getelementptr inbounds %struct.section, %struct.section* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  %67 = load %struct.section*, %struct.section** %7, align 8
  store %struct.section* %67, %struct.section** %3, align 8
  br label %68

68:                                               ; preds = %36, %35, %18
  %69 = load %struct.section*, %struct.section** %3, align 8
  ret %struct.section* %69
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local %struct.section* @elf_create_section(%struct.elf*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_4__* @find_section_by_name(%struct.elf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
