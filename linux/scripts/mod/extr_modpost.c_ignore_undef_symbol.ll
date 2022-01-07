; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_ignore_undef_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_modpost.c_ignore_undef_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"__this_module\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"_GLOBAL_OFFSET_TABLE_\00", align 1
@EM_PPC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"_restgpr_\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"_savegpr_\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"_rest32gpr_\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"_save32gpr_\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"_restvr_\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"_savevr_\00", align 1
@EM_PPC64 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"_restgpr0_\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"_savegpr0_\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c".TOC.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elf_info*, i8*)* @ignore_undef_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ignore_undef_symbol(%struct.elf_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.elf_info*, align 8
  %5 = alloca i8*, align 8
  store %struct.elf_info* %0, %struct.elf_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = call i64 @strcmp(i8* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %80

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strcmp(i8* %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %80

15:                                               ; preds = %10
  %16 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %17 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EM_PPC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strstarts(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %47, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strstarts(i8* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @strstarts(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strstarts(i8* %36, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @strstarts(i8* %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i8*, i8** %5, align 8
  %45 = call i64 @strstarts(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %39, %35, %31, %27, %23
  store i32 1, i32* %3, align 4
  br label %80

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %15
  %50 = load %struct.elf_info*, %struct.elf_info** %4, align 8
  %51 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @EM_PPC64, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %49
  %58 = load i8*, i8** %5, align 8
  %59 = call i64 @strstarts(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %77, label %61

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @strstarts(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strstarts(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strstarts(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %69, %65, %61, %57
  store i32 1, i32* %3, align 4
  br label %80

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %49
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %77, %47, %14, %9
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strstarts(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
