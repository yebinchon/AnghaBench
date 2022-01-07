; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_find_elf_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_find_elf_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32 }

@STT_SECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.elf_info*, i64, %struct.TYPE_6__*)* @find_elf_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @find_elf_symbol(%struct.elf_info* %0, i64 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.elf_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.elf_info* %0, %struct.elf_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store i64 20, i64* %10, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %4, align 8
  br label %92

19:                                               ; preds = %3
  %20 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %22 = call i32 @get_secindex(%struct.elf_info* %20, %struct.TYPE_6__* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %24 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %23, i32 0, i32 1
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %8, align 8
  br label %26

26:                                               ; preds = %83, %19
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %29 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ult %struct.TYPE_6__* %27, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %26
  %33 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = call i32 @get_secindex(%struct.elf_info* %33, %struct.TYPE_6__* %34)
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %83

39:                                               ; preds = %32
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @ELF_ST_TYPE(i32 %42)
  %44 = load i64, i64* @STT_SECTION, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %83

47:                                               ; preds = %39
  %48 = load %struct.elf_info*, %struct.elf_info** %5, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = call i32 @is_valid_name(%struct.elf_info* %48, %struct.TYPE_6__* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %83

53:                                               ; preds = %47
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %4, align 8
  br label %92

61:                                               ; preds = %53
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = sub nsw i64 %64, %65
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %70, %73
  store i64 %74, i64* %11, align 8
  br label %75

75:                                               ; preds = %69, %61
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i64, i64* %11, align 8
  store i64 %80, i64* %10, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %81, %struct.TYPE_6__** %9, align 8
  br label %82

82:                                               ; preds = %79, %75
  br label %83

83:                                               ; preds = %82, %52, %46, %38
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 1
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %8, align 8
  br label %26

86:                                               ; preds = %26
  %87 = load i64, i64* %10, align 8
  %88 = icmp slt i64 %87, 20
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %4, align 8
  br label %92

91:                                               ; preds = %86
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %92

92:                                               ; preds = %91, %89, %59, %17
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %93
}

declare dso_local i32 @get_secindex(%struct.elf_info*, %struct.TYPE_6__*) #1

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @is_valid_name(%struct.elf_info*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
