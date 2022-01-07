; ModuleID = '/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_find_callback.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/livepatch/extr_core.c_klp_find_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8* }
%struct.klp_find_arg = type { i64, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.module*, i64)* @klp_find_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klp_find_callback(i8* %0, i8* %1, %struct.module* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.module*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.klp_find_arg*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.module* %2, %struct.module** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.klp_find_arg*
  store %struct.klp_find_arg* %12, %struct.klp_find_arg** %10, align 8
  %13 = load %struct.module*, %struct.module** %8, align 8
  %14 = icmp ne %struct.module* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %17 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15, %4
  %21 = load %struct.module*, %struct.module** %8, align 8
  %22 = icmp ne %struct.module* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %25 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %15
  store i32 0, i32* %5, align 4
  br label %84

29:                                               ; preds = %23, %20
  %30 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %31 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @strcmp(i64 %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %84

37:                                               ; preds = %29
  %38 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %39 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %44 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.module*, %struct.module** %8, align 8
  %47 = getelementptr inbounds %struct.module, %struct.module* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @strcmp(i64 %45, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %84

52:                                               ; preds = %42, %37
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %55 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %57 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %61 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %52
  %65 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %66 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %69 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %64, %52
  %73 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %74 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load %struct.klp_find_arg*, %struct.klp_find_arg** %10, align 8
  %79 = getelementptr inbounds %struct.klp_find_arg, %struct.klp_find_arg* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %83

82:                                               ; preds = %77, %64
  store i32 1, i32* %5, align 4
  br label %84

83:                                               ; preds = %77, %72
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %82, %51, %36, %28
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @strcmp(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
