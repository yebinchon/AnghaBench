; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_sw.c_fdt_property_placeholder.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/libfdt/extr_fdt_sw.c_fdt_property_placeholder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i8*, i8*, i8*, i8* }

@FDT_CREATE_FLAG_NO_NAME_DEDUP = common dso_local global i32 0, align 4
@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@FDT_PROP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_property_placeholder(i8* %0, i8* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.fdt_property*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @FDT_SW_PROBE_STRUCT(i8* %13)
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @sw_flags(i8* %15)
  %17 = load i32, i32* @FDT_CREATE_FLAG_NO_NAME_DEDUP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @fdt_add_string_(i8* %21, i8* %22)
  store i32 %23, i32* %11, align 4
  br label %28

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @fdt_find_add_string_(i8* %25, i8* %26, i32* %12)
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %69

34:                                               ; preds = %28
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i64 @FDT_TAGALIGN(i32 %36)
  %38 = add i64 32, %37
  %39 = call %struct.fdt_property* @fdt_grab_space_(i8* %35, i64 %38)
  store %struct.fdt_property* %39, %struct.fdt_property** %10, align 8
  %40 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %41 = icmp ne %struct.fdt_property* %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @fdt_del_last_string_(i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %42
  %50 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %69

52:                                               ; preds = %34
  %53 = load i32, i32* @FDT_PROP, align 4
  %54 = call i8* @cpu_to_fdt32(i32 %53)
  %55 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %56 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i8* @cpu_to_fdt32(i32 %57)
  %59 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %60 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %59, i32 0, i32 2
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i8* @cpu_to_fdt32(i32 %61)
  %63 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %64 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.fdt_property*, %struct.fdt_property** %10, align 8
  %66 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8**, i8*** %9, align 8
  store i8* %67, i8** %68, align 8
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %52, %49, %31
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @FDT_SW_PROBE_STRUCT(i8*) #1

declare dso_local i32 @sw_flags(i8*) #1

declare dso_local i32 @fdt_add_string_(i8*, i8*) #1

declare dso_local i32 @fdt_find_add_string_(i8*, i8*, i32*) #1

declare dso_local %struct.fdt_property* @fdt_grab_space_(i8*, i64) #1

declare dso_local i64 @FDT_TAGALIGN(i32) #1

declare dso_local i32 @fdt_del_last_string_(i8*, i8*) #1

declare dso_local i8* @cpu_to_fdt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
