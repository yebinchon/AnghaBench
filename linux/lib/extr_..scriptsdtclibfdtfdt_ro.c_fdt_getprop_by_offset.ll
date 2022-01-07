; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_ro.c_fdt_getprop_by_offset.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_ro.c_fdt_getprop_by_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i8*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fdt_getprop_by_offset(i8* %0, i32 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.fdt_property*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32*, i32** %9, align 8
  %16 = call %struct.fdt_property* @fdt_get_property_by_offset_(i8* %13, i32 %14, i32* %15)
  store %struct.fdt_property* %16, %struct.fdt_property** %10, align 8
  %17 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %18 = icmp ne %struct.fdt_property* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %65

20:                                               ; preds = %4
  %21 = load i8**, i8*** %8, align 8
  %22 = icmp ne i8** %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %26 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %25, i32 0, i32 2
  %27 = call i32 @fdt32_ld(i32* %26)
  %28 = call i8* @fdt_get_string(i8* %24, i32 %27, i32* %12)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %12, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %31
  store i8* null, i8** %5, align 8
  br label %65

38:                                               ; preds = %23
  %39 = load i8*, i8** %11, align 8
  %40 = load i8**, i8*** %8, align 8
  store i8* %39, i8** %40, align 8
  br label %41

41:                                               ; preds = %38, %20
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @fdt_version(i8* %42)
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 16
  %49 = urem i64 %48, 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %53 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %52, i32 0, i32 1
  %54 = call i32 @fdt32_ld(i32* %53)
  %55 = icmp sge i32 %54, 8
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %58 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr i8, i8* %59, i64 4
  store i8* %60, i8** %5, align 8
  br label %65

61:                                               ; preds = %51, %45, %41
  %62 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %63 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %61, %56, %37, %19
  %66 = load i8*, i8** %5, align 8
  ret i8* %66
}

declare dso_local %struct.fdt_property* @fdt_get_property_by_offset_(i8*, i32, i32*) #1

declare dso_local i8* @fdt_get_string(i8*, i32, i32*) #1

declare dso_local i32 @fdt32_ld(i32*) #1

declare dso_local i32 @fdt_version(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
