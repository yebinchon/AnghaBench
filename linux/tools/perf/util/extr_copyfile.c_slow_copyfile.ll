; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_copyfile.c_slow_copyfile.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_copyfile.c_slow_copyfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsinfo = type { i32 }
%struct.nscookie = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.nsinfo*)* @slow_copyfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slow_copyfile(i8* %0, i8* %1, %struct.nsinfo* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nsinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nscookie, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.nsinfo* %2, %struct.nsinfo** %6, align 8
  store i32 -1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %13 = load %struct.nsinfo*, %struct.nsinfo** %6, align 8
  %14 = call i32 @nsinfo__mountns_enter(%struct.nsinfo* %13, %struct.nscookie* %12)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %10, align 8
  %17 = call i32 @nsinfo__mountns_exit(%struct.nscookie* %12)
  %18 = load i32*, i32** %10, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %49

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %46

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32*, i32** %10, align 8
  %30 = call i64 @getline(i8** %8, i64* %9, i32* %29)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i64 @fputs(i8* %33, i32* %34)
  %36 = load i64, i64* @EOF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %41

39:                                               ; preds = %32
  br label %28

40:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @fclose(i32* %42)
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @free(i8* %44)
  br label %46

46:                                               ; preds = %41, %26
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @fclose(i32* %47)
  br label %49

49:                                               ; preds = %46, %20
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @nsinfo__mountns_enter(%struct.nsinfo*, %struct.nscookie*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @nsinfo__mountns_exit(%struct.nscookie*) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @fputs(i8*, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
