; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_getprop_namelen.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_getprop_namelen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fdt_getprop_namelen(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fdt_property*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32*, i32** %11, align 8
  %19 = call %struct.fdt_property* @fdt_get_property_namelen_(i8* %14, i32 %15, i8* %16, i32 %17, i32* %18, i32* %12)
  store %struct.fdt_property* %19, %struct.fdt_property** %13, align 8
  %20 = load %struct.fdt_property*, %struct.fdt_property** %13, align 8
  %21 = icmp ne %struct.fdt_property* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %47

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @fdt_version(i8* %24)
  %26 = icmp slt i32 %25, 16
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 16
  %31 = urem i64 %30, 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.fdt_property*, %struct.fdt_property** %13, align 8
  %35 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %34, i32 0, i32 1
  %36 = call i32 @fdt32_ld(i32* %35)
  %37 = icmp sge i32 %36, 8
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.fdt_property*, %struct.fdt_property** %13, align 8
  %40 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr i8, i8* %41, i64 4
  store i8* %42, i8** %6, align 8
  br label %47

43:                                               ; preds = %33, %27, %23
  %44 = load %struct.fdt_property*, %struct.fdt_property** %13, align 8
  %45 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %6, align 8
  br label %47

47:                                               ; preds = %43, %38, %22
  %48 = load i8*, i8** %6, align 8
  ret i8* %48
}

declare dso_local %struct.fdt_property* @fdt_get_property_namelen_(i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @fdt_version(i8*) #1

declare dso_local i32 @fdt32_ld(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
