; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_find_elf_symbol2.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_find_elf_symbol2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.elf_info = type { %struct.TYPE_5__*, %struct.TYPE_5__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.elf_info*, i64, i8*)* @find_elf_symbol2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @find_elf_symbol2(%struct.elf_info* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.elf_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.elf_info* %0, %struct.elf_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %8, align 8
  store i64 -1, i64* %9, align 8
  %11 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %12 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %7, align 8
  br label %14

14:                                               ; preds = %78, %3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %17 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ult %struct.TYPE_5__* %15, %18
  br i1 %19, label %20, label %81

20:                                               ; preds = %14
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @is_shndx_special(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %78

27:                                               ; preds = %20
  %28 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %29 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %31 = call i32 @get_secindex(%struct.elf_info* %29, %struct.TYPE_5__* %30)
  %32 = call i8* @sec_name(%struct.elf_info* %28, i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %78

38:                                               ; preds = %27
  %39 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %41 = call i32 @is_valid_name(%struct.elf_info* %39, %struct.TYPE_5__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %78

44:                                               ; preds = %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %77

50:                                               ; preds = %44
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load i64, i64* %9, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  store i64 %63, i64* %9, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %8, align 8
  br label %76

65:                                               ; preds = %50
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %74, %struct.TYPE_5__** %8, align 8
  br label %75

75:                                               ; preds = %73, %65
  br label %76

76:                                               ; preds = %75, %58
  br label %77

77:                                               ; preds = %76, %44
  br label %78

78:                                               ; preds = %77, %43, %37, %26
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 1
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %7, align 8
  br label %14

81:                                               ; preds = %14
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  ret %struct.TYPE_5__* %82
}

declare dso_local i64 @is_shndx_special(i32) #1

declare dso_local i8* @sec_name(%struct.elf_info*, i32) #1

declare dso_local i32 @get_secindex(%struct.elf_info*, %struct.TYPE_5__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @is_valid_name(%struct.elf_info*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
