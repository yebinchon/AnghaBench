; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_is_same.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_confdata.c_is_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@O_RDONLY = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @is_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_same(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @O_RDONLY, align 4
  %15 = call i32 @open(i8* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %3, align 4
  br label %84

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = call i32 @open(i8* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %80

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @fstat(i32 %28, %struct.stat* %8)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %77

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @fstat(i32 %34, %struct.stat* %9)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %77

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %77

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @PROT_READ, align 4
  %50 = load i32, i32* @MAP_PRIVATE, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @mmap(i32* null, i64 %48, i32 %49, i32 %50, i32 %51, i32 0)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i8*, i8** @MAP_FAILED, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  br label %77

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @PROT_READ, align 4
  %61 = load i32, i32* @MAP_PRIVATE, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i8* @mmap(i32* null, i64 %59, i32 %60, i32 %61, i32 %62, i32 0)
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i8*, i8** @MAP_FAILED, align 8
  %66 = icmp eq i8* %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %77

68:                                               ; preds = %57
  %69 = load i8*, i8** %10, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @bcmp(i8* %69, i8* %70, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %77

76:                                               ; preds = %68
  store i32 1, i32* %12, align 4
  br label %77

77:                                               ; preds = %76, %75, %67, %56, %45, %38, %32
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @close(i32 %78)
  br label %80

80:                                               ; preds = %77, %26
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @close(i32 %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %18
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i64 @bcmp(i8*, i8*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
