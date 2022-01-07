; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_rw.c_fdt_resize_property_.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_rw.c_fdt_resize_property_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, %struct.fdt_property**)* @fdt_resize_property_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdt_resize_property_(i8* %0, i32 %1, i8* %2, i32 %3, %struct.fdt_property** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fdt_property**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.fdt_property** %4, %struct.fdt_property*** %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %9, align 8
  %17 = call %struct.fdt_property* @fdt_get_property_w(i8* %14, i32 %15, i8* %16, i32* %12)
  %18 = load %struct.fdt_property**, %struct.fdt_property*** %11, align 8
  store %struct.fdt_property* %17, %struct.fdt_property** %18, align 8
  %19 = load %struct.fdt_property**, %struct.fdt_property*** %11, align 8
  %20 = load %struct.fdt_property*, %struct.fdt_property** %19, align 8
  %21 = icmp ne %struct.fdt_property* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %6, align 4
  br label %44

24:                                               ; preds = %5
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.fdt_property**, %struct.fdt_property*** %11, align 8
  %27 = load %struct.fdt_property*, %struct.fdt_property** %26, align 8
  %28 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @FDT_TAGALIGN(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @FDT_TAGALIGN(i32 %32)
  %34 = call i32 @fdt_splice_struct_(i8* %25, i32 %29, i32 %31, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %44

38:                                               ; preds = %24
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @cpu_to_fdt32(i32 %39)
  %41 = load %struct.fdt_property**, %struct.fdt_property*** %11, align 8
  %42 = load %struct.fdt_property*, %struct.fdt_property** %41, align 8
  %43 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %36, %22
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local %struct.fdt_property* @fdt_get_property_w(i8*, i32, i8*, i32*) #1

declare dso_local i32 @fdt_splice_struct_(i8*, i32, i32, i32) #1

declare dso_local i32 @FDT_TAGALIGN(i32) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
