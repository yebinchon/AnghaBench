; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__get_text_offset.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-finder.c_debuginfo__get_text_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debuginfo = type { i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".text\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debuginfo__get_text_offset(%struct.debuginfo* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.debuginfo*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i8*, align 8
  store %struct.debuginfo* %0, %struct.debuginfo** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.debuginfo*, %struct.debuginfo** %5, align 8
  %17 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.debuginfo*, %struct.debuginfo** %5, align 8
  %20 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %19, i32 0, i32 1
  %21 = call i32* @dwfl_module_getelf(i32 %18, i32* %20)
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %90

27:                                               ; preds = %3
  %28 = load %struct.debuginfo*, %struct.debuginfo** %5, align 8
  %29 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dwfl_module_relocations(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %90

37:                                               ; preds = %27
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %86, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %38
  %43 = load %struct.debuginfo*, %struct.debuginfo** %5, align 8
  %44 = getelementptr inbounds %struct.debuginfo, %struct.debuginfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @dwfl_module_relocation_info(i32 %45, i32 %46, i32* %10)
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** %15, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %85

51:                                               ; preds = %42
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32* @elf_getscn(i32* %52, i32 %53)
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %90

60:                                               ; preds = %51
  %61 = load i32*, i32** %11, align 8
  %62 = call %struct.TYPE_4__* @gelf_getshdr(i32* %61, %struct.TYPE_4__* %13)
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %14, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %90

68:                                               ; preds = %60
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %81, %78
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 4
  br label %84

84:                                               ; preds = %75, %68
  br label %85

85:                                               ; preds = %84, %42
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %38

89:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %65, %57, %34, %24
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32* @dwfl_module_getelf(i32, i32*) #1

declare dso_local i32 @dwfl_module_relocations(i32) #1

declare dso_local i8* @dwfl_module_relocation_info(i32, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @elf_getscn(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @gelf_getshdr(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
