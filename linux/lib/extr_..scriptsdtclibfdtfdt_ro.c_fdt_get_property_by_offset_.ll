; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_ro.c_fdt_get_property_by_offset_.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_ro.c_fdt_get_property_by_offset_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fdt_property* (i8*, i32, i32*)* @fdt_get_property_by_offset_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fdt_property* @fdt_get_property_by_offset_(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.fdt_property*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fdt_property*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @fdt_check_prop_offset_(i8* %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %14
  store %struct.fdt_property* null, %struct.fdt_property** %4, align 8
  br label %34

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.fdt_property* @fdt_offset_ptr_(i8* %22, i32 %23)
  store %struct.fdt_property* %24, %struct.fdt_property** %9, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.fdt_property*, %struct.fdt_property** %9, align 8
  %29 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %28, i32 0, i32 0
  %30 = call i32 @fdt32_ld(i32* %29)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.fdt_property*, %struct.fdt_property** %9, align 8
  store %struct.fdt_property* %33, %struct.fdt_property** %4, align 8
  br label %34

34:                                               ; preds = %32, %20
  %35 = load %struct.fdt_property*, %struct.fdt_property** %4, align 8
  ret %struct.fdt_property* %35
}

declare dso_local i32 @fdt_check_prop_offset_(i8*, i32) #1

declare dso_local %struct.fdt_property* @fdt_offset_ptr_(i8*, i32) #1

declare dso_local i32 @fdt32_ld(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
