; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_bpf_load.c_get_sec.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_bpf_load.c_get_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_8__*, i8**, %struct.TYPE_7__*, i32**)* @get_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sec(i32* %0, i32 %1, %struct.TYPE_8__* %2, i8** %3, %struct.TYPE_7__* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store i8** %3, i8*** %11, align 8
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store i32** %5, i32*** %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32* @elf_getscn(i32* %15, i32 %16)
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %62

21:                                               ; preds = %6
  %22 = load i32*, i32** %14, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %24 = call %struct.TYPE_7__* @gelf_getshdr(i32* %22, %struct.TYPE_7__* %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %26 = icmp ne %struct.TYPE_7__* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 2, i32* %7, align 4
  br label %62

28:                                               ; preds = %21
  %29 = load i32*, i32** %8, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @elf_strptr(i32* %29, i32 %32, i32 %35)
  %37 = load i8**, i8*** %11, align 8
  store i8* %36, i8** %37, align 8
  %38 = load i8**, i8*** %11, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %28
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %28
  store i32 3, i32* %7, align 4
  br label %62

47:                                               ; preds = %41
  %48 = load i32*, i32** %14, align 8
  %49 = call i32* @elf_getdata(i32* %48, i32* null)
  %50 = load i32**, i32*** %13, align 8
  store i32* %49, i32** %50, align 8
  %51 = load i32**, i32*** %13, align 8
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32*, i32** %14, align 8
  %56 = load i32**, i32*** %13, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = call i32* @elf_getdata(i32* %55, i32* %57)
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %54, %47
  store i32 4, i32* %7, align 4
  br label %62

61:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %60, %46, %27, %20
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32* @elf_getscn(i32*, i32) #1

declare dso_local %struct.TYPE_7__* @gelf_getshdr(i32*, %struct.TYPE_7__*) #1

declare dso_local i8* @elf_strptr(i32*, i32, i32) #1

declare dso_local i32* @elf_getdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
