; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_node_header = type { i8* }

@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fdt_get_name(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.fdt_node_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.fdt_node_header* @fdt_offset_ptr_(i8* %12, i32 %13)
  store %struct.fdt_node_header* %14, %struct.fdt_node_header** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @fdt_ro_probe_(i8* %15)
  store i32 %16, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @fdt_check_node_offset_(i8* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %3
  br label %51

24:                                               ; preds = %18
  %25 = load %struct.fdt_node_header*, %struct.fdt_node_header** %8, align 8
  %26 = getelementptr inbounds %struct.fdt_node_header, %struct.fdt_node_header* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @fdt_version(i8* %28)
  %30 = icmp slt i32 %29, 16
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load i8*, i8** %9, align 8
  %33 = call i8* @strrchr(i8* %32, i8 signext 47)
  store i8* %33, i8** %11, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %10, align 4
  br label %51

39:                                               ; preds = %31
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %9, align 8
  br label %42

42:                                               ; preds = %39, %24
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i8*, i8** %9, align 8
  store i8* %50, i8** %4, align 8
  br label %58

51:                                               ; preds = %36, %23
  %52 = load i32*, i32** %7, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  store i8* null, i8** %4, align 8
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

declare dso_local %struct.fdt_node_header* @fdt_offset_ptr_(i8*, i32) #1

declare dso_local i32 @fdt_ro_probe_(i8*) #1

declare dso_local i32 @fdt_check_node_offset_(i8*, i32) #1

declare dso_local i32 @fdt_version(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
