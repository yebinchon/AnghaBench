; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_find_object_symbol.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_find_object_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klp_find_arg = type { i8*, i8*, i64, i32, i64 }

@module_mutex = common dso_local global i32 0, align 4
@klp_find_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"symbol '%s' not found in symbol table\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"unresolvable ambiguity for symbol '%s' in object '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"symbol position %lu for symbol '%s' in object '%s' not found\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"vmlinux\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64*)* @klp_find_object_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klp_find_object_symbol(i8* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.klp_find_arg, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %10, i32 0, i32 0
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %11, align 8
  %13 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %10, i32 0, i32 1
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %13, align 8
  %15 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %10, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %10, i32 0, i32 3
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %10, i32 0, i32 4
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %17, align 8
  %19 = call i32 @mutex_lock(i32* @module_mutex)
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @klp_find_callback, align 4
  %24 = call i32 @module_kallsyms_on_each_symbol(i32 %23, %struct.klp_find_arg* %10)
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @klp_find_callback, align 4
  %27 = call i32 @kallsyms_on_each_symbol(i32 %26, %struct.klp_find_arg* %10)
  br label %28

28:                                               ; preds = %25, %22
  %29 = call i32 @mutex_unlock(i32* @module_mutex)
  %30 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %10, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %73

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %10, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i8*, i8** %7, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45)
  br label %72

47:                                               ; preds = %40, %36
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %10, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = icmp ugt i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load i64, i64* %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i8* [ %62, %61 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %63 ]
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %57, i8* %58, i8* %65)
  br label %71

67:                                               ; preds = %53, %47
  %68 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %10, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  store i32 0, i32* %5, align 4
  br label %77

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %43
  br label %73

73:                                               ; preds = %72, %33
  %74 = load i64*, i64** %9, align 8
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @module_kallsyms_on_each_symbol(i32, %struct.klp_find_arg*) #1

declare dso_local i32 @kallsyms_on_each_symbol(i32, %struct.klp_find_arg*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
