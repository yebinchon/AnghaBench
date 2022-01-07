; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_rw.c_fdt_appendprop.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_rw.c_fdt_appendprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_appendprop(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fdt_property*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @FDT_RW_PROBE(i8* %16)
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = call %struct.fdt_property* @fdt_get_property_w(i8* %18, i32 %19, i8* %20, i32* %14)
  store %struct.fdt_property* %21, %struct.fdt_property** %12, align 8
  %22 = load %struct.fdt_property*, %struct.fdt_property** %12, align 8
  %23 = icmp ne %struct.fdt_property* %22, null
  br i1 %23, label %24, label %55

24:                                               ; preds = %5
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %14, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %15, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.fdt_property*, %struct.fdt_property** %12, align 8
  %30 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @FDT_TAGALIGN(i32 %32)
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @FDT_TAGALIGN(i32 %34)
  %36 = call i32 @fdt_splice_struct_(i8* %28, i64 %31, i32 %33, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %13, align 4
  store i32 %40, i32* %6, align 4
  br label %73

41:                                               ; preds = %24
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @cpu_to_fdt32(i32 %42)
  %44 = load %struct.fdt_property*, %struct.fdt_property** %12, align 8
  %45 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.fdt_property*, %struct.fdt_property** %12, align 8
  %47 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i8*, i8** %10, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @memcpy(i64 %51, i8* %52, i32 %53)
  br label %72

55:                                               ; preds = %5
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @fdt_add_property_(i8* %56, i32 %57, i8* %58, i32 %59, %struct.fdt_property** %12)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %73

65:                                               ; preds = %55
  %66 = load %struct.fdt_property*, %struct.fdt_property** %12, align 8
  %67 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @memcpy(i64 %68, i8* %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %41
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %63, %39
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @FDT_RW_PROBE(i8*) #1

declare dso_local %struct.fdt_property* @fdt_get_property_w(i8*, i32, i8*, i32*) #1

declare dso_local i32 @fdt_splice_struct_(i8*, i64, i32, i32) #1

declare dso_local i32 @FDT_TAGALIGN(i32) #1

declare dso_local i32 @cpu_to_fdt32(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @fdt_add_property_(i8*, i32, i8*, i32, %struct.fdt_property**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
