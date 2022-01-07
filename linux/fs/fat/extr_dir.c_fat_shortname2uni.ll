; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_shortname2uni.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_shortname2uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 }

@VFAT_SFN_DISPLAY_LOWER = common dso_local global i16 0, align 2
@VFAT_SFN_DISPLAY_WIN95 = common dso_local global i16 0, align 2
@VFAT_SFN_DISPLAY_WINNT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nls_table*, i8*, i32, i32*, i16, i32)* @fat_shortname2uni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_shortname2uni(%struct.nls_table* %0, i8* %1, i32 %2, i32* %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.nls_table*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nls_table* %0, %struct.nls_table** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i16 %4, i16* %11, align 2
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load i16, i16* %11, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, i16* @VFAT_SFN_DISPLAY_LOWER, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %6
  %21 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = call i32 @fat_short2lower_uni(%struct.nls_table* %21, i8* %22, i32 %23, i32* %24)
  store i32 %25, i32* %13, align 4
  br label %70

26:                                               ; preds = %6
  %27 = load i16, i16* %11, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @VFAT_SFN_DISPLAY_WIN95, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @fat_short2uni(%struct.nls_table* %34, i8* %35, i32 %36, i32* %37)
  store i32 %38, i32* %13, align 4
  br label %69

39:                                               ; preds = %26
  %40 = load i16, i16* %11, align 2
  %41 = zext i16 %40 to i32
  %42 = load i16, i16* @VFAT_SFN_DISPLAY_WINNT, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @fat_short2lower_uni(%struct.nls_table* %50, i8* %51, i32 %52, i32* %53)
  store i32 %54, i32* %13, align 4
  br label %61

55:                                               ; preds = %46
  %56 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @fat_short2uni(%struct.nls_table* %56, i8* %57, i32 %58, i32* %59)
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %55, %49
  br label %68

62:                                               ; preds = %39
  %63 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @fat_short2uni(%struct.nls_table* %63, i8* %64, i32 %65, i32* %66)
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %62, %61
  br label %69

69:                                               ; preds = %68, %33
  br label %70

70:                                               ; preds = %69, %20
  %71 = load i32, i32* %13, align 4
  ret i32 %71
}

declare dso_local i32 @fat_short2lower_uni(%struct.nls_table*, i8*, i32, i32*) #1

declare dso_local i32 @fat_short2uni(%struct.nls_table*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
