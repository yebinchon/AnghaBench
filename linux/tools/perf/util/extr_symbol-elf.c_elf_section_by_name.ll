; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_elf_section_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_elf_section_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @elf_section_by_name(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_6__* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* null, i32** %12, align 8
  store i64 1, i64* %13, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @elf_getscn(i32* %15, i32 %18)
  %20 = call i32 @elf_rawdata(i32 %19, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i32* null, i32** %6, align 8
  br label %60

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %56, %23
  %25 = load i32*, i32** %7, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32* @elf_nextscn(i32* %25, i32* %26)
  store i32* %27, i32** %12, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %24
  %30 = load i32*, i32** %12, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = call i32 @gelf_getshdr(i32* %30, %struct.TYPE_6__* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @elf_strptr(i32* %33, i32 %36, i32 %39)
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %29
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = call i32 @strcmp(i8* %44, i8* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %43
  %49 = load i64*, i64** %11, align 8
  %50 = icmp ne i64* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* %13, align 8
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** %12, align 8
  store i32* %55, i32** %6, align 8
  br label %60

56:                                               ; preds = %43, %29
  %57 = load i64, i64* %13, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %13, align 8
  br label %24

59:                                               ; preds = %24
  store i32* null, i32** %6, align 8
  br label %60

60:                                               ; preds = %59, %54, %22
  %61 = load i32*, i32** %6, align 8
  ret i32* %61
}

declare dso_local i32 @elf_rawdata(i32, i32*) #1

declare dso_local i32 @elf_getscn(i32*, i32) #1

declare dso_local i32* @elf_nextscn(i32*, i32*) #1

declare dso_local i32 @gelf_getshdr(i32*, %struct.TYPE_6__*) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
