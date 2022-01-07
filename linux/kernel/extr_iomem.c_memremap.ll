; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_iomem.c_memremap.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_iomem.c_memremap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IORESOURCE_SYSTEM_RAM = common dso_local global i32 0, align 4
@IORES_DESC_NONE = common dso_local global i32 0, align 4
@REGION_MIXED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"memremap attempted on mixed range %pa size: %#lx\0A\00", align 1
@MEMREMAP_WB = common dso_local global i64 0, align 8
@REGION_INTERSECTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"memremap attempted on ram %pa size: %#lx\0A\00", align 1
@MEMREMAP_WT = common dso_local global i64 0, align 8
@MEMREMAP_WC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memremap(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load i32, i32* @IORESOURCE_SYSTEM_RAM, align 4
  %13 = load i32, i32* @IORES_DESC_NONE, align 4
  %14 = call i32 @region_intersects(i32 %10, i64 %11, i32 %12, i32 %13)
  store i32 %14, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %87

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @REGION_MIXED, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32* %5, i64 %23)
  store i8* null, i8** %4, align 8
  br label %87

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @MEMREMAP_WB, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @REGION_INTERSECTS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i8* @try_ram_remap(i32 %35, i64 %36, i64 %37)
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %34, %30
  %40 = load i8*, i8** %9, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load i64, i64* %6, align 8
  %45 = call i8* @arch_memremap_wb(i32 %43, i64 %44)
  store i8* %45, i8** %9, align 8
  br label %46

46:                                               ; preds = %42, %39
  br label %47

47:                                               ; preds = %46, %25
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @REGION_INTERSECTS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* @MEMREMAP_WB, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32* %5, i64 %59)
  store i8* null, i8** %4, align 8
  br label %87

61:                                               ; preds = %54, %50, %47
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* @MEMREMAP_WT, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %5, align 4
  %71 = load i64, i64* %6, align 8
  %72 = call i8* @ioremap_wt(i32 %70, i64 %71)
  store i8* %72, i8** %9, align 8
  br label %73

73:                                               ; preds = %69, %64, %61
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* @MEMREMAP_WC, align 8
  %79 = and i64 %77, %78
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  %83 = load i64, i64* %6, align 8
  %84 = call i8* @ioremap_wc(i32 %82, i64 %83)
  store i8* %84, i8** %9, align 8
  br label %85

85:                                               ; preds = %81, %76, %73
  %86 = load i8*, i8** %9, align 8
  store i8* %86, i8** %4, align 8
  br label %87

87:                                               ; preds = %85, %58, %22, %17
  %88 = load i8*, i8** %4, align 8
  ret i8* %88
}

declare dso_local i32 @region_intersects(i32, i64, i32, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32*, i64) #1

declare dso_local i8* @try_ram_remap(i32, i64, i64) #1

declare dso_local i8* @arch_memremap_wb(i32, i64) #1

declare dso_local i8* @ioremap_wt(i32, i64) #1

declare dso_local i8* @ioremap_wc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
