; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_overlay.c_fdt_overlay_apply.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_overlay.c_fdt_overlay_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_overlay_apply(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @FDT_RO_PROBE(i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @FDT_RO_PROBE(i8* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @fdt_find_max_phandle(i8* %12, i32* %6)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %55

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @overlay_adjust_local_phandles(i8* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %55

24:                                               ; preds = %17
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @overlay_update_local_references(i8* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %55

31:                                               ; preds = %24
  %32 = load i8*, i8** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @overlay_fixup_phandles(i8* %32, i8* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %55

38:                                               ; preds = %31
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @overlay_merge(i8* %39, i8* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %55

45:                                               ; preds = %38
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @overlay_symbol_update(i8* %46, i8* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %55

52:                                               ; preds = %45
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @fdt_set_magic(i8* %53, i32 -1)
  store i32 0, i32* %3, align 4
  br label %61

55:                                               ; preds = %51, %44, %37, %30, %23, %16
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @fdt_set_magic(i8* %56, i32 -1)
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @fdt_set_magic(i8* %58, i32 -1)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %55, %52
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @FDT_RO_PROBE(i8*) #1

declare dso_local i32 @fdt_find_max_phandle(i8*, i32*) #1

declare dso_local i32 @overlay_adjust_local_phandles(i8*, i32) #1

declare dso_local i32 @overlay_update_local_references(i8*, i32) #1

declare dso_local i32 @overlay_fixup_phandles(i8*, i8*) #1

declare dso_local i32 @overlay_merge(i8*, i8*) #1

declare dso_local i32 @overlay_symbol_update(i8*, i8*) #1

declare dso_local i32 @fdt_set_magic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
