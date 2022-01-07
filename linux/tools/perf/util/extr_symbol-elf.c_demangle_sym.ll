; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_demangle_sym.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol-elf.c_demangle_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dso = type { i64 }

@verbose = common dso_local global i64 0, align 8
@DMGL_PARAMS = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_NO_OPTS = common dso_local global i32 0, align 4
@JAVA_DEMANGLE_NORET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dso*, i32, i8*)* @demangle_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @demangle_sym(%struct.dso* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dso*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.dso* %0, %struct.dso** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i64, i64* @verbose, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @DMGL_PARAMS, align 4
  %14 = load i32, i32* @DMGL_ANSI, align 4
  %15 = or i32 %13, %14
  br label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @DMGL_NO_OPTS, align 4
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %15, %12 ], [ %17, %16 ]
  store i32 %19, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %20 = load %struct.dso*, %struct.dso** %5, align 8
  %21 = getelementptr inbounds %struct.dso, %struct.dso* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi i1 [ true, %18 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @want_demangle(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %9, align 8
  store i8* %33, i8** %4, align 8
  br label %54

34:                                               ; preds = %27
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i8* @bfd_demangle(i32* null, i8* %35, i32 %36)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @JAVA_DEMANGLE_NORET, align 4
  %43 = call i8* @java_demangle_sym(i8* %41, i32 %42)
  store i8* %43, i8** %9, align 8
  br label %52

44:                                               ; preds = %34
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @rust_is_mangled(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @rust_demangle_sym(i8* %49)
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i8*, i8** %9, align 8
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %52, %32
  %55 = load i8*, i8** %4, align 8
  ret i8* %55
}

declare dso_local i32 @want_demangle(i32) #1

declare dso_local i8* @bfd_demangle(i32*, i8*, i32) #1

declare dso_local i8* @java_demangle_sym(i8*, i32) #1

declare dso_local i64 @rust_is_mangled(i8*) #1

declare dso_local i32 @rust_demangle_sym(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
