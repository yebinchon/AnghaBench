; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_resource.c_walk_system_ram_range.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_resource.c_walk_system_ram_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@IORESOURCE_SYSTEM_RAM = common dso_local global i64 0, align 8
@IORESOURCE_BUSY = common dso_local global i64 0, align 8
@IORES_DESC_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @walk_system_ram_range(i64 %0, i64 %1, i8* %2, i32 (i64, i64, i8*)* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i64, i64, i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.resource, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 (i64, i64, i8*)* %3, i32 (i64, i64, i8*)** %8, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load i64, i64* %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %22, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i64, i64* @IORESOURCE_SYSTEM_RAM, align 8
  %30 = load i64, i64* @IORESOURCE_BUSY, align 8
  %31 = or i64 %29, %30
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %69, %4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* @IORES_DESC_NONE, align 4
  %41 = call i32 @find_next_iomem_res(i32 %37, i32 %38, i64 %39, i32 %40, i32 0, %struct.resource* %12)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %36, %32
  %45 = phi i1 [ false, %32 ], [ %43, %36 ]
  br i1 %45, label %46, label %73

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @PFN_UP(i32 %48)
  store i64 %49, i64* %13, align 8
  %50 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i64 @PFN_DOWN(i32 %52)
  store i64 %53, i64* %14, align 8
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load i32 (i64, i64, i8*)*, i32 (i64, i64, i8*)** %8, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* %13, align 8
  %62 = sub i64 %60, %61
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 %58(i64 %59, i64 %62, i8* %63)
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %57, %46
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %32

73:                                               ; preds = %68, %44
  %74 = load i32, i32* %15, align 4
  ret i32 %74
}

declare dso_local i32 @find_next_iomem_res(i32, i32, i64, i32, i32, %struct.resource*) #1

declare dso_local i64 @PFN_UP(i32) #1

declare dso_local i64 @PFN_DOWN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
