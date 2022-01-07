; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_hflags2str.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c_hflags2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LM_FLAG_TRY = common dso_local global i32 0, align 4
@LM_FLAG_TRY_1CB = common dso_local global i32 0, align 4
@LM_FLAG_NOEXP = common dso_local global i32 0, align 4
@LM_FLAG_ANY = common dso_local global i32 0, align 4
@LM_FLAG_PRIORITY = common dso_local global i32 0, align 4
@GL_ASYNC = common dso_local global i32 0, align 4
@GL_EXACT = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@HIF_HOLDER = common dso_local global i32 0, align 4
@HIF_WAIT = common dso_local global i32 0, align 4
@HIF_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i64)* @hflags2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hflags2str(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LM_FLAG_TRY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %7, align 8
  store i8 116, i8* %14, align 1
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @LM_FLAG_TRY_1CB, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %7, align 8
  store i8 84, i8* %22, align 1
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @LM_FLAG_NOEXP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  store i8 101, i8* %30, align 1
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @LM_FLAG_ANY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  store i8 65, i8* %38, align 1
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @LM_FLAG_PRIORITY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %7, align 8
  store i8 112, i8* %46, align 1
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @GL_ASYNC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  store i8 97, i8* %54, align 1
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @GL_EXACT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  store i8 69, i8* %62, align 1
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @GL_NOCACHE, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  store i8 99, i8* %70, align 1
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* @HIF_HOLDER, align 4
  %74 = call i64 @test_bit(i32 %73, i64* %6)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  store i8 72, i8* %77, align 1
  br label %79

79:                                               ; preds = %76, %72
  %80 = load i32, i32* @HIF_WAIT, align 4
  %81 = call i64 @test_bit(i32 %80, i64* %6)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %7, align 8
  store i8 87, i8* %84, align 1
  br label %86

86:                                               ; preds = %83, %79
  %87 = load i32, i32* @HIF_FIRST, align 4
  %88 = call i64 @test_bit(i32 %87, i64* %6)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  store i8 70, i8* %91, align 1
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i8*, i8** %7, align 8
  store i8 0, i8* %94, align 1
  %95 = load i8*, i8** %4, align 8
  ret i8* %95
}

declare dso_local i64 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
