; ModuleID = '/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_osunixmap.c_acpi_os_map_memory.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/acpi/os_specific/service_layers/extr_osunixmap.c_acpi_os_map_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYSTEM_MEMORY = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Cannot open %s\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@MMAP_FLAGS = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Cannot map %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @acpi_os_map_memory(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** @SYSTEM_MEMORY, align 8
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = load i32, i32* @O_BINARY, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @open(i8* %10, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = load i8*, i8** @SYSTEM_MEMORY, align 8
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i8* null, i8** %3, align 8
  br label %53

21:                                               ; preds = %2
  %22 = call i32 (...) @acpi_os_get_page_size()
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %8, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @PROT_READ, align 4
  %30 = load i32, i32* @MMAP_FLAGS, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32* @mmap(i32* null, i32 %28, i32 %29, i32 %30, i32 %31, i32 %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** @MAP_FAILED, align 8
  %38 = icmp eq i32* %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %21
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** @SYSTEM_MEMORY, align 8
  %42 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @close(i32 %43)
  store i8* null, i8** %3, align 8
  br label %53

45:                                               ; preds = %21
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i8* @ACPI_CAST8(i32* %51)
  store i8* %52, i8** %3, align 8
  br label %53

53:                                               ; preds = %45, %39, %17
  %54 = load i8*, i8** %3, align 8
  ret i8* %54
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @acpi_os_get_page_size(...) #1

declare dso_local i32* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @ACPI_CAST8(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
