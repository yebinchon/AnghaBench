; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_file_name_to_table_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/pmu-events/extr_jevents.c_file_name_to_table_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"pme_%s\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: asprintf() error %s for file %s\0A\00", align 1
@prog = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: Invalid character '%c' in file name %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @file_name_to_table_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @file_name_to_table_name(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 @asprintf(i8** %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @prog, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %15, i8* %16)
  store i8* null, i8** %2, align 8
  br label %72

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %67, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 47
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %24
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 95, i8* %40, align 1
  br label %66

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 46
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8 0, i8* %48, align 1
  br label %70

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @isalnum(i32 %50) #3
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 95
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* @prog, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @basename(i8* %59)
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58, i32 %60)
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @free(i8* %62)
  store i8* null, i8** %7, align 8
  br label %70

64:                                               ; preds = %53, %49
  br label %65

65:                                               ; preds = %64
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %19

70:                                               ; preds = %56, %44, %19
  %71 = load i8*, i8** %7, align 8
  store i8* %71, i8** %2, align 8
  br label %72

72:                                               ; preds = %70, %12
  %73 = load i8*, i8** %2, align 8
  ret i8* %73
}

declare dso_local i32 @asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @basename(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
