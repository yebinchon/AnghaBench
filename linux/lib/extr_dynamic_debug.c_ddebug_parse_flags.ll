; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_parse_flags.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_dynamic_debug.c_ddebug_parse_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i32 }

@.str = private unnamed_addr constant [32 x i8] c"bad flag-op %c, at start of %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"op='%c'\0A\00", align 1
@opt_array = common dso_local global %struct.TYPE_3__* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"unknown flag '%c' in \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"flags=0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"*flagsp=0x%x *maskp=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @ddebug_parse_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddebug_parse_flags(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 61, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %19 [
    i32 43, label %14
    i32 45, label %14
    i32 61, label %14
  ]

14:                                               ; preds = %3, %3, %3
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %5, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  store i32 %18, i32* %9, align 4
  br label %26

19:                                               ; preds = %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8 signext %21, i8* %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %102

26:                                               ; preds = %14
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i8*, i32, ...) @vpr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %76, %26
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @opt_array, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %34)
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %37

37:                                               ; preds = %62, %33
  %38 = load i32, i32* %10, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %65

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @opt_array, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 4
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %43, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %40
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @opt_array, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %65

61:                                               ; preds = %40
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %10, align 4
  br label %37

65:                                               ; preds = %52, %37
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8 signext %70, i8* %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %102

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %5, align 8
  br label %29

79:                                               ; preds = %29
  %80 = load i32, i32* %8, align 4
  %81 = call i32 (i8*, i32, ...) @vpr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  switch i32 %82, label %96 [
    i32 61, label %83
    i32 43, label %87
    i32 45, label %91
  ]

83:                                               ; preds = %79
  %84 = load i32*, i32** %7, align 8
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  br label %96

87:                                               ; preds = %79
  %88 = load i32*, i32** %7, align 8
  store i32 -1, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %96

91:                                               ; preds = %79
  %92 = load i32, i32* %8, align 4
  %93 = xor i32 %92, -1
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %6, align 8
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %79, %91, %87, %83
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i8*, i32, ...) @vpr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %98, i32 %100)
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %96, %68, %19
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @pr_err(i8*, i8 signext, i8*) #1

declare dso_local i32 @vpr_info(i8*, i32, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
