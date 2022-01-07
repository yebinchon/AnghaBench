; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_rw.c_fdt_packblocks_.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_..scriptsdtclibfdtfdt_rw.c_fdt_packblocks_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i32)* @fdt_packblocks_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdt_packblocks_(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = call i32 @FDT_ALIGN(i32 4, i32 8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fdt_off_mem_rsvmap(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @memmove(i8* %22, i8* %27, i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @fdt_set_off_mem_rsvmap(i8* %30, i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8*, i8** %5, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @fdt_off_dt_struct(i8* %38)
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @memmove(i8* %36, i8* %41, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @fdt_set_off_dt_struct(i8* %44, i32 %45)
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @fdt_set_size_dt_struct(i8* %47, i32 %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @fdt_off_dt_strings(i8* %55)
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @fdt_size_dt_strings(i8* %59)
  %61 = call i32 @memmove(i8* %53, i8* %58, i32 %60)
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @fdt_set_off_dt_strings(i8* %62, i32 %63)
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @fdt_size_dt_strings(i8* %66)
  %68 = call i32 @fdt_set_size_dt_strings(i8* %65, i32 %67)
  ret void
}

declare dso_local i32 @FDT_ALIGN(i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @fdt_off_mem_rsvmap(i8*) #1

declare dso_local i32 @fdt_set_off_mem_rsvmap(i8*, i32) #1

declare dso_local i32 @fdt_off_dt_struct(i8*) #1

declare dso_local i32 @fdt_set_off_dt_struct(i8*, i32) #1

declare dso_local i32 @fdt_set_size_dt_struct(i8*, i32) #1

declare dso_local i32 @fdt_off_dt_strings(i8*) #1

declare dso_local i32 @fdt_size_dt_strings(i8*) #1

declare dso_local i32 @fdt_set_off_dt_strings(i8*, i32) #1

declare dso_local i32 @fdt_set_size_dt_strings(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
