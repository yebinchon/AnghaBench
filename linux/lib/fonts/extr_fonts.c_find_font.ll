; ModuleID = '/home/carl/AnghaBench/linux/lib/fonts/extr_fonts.c_find_font.c'
source_filename = "/home/carl/AnghaBench/linux/lib/fonts/extr_fonts.c_find_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_desc = type { i32 }

@num_fonts = common dso_local global i32 0, align 4
@fonts = common dso_local global %struct.font_desc** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.font_desc* @find_font(i8* %0) #0 {
  %2 = alloca %struct.font_desc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @num_fonts, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUILD_BUG_ON(i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %32, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @num_fonts, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  %15 = load %struct.font_desc**, %struct.font_desc*** @fonts, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.font_desc*, %struct.font_desc** %15, i64 %17
  %19 = load %struct.font_desc*, %struct.font_desc** %18, align 8
  %20 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strcmp(i32 %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %14
  %26 = load %struct.font_desc**, %struct.font_desc*** @fonts, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.font_desc*, %struct.font_desc** %26, i64 %28
  %30 = load %struct.font_desc*, %struct.font_desc** %29, align 8
  store %struct.font_desc* %30, %struct.font_desc** %2, align 8
  br label %36

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %10

35:                                               ; preds = %10
  store %struct.font_desc* null, %struct.font_desc** %2, align 8
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.font_desc*, %struct.font_desc** %2, align 8
  ret %struct.font_desc* %37
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
