; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_util.c___ui__info_window.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/ui/tui/extr_util.c___ui__info_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLtt_Screen_Rows = common dso_local global i32 0, align 4
@SLtt_Screen_Cols = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ui__info_window(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %11, align 8
  br label %15

15:                                               ; preds = %3, %43
  %16 = load i8*, i8** %11, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 10)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %11, align 8
  %22 = call i8* @strchr(i8* %21, i8 signext 0)
  store i8* %22, i8** %12, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = ptrtoint i8* %24 to i64
  %27 = ptrtoint i8* %25 to i64
  %28 = sub i64 %26, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %33, %23
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %46

43:                                               ; preds = %35
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  store i8* %45, i8** %11, align 8
  br label %15

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 2
  store i32 %50, i32* %10, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %46
  %57 = load i32, i32* @SLtt_Screen_Rows, align 4
  %58 = sdiv i32 %57, 2
  %59 = load i32, i32* %10, align 4
  %60 = sdiv i32 %59, 2
  %61 = sub nsw i32 %58, %60
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* @SLtt_Screen_Cols, align 4
  %63 = sdiv i32 %62, 2
  %64 = load i32, i32* %9, align 4
  %65 = sdiv i32 %64, 2
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* %7, align 4
  %67 = call i32 @SLsmg_set_color(i32 0)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @SLsmg_draw_box(i32 %68, i32 %69, i32 %71, i32 %72)
  %74 = load i8*, i8** %4, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %56
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = call i32 @SLsmg_gotorc(i32 %77, i32 %79)
  %81 = load i8*, i8** %4, align 8
  %82 = call i32 @SLsmg_write_string(i8* %81)
  br label %83

83:                                               ; preds = %76, %56
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @SLsmg_gotorc(i32 %85, i32 %86)
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 2
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %90, %83
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 2
  store i32 %95, i32* %9, align 4
  %96 = load i8*, i8** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @SLsmg_write_wrapped_string(i8* %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 1)
  %102 = load i8*, i8** %6, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %122

104:                                              ; preds = %93
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %105, %106
  %108 = sub nsw i32 %107, 2
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @SLsmg_gotorc(i32 %108, i32 %109)
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @SLsmg_write_nstring(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %113, %114
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @SLsmg_gotorc(i32 %116, i32 %117)
  %119 = load i8*, i8** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @SLsmg_write_nstring(i8* %119, i32 %120)
  br label %122

122:                                              ; preds = %104, %93
  ret void
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @SLsmg_set_color(i32) #1

declare dso_local i32 @SLsmg_draw_box(i32, i32, i32, i32) #1

declare dso_local i32 @SLsmg_gotorc(i32, i32) #1

declare dso_local i32 @SLsmg_write_string(i8*) #1

declare dso_local i32 @SLsmg_write_wrapped_string(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @SLsmg_write_nstring(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
