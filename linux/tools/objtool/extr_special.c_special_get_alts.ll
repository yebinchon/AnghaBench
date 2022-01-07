; ModuleID = '/home/carl/AnghaBench/linux/tools/objtool/extr_special.c_special_get_alts.c'
source_filename = "/home/carl/AnghaBench/linux/tools/objtool/extr_special.c_special_get_alts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.special_entry = type { i32, i64 }
%struct.elf = type { i32 }
%struct.list_head = type { i32 }
%struct.section = type { i32, i32 }
%struct.special_alt = type { i32 }

@entries = common dso_local global %struct.special_entry* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s size not a multiple of %d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @special_get_alts(%struct.elf* %0, %struct.list_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.special_entry*, align 8
  %7 = alloca %struct.section*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.special_alt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.elf* %0, %struct.elf** %4, align 8
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  %12 = load %struct.list_head*, %struct.list_head** %5, align 8
  %13 = call i32 @INIT_LIST_HEAD(%struct.list_head* %12)
  %14 = load %struct.special_entry*, %struct.special_entry** @entries, align 8
  store %struct.special_entry* %14, %struct.special_entry** %6, align 8
  br label %15

15:                                               ; preds = %86, %2
  %16 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %17 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %89

20:                                               ; preds = %15
  %21 = load %struct.elf*, %struct.elf** %4, align 8
  %22 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %23 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call %struct.section* @find_section_by_name(%struct.elf* %21, i64 %24)
  store %struct.section* %25, %struct.section** %7, align 8
  %26 = load %struct.section*, %struct.section** %7, align 8
  %27 = icmp ne %struct.section* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %86

29:                                               ; preds = %20
  %30 = load %struct.section*, %struct.section** %7, align 8
  %31 = getelementptr inbounds %struct.section, %struct.section* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %34 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = srem i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.section*, %struct.section** %7, align 8
  %40 = getelementptr inbounds %struct.section, %struct.section* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %43 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  store i32 -1, i32* %3, align 4
  br label %90

46:                                               ; preds = %29
  %47 = load %struct.section*, %struct.section** %7, align 8
  %48 = getelementptr inbounds %struct.section, %struct.section* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %51 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %49, %52
  store i32 %53, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %82, %46
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %85

58:                                               ; preds = %54
  %59 = call %struct.special_alt* @malloc(i32 4)
  store %struct.special_alt* %59, %struct.special_alt** %9, align 8
  %60 = load %struct.special_alt*, %struct.special_alt** %9, align 8
  %61 = icmp ne %struct.special_alt* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = call i32 (i8*, ...) @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %90

64:                                               ; preds = %58
  %65 = load %struct.special_alt*, %struct.special_alt** %9, align 8
  %66 = call i32 @memset(%struct.special_alt* %65, i32 0, i32 4)
  %67 = load %struct.elf*, %struct.elf** %4, align 8
  %68 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %69 = load %struct.section*, %struct.section** %7, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.special_alt*, %struct.special_alt** %9, align 8
  %72 = call i32 @get_alt_entry(%struct.elf* %67, %struct.special_entry* %68, %struct.section* %69, i32 %70, %struct.special_alt* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %64
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %3, align 4
  br label %90

77:                                               ; preds = %64
  %78 = load %struct.special_alt*, %struct.special_alt** %9, align 8
  %79 = getelementptr inbounds %struct.special_alt, %struct.special_alt* %78, i32 0, i32 0
  %80 = load %struct.list_head*, %struct.list_head** %5, align 8
  %81 = call i32 @list_add_tail(i32* %79, %struct.list_head* %80)
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %54

85:                                               ; preds = %54
  br label %86

86:                                               ; preds = %85, %28
  %87 = load %struct.special_entry*, %struct.special_entry** %6, align 8
  %88 = getelementptr inbounds %struct.special_entry, %struct.special_entry* %87, i32 1
  store %struct.special_entry* %88, %struct.special_entry** %6, align 8
  br label %15

89:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %75, %62, %38
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local %struct.section* @find_section_by_name(%struct.elf*, i64) #1

declare dso_local i32 @WARN(i8*, ...) #1

declare dso_local %struct.special_alt* @malloc(i32) #1

declare dso_local i32 @memset(%struct.special_alt*, i32, i32) #1

declare dso_local i32 @get_alt_entry(%struct.elf*, %struct.special_entry*, %struct.section*, i32, %struct.special_alt*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
