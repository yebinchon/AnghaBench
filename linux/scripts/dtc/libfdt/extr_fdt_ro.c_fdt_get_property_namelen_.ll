; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_get_property_namelen_.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_get_property_namelen_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32 }

@FDT_ERR_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fdt_property* (i8*, i32, i8*, i32, i32*, i32*)* @fdt_get_property_namelen_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fdt_property* @fdt_get_property_namelen_(i8* %0, i32 %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.fdt_property*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.fdt_property*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @fdt_first_property_offset(i8* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %48, %6
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %18
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = call %struct.fdt_property* @fdt_get_property_by_offset_(i8* %22, i32 %23, i32* %24)
  store %struct.fdt_property* %25, %struct.fdt_property** %14, align 8
  %26 = icmp ne %struct.fdt_property* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @FDT_ERR_INTERNAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %52

30:                                               ; preds = %21
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.fdt_property*, %struct.fdt_property** %14, align 8
  %33 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %32, i32 0, i32 0
  %34 = call i32 @fdt32_ld(i32* %33)
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @fdt_string_eq_(i8* %31, i32 %34, i8* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load i32*, i32** %13, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %13, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.fdt_property*, %struct.fdt_property** %14, align 8
  store %struct.fdt_property* %46, %struct.fdt_property** %7, align 8
  br label %59

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @fdt_next_property_offset(i8* %49, i32 %50)
  store i32 %51, i32* %9, align 4
  br label %18

52:                                               ; preds = %27, %18
  %53 = load i32*, i32** %12, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %52
  store %struct.fdt_property* null, %struct.fdt_property** %7, align 8
  br label %59

59:                                               ; preds = %58, %45
  %60 = load %struct.fdt_property*, %struct.fdt_property** %7, align 8
  ret %struct.fdt_property* %60
}

declare dso_local i32 @fdt_first_property_offset(i8*, i32) #1

declare dso_local %struct.fdt_property* @fdt_get_property_by_offset_(i8*, i32, i32*) #1

declare dso_local i64 @fdt_string_eq_(i8*, i32, i8*, i32) #1

declare dso_local i32 @fdt32_ld(i32*) #1

declare dso_local i32 @fdt_next_property_offset(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
