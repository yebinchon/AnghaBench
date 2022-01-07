; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_exec.c_transfer_args_to_stack.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_exec.c_transfer_args_to_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linux_binprm = type { i64, i32* }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@MAX_ARG_PAGES = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transfer_args_to_stack(%struct.linux_binprm* %0, i64* %1) #0 {
  %3 = alloca %struct.linux_binprm*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %12 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PAGE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i32, i32* @MAX_ARG_PAGES, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %80, %2
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %83

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %31 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @PAGE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = zext i32 %34 to i64
  %36 = and i64 %32, %35
  br label %38

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %29
  %39 = phi i64 [ %36, %29 ], [ 0, %37 ]
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %42 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @kmap(i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  store i8* %50, i8** %10, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sub i32 %51, %52
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* %7, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub i32 %60, %61
  %63 = call i64 @copy_to_user(i8* %58, i8* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %38
  %66 = load i32, i32* @EFAULT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %38
  %69 = load %struct.linux_binprm*, %struct.linux_binprm** %3, align 8
  %70 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @kunmap(i32 %74)
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %86

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %5, align 8
  %82 = add i64 %81, -1
  store i64 %82, i64* %5, align 8
  br label %21

83:                                               ; preds = %21
  %84 = load i64, i64* %7, align 8
  %85 = load i64*, i64** %4, align 8
  store i64 %84, i64* %85, align 8
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i8* @kmap(i32) #1

declare dso_local i64 @copy_to_user(i8*, i8*, i32) #1

declare dso_local i32 @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
