; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_parse_checks_option.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_parse_checks_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"no-\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"no_\00", align 1
@check_table = common dso_local global %struct.check** null, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Unrecognized check name \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_checks_option(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.check*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %8, align 8
  store i32 1, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strncmp(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = call i64 @strncmp(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %3
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 3
  store i8* %21, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %19, %15
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %55, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.check**, %struct.check*** @check_table, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.check** %25)
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load %struct.check**, %struct.check*** @check_table, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.check*, %struct.check** %29, i64 %31
  %33 = load %struct.check*, %struct.check** %32, align 8
  store %struct.check* %33, %struct.check** %10, align 8
  %34 = load %struct.check*, %struct.check** %10, align 8
  %35 = getelementptr inbounds %struct.check, %struct.check* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @streq(i32 %36, i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.check*, %struct.check** %10, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @enable_warning_error(%struct.check* %44, i32 %45, i32 %46)
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.check*, %struct.check** %10, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @disable_warning_error(%struct.check* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %43
  br label %61

54:                                               ; preds = %28
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %23

58:                                               ; preds = %23
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @die(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %58, %53
  ret void
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.check**) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i32 @enable_warning_error(%struct.check*, i32, i32) #1

declare dso_local i32 @disable_warning_error(%struct.check*, i32, i32) #1

declare dso_local i32 @die(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
