; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_skip-callchain-idx.c_check_return_addr.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/arch/powerpc/util/extr_skip-callchain-idx.c_check_return_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i8*, i32* }

@offline_callbacks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"dwfl_begin() failed: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"dwfl_report_elf() failed %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"dwfl_addrmodule() failed, %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Return address register unavailable: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dso*, i32, i32)* @check_return_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_return_addr(%struct.dso* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.dso* %0, %struct.dso** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %14, align 4
  %19 = load %struct.dso*, %struct.dso** %5, align 8
  %20 = getelementptr inbounds %struct.dso, %struct.dso* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %16, align 8
  %22 = load %struct.dso*, %struct.dso** %5, align 8
  %23 = getelementptr inbounds %struct.dso, %struct.dso* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %3
  %28 = call i32* @dwfl_begin(i32* @offline_callbacks)
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = call i32 @dwarf_errmsg(i32 -1)
  %33 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 -1, i32* %4, align 4
  br label %88

34:                                               ; preds = %27
  %35 = load i32*, i32** %9, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32* @dwfl_report_elf(i32* %35, i8* %36, i8* %37, i32 -1, i32 %38, i32 0)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = call i32 @dwarf_errmsg(i32 -1)
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @dwfl_end(i32* %45)
  br label %86

47:                                               ; preds = %34
  %48 = load i32*, i32** %9, align 8
  %49 = load %struct.dso*, %struct.dso** %5, align 8
  %50 = getelementptr inbounds %struct.dso, %struct.dso* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %47, %3
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32* @dwfl_addrmodule(i32* %52, i32 %53)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = call i32 @dwarf_errmsg(i32 -1)
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %86

60:                                               ; preds = %51
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32* @get_eh_frame(i32* %61, i32 %62)
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32* @get_dwarf_frame(i32* %67, i32 %68)
  store i32* %69, i32** %11, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  br label %86

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @dwarf_frame_info(i32* %75, i32* %13, i32* %14, i32* %15)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = call i32 @dwarf_errmsg(i32 -1)
  %81 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  br label %86

82:                                               ; preds = %74
  %83 = load i32, i32* %12, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @check_return_reg(i32 %83, i32* %84)
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %79, %72, %57, %42
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %31
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32* @dwfl_begin(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dwarf_errmsg(i32) #1

declare dso_local i32* @dwfl_report_elf(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @dwfl_end(i32*) #1

declare dso_local i32* @dwfl_addrmodule(i32*, i32) #1

declare dso_local i32* @get_eh_frame(i32*, i32) #1

declare dso_local i32* @get_dwarf_frame(i32*, i32) #1

declare dso_local i32 @dwarf_frame_info(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @check_return_reg(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
