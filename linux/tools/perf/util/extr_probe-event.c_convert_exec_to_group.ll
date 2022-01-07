; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_convert_exec_to_group.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_probe-event.c_convert_exec_to_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s_%s\00", align 1
@PERFPROBE_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @convert_exec_to_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_exec_to_group(i8* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [64 x i8], align 16
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %74

18:                                               ; preds = %2
  %19 = load i8*, i8** %8, align 8
  %20 = call i8* @basename(i8* %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %70

26:                                               ; preds = %18
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %7, align 8
  br label %28

28:                                               ; preds = %46, %26
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @isalnum(i8 signext %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load i8*, i8** %7, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 95
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i8*, i8** %7, align 8
  store i8 0, i8* %44, align 1
  br label %49

45:                                               ; preds = %38, %33
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %7, align 8
  br label %28

49:                                               ; preds = %43, %28
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %51 = load i32, i32* @PERFPROBE_GROUP, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @e_snprintf(i8* %50, i32 64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %51, i8* %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %70

57:                                               ; preds = %49
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %59 = call i8* @strdup(i8* %58)
  %60 = load i8**, i8*** %5, align 8
  store i8* %59, i8** %60, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  br label %68

68:                                               ; preds = %65, %64
  %69 = phi i32 [ 0, %64 ], [ %67, %65 ]
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %68, %56, %23
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @basename(i8*) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i32 @e_snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
