; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_recordmcount.h_get_mcountsym_64.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_recordmcount.h_get_mcountsym_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@gpfx = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [8 x i8] c"_mcount\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"mcount\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"__fentry__\00", align 1
@altmcount = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i8*)* @get_mcountsym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mcountsym(%struct.TYPE_3__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i64 @Elf_r_sym(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @w(i32 %19)
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  store i8* %21, i8** %9, align 8
  %22 = load i8, i8* @gpfx, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 95
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  store i8* %26, i8** %10, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 46
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %9, align 8
  br label %35

35:                                               ; preds = %32, %3
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = load i8*, i8** @altmcount, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i8*, i8** @altmcount, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @strcmp(i8* %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43, %40
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i64 @strcmp(i8* %49, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48, %43, %35
  %54 = load i32*, i32** %5, align 8
  %55 = call i64 @Elf_r_sym(i32* %54)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i64 @Elf_r_sym(i32*) #1

declare dso_local i64 @w(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
