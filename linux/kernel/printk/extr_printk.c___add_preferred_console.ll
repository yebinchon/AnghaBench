; ModuleID = '/home/carl/AnghaBench/linux/kernel/printk/extr_printk.c___add_preferred_console.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/printk/extr_printk.c___add_preferred_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.console_cmdline = type { i32, i8*, i64* }

@console_cmdline = common dso_local global %struct.console_cmdline* null, align 8
@MAX_CMDLINECONSOLES = common dso_local global i32 0, align 4
@preferred_console = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8*)* @__add_preferred_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__add_preferred_console(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.console_cmdline*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.console_cmdline*, %struct.console_cmdline** @console_cmdline, align 8
  store %struct.console_cmdline* %12, %struct.console_cmdline** %10, align 8
  br label %13

13:                                               ; preds = %46, %4
  %14 = load i32, i32* %11, align 4
  %15 = load i32, i32* @MAX_CMDLINECONSOLES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %19 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %18, i32 0, i32 2
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %17, %13
  %25 = phi i1 [ false, %13 ], [ %23, %17 ]
  br i1 %25, label %26, label %51

26:                                               ; preds = %24
  %27 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %28 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strcmp(i64* %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %26
  %34 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %35 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* @preferred_console, align 4
  br label %44

44:                                               ; preds = %42, %39
  store i32 0, i32* %5, align 4
  br label %78

45:                                               ; preds = %33, %26
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %50 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %49, i32 1
  store %struct.console_cmdline* %50, %struct.console_cmdline** %10, align 8
  br label %13

51:                                               ; preds = %24
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @MAX_CMDLINECONSOLES, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @E2BIG, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %78

58:                                               ; preds = %51
  %59 = load i8*, i8** %9, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* @preferred_console, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %65 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @strlcpy(i64* %66, i8* %67, i32 8)
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %71 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @braille_set_options(%struct.console_cmdline* %72, i8* %73)
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.console_cmdline*, %struct.console_cmdline** %10, align 8
  %77 = getelementptr inbounds %struct.console_cmdline, %struct.console_cmdline* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %63, %55, %44
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @strcmp(i64*, i8*) #1

declare dso_local i32 @strlcpy(i64*, i8*, i32) #1

declare dso_local i32 @braille_set_options(%struct.console_cmdline*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
