; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__get_running_kernel_start.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_machine.c_machine__get_running_kernel_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"/proc/kallsyms\00", align 1
@ref_reloc_sym_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"_etext\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.machine*, i8**, i32*, i32*)* @machine__get_running_kernel_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machine__get_running_kernel_start(%struct.machine* %0, i8** %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.machine*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %21 = load %struct.machine*, %struct.machine** %6, align 8
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = call i32 @machine__get_kallsyms_filename(%struct.machine* %21, i8* %20, i32 %22)
  %24 = call i64 @symbol__restricted_filename(i8* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %65

27:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i8**, i8*** @ref_reloc_sym_names, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %14, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %28
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @kallsyms__get_function_start(i8* %20, i8* %36, i32* %15)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  br label %45

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %12, align 4
  br label %28

45:                                               ; preds = %40, %28
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %65

49:                                               ; preds = %45
  %50 = load i8**, i8*** %7, align 8
  %51 = icmp ne i8** %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %14, align 8
  %54 = load i8**, i8*** %7, align 8
  store i8* %53, i8** %54, align 8
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %15, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = call i32 @kallsyms__get_function_start(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %15)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %15, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %55
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %65

65:                                               ; preds = %64, %48, %26
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @machine__get_kallsyms_filename(%struct.machine*, i8*, i32) #2

declare dso_local i64 @symbol__restricted_filename(i8*, i8*) #2

declare dso_local i32 @kallsyms__get_function_start(i8*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
