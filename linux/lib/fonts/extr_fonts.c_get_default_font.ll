; ModuleID = '/home/carl/AnghaBench/linux/lib/fonts/extr_fonts.c_get_default_font.c'
source_filename = "/home/carl/AnghaBench/linux/lib/fonts/extr_fonts.c_get_default_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.font_desc = type { i32, i64, i32, i32 }

@num_fonts = common dso_local global i32 0, align 4
@fonts = common dso_local global %struct.font_desc** null, align 8
@MACH_IS_AMIGA = common dso_local global i64 0, align 8
@MACH_IS_MAC = common dso_local global i64 0, align 8
@PEARL8x8_IDX = common dso_local global i64 0, align 8
@VGA6x11_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.font_desc* @get_default_font(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.font_desc*, align 8
  %14 = alloca %struct.font_desc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.font_desc* null, %struct.font_desc** %14, align 8
  store i32 -10000, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %89, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @num_fonts, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %92

19:                                               ; preds = %15
  %20 = load %struct.font_desc**, %struct.font_desc*** @fonts, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.font_desc*, %struct.font_desc** %20, i64 %22
  %24 = load %struct.font_desc*, %struct.font_desc** %23, align 8
  store %struct.font_desc* %24, %struct.font_desc** %13, align 8
  %25 = load %struct.font_desc*, %struct.font_desc** %13, align 8
  %26 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 400
  %30 = zext i1 %29 to i32
  %31 = load %struct.font_desc*, %struct.font_desc** %13, align 8
  %32 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp sle i32 %33, 8
  %35 = zext i1 %34 to i32
  %36 = icmp eq i32 %30, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1000
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %37, %19
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.font_desc*, %struct.font_desc** %13, align 8
  %43 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %41, %44
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.font_desc*, %struct.font_desc** %13, align 8
  %48 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sdiv i32 %46, %49
  %51 = mul nsw i32 %45, %50
  %52 = sdiv i32 %51, 1000
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %53, 20
  br i1 %54, label %55, label %60

55:                                               ; preds = %40
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 20, %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %55, %40
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.font_desc*, %struct.font_desc** %13, align 8
  %63 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %64, 1
  %66 = shl i32 1, %65
  %67 = and i32 %61, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.font_desc*, %struct.font_desc** %13, align 8
  %72 = getelementptr inbounds %struct.font_desc, %struct.font_desc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = shl i32 1, %74
  %76 = and i32 %70, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1000
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %69, %60
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %11, align 4
  %87 = load %struct.font_desc*, %struct.font_desc** %13, align 8
  store %struct.font_desc* %87, %struct.font_desc** %14, align 8
  br label %88

88:                                               ; preds = %85, %81
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %15

92:                                               ; preds = %15
  %93 = load %struct.font_desc*, %struct.font_desc** %14, align 8
  ret %struct.font_desc* %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
