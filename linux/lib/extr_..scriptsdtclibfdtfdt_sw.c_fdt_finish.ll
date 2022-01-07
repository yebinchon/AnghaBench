; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_sw.c_fdt_finish.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_sw.c_fdt_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i8* }

@FDT_ERR_NOSPACE = common dso_local global i32 0, align 4
@FDT_END = common dso_local global i64 0, align 8
@FDT_PROP = common dso_local global i64 0, align 8
@FDT_FIRST_SUPPORTED_VERSION = common dso_local global i32 0, align 4
@FDT_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdt_finish(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fdt_property*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @FDT_SW_PROBE_STRUCT(i8* %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i8** @fdt_grab_space_(i8* %16, i32 8)
  store i8** %17, i8*** %5, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @FDT_ERR_NOSPACE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %98

23:                                               ; preds = %1
  %24 = load i64, i64* @FDT_END, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i8* @cpu_to_fdt32(i32 %25)
  %27 = load i8**, i8*** %5, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @fdt_totalsize(i8* %28)
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @fdt_size_dt_strings(i8* %30)
  %32 = sub nsw i32 %29, %31
  store i32 %32, i32* %6, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @fdt_off_dt_struct(i8* %33)
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @fdt_size_dt_struct(i8* %35)
  %37 = add nsw i32 %34, %36
  store i32 %37, i32* %7, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @fdt_size_dt_strings(i8* %46)
  %48 = call i32 @memmove(i8* %41, i8* %45, i32 %47)
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @fdt_set_off_dt_strings(i8* %49, i32 %50)
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %78, %23
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @fdt_next_tag(i8* %53, i32 %54, i32* %10)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* @FDT_END, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %52
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @FDT_PROP, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i8*, i8** %3, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call %struct.fdt_property* @fdt_offset_ptr_w_(i8* %63, i32 %64)
  store %struct.fdt_property* %65, %struct.fdt_property** %11, align 8
  %66 = load %struct.fdt_property*, %struct.fdt_property** %11, align 8
  %67 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @fdt32_to_cpu(i8* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @fdt_size_dt_strings(i8* %70)
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i8* @cpu_to_fdt32(i32 %74)
  %76 = load %struct.fdt_property*, %struct.fdt_property** %11, align 8
  %77 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %78

78:                                               ; preds = %62, %58
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %9, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %2, align 4
  br label %98

85:                                               ; preds = %80
  %86 = load i8*, i8** %3, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 @fdt_size_dt_strings(i8* %88)
  %90 = add nsw i32 %87, %89
  %91 = call i32 @fdt_set_totalsize(i8* %86, i32 %90)
  %92 = load i8*, i8** %3, align 8
  %93 = load i32, i32* @FDT_FIRST_SUPPORTED_VERSION, align 4
  %94 = call i32 @fdt_set_last_comp_version(i8* %92, i32 %93)
  %95 = load i8*, i8** %3, align 8
  %96 = load i32, i32* @FDT_MAGIC, align 4
  %97 = call i32 @fdt_set_magic(i8* %95, i32 %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %85, %83, %20
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @FDT_SW_PROBE_STRUCT(i8*) #1

declare dso_local i8** @fdt_grab_space_(i8*, i32) #1

declare dso_local i8* @cpu_to_fdt32(i32) #1

declare dso_local i32 @fdt_totalsize(i8*) #1

declare dso_local i32 @fdt_size_dt_strings(i8*) #1

declare dso_local i32 @fdt_off_dt_struct(i8*) #1

declare dso_local i32 @fdt_size_dt_struct(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @fdt_set_off_dt_strings(i8*, i32) #1

declare dso_local i64 @fdt_next_tag(i8*, i32, i32*) #1

declare dso_local %struct.fdt_property* @fdt_offset_ptr_w_(i8*, i32) #1

declare dso_local i32 @fdt32_to_cpu(i8*) #1

declare dso_local i32 @fdt_set_totalsize(i8*, i32) #1

declare dso_local i32 @fdt_set_last_comp_version(i8*, i32) #1

declare dso_local i32 @fdt_set_magic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
