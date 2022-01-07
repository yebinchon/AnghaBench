; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_rw.c_fdt_delprop.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_rw.c_fdt_delprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_delprop(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fdt_property*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @FDT_RW_PROBE(i8* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = call %struct.fdt_property* @fdt_get_property_w(i8* %13, i32 %14, i8* %15, i32* %9)
  store %struct.fdt_property* %16, %struct.fdt_property** %8, align 8
  %17 = load %struct.fdt_property*, %struct.fdt_property** %8, align 8
  %18 = icmp ne %struct.fdt_property* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %31

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @FDT_TAGALIGN(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = add i64 4, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %10, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.fdt_property*, %struct.fdt_property** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @fdt_splice_struct_(i8* %27, %struct.fdt_property* %28, i32 %29, i32 0)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %21, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @FDT_RW_PROBE(i8*) #1

declare dso_local %struct.fdt_property* @fdt_get_property_w(i8*, i32, i8*, i32*) #1

declare dso_local i32 @FDT_TAGALIGN(i32) #1

declare dso_local i32 @fdt_splice_struct_(i8*, %struct.fdt_property*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
