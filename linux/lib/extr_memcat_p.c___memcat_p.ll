; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_memcat_p.c___memcat_p.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_memcat_p.c___memcat_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @__memcat_p(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %4, align 8
  store i8** %9, i8*** %6, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8**, i8*** %4, align 8
  store i8** %10, i8*** %6, align 8
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %6, align 8
  br label %11

21:                                               ; preds = %11
  %22 = load i8**, i8*** %5, align 8
  store i8** %22, i8*** %6, align 8
  br label %23

23:                                               ; preds = %28, %21
  %24 = load i8**, i8*** %6, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  %31 = load i8**, i8*** %6, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %6, align 8
  br label %23

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8** @kmalloc_array(i32 %36, i32 8, i32 %37)
  store i8** %38, i8*** %7, align 8
  %39 = load i8**, i8*** %7, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i8** null, i8*** %3, align 8
  br label %73

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %69, %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %45
  %49 = load i8**, i8*** %6, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i8**, i8*** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %50, i8** %54, align 8
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %8, align 4
  %58 = load i8**, i8*** %6, align 8
  %59 = load i8**, i8*** %5, align 8
  %60 = icmp eq i8** %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i8**, i8*** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  br label %69

66:                                               ; preds = %55
  %67 = load i8**, i8*** %6, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 -1
  br label %69

69:                                               ; preds = %66, %61
  %70 = phi i8** [ %65, %61 ], [ %68, %66 ]
  store i8** %70, i8*** %6, align 8
  br label %45

71:                                               ; preds = %45
  %72 = load i8**, i8*** %7, align 8
  store i8** %72, i8*** %3, align 8
  br label %73

73:                                               ; preds = %71, %41
  %74 = load i8**, i8*** %3, align 8
  ret i8** %74
}

declare dso_local i8** @kmalloc_array(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
