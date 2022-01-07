; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_acpi_entry.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_do_acpi_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_device_id = common dso_local global i32 0, align 4
@id = common dso_local global i8** null, align 8
@cls = common dso_local global i32* null, align 8
@cls_msk = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"acpi*:%s:*\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"acpi*:\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c":*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @do_acpi_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_acpi_entry(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* @acpi_device_id, align 4
  %13 = load i8**, i8*** @id, align 8
  %14 = call i32 (i8*, i32, ...) @DEF_FIELD_ADDR(i8* %11, i32 %12, i8** %13)
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @acpi_device_id, align 4
  %17 = load i32*, i32** @cls, align 8
  %18 = call i32 (i8*, i32, ...) @DEF_FIELD_ADDR(i8* %15, i32 %16, i32* %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* @acpi_device_id, align 4
  %21 = load i32*, i32** @cls_msk, align 8
  %22 = call i32 (i8*, i32, ...) @DEF_FIELD_ADDR(i8* %19, i32 %20, i32* %21)
  %23 = load i8**, i8*** @id, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %3
  %26 = load i8**, i8*** @id, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i8**, i8*** @id, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %33)
  br label %88

35:                                               ; preds = %25, %3
  %36 = load i32*, i32** @cls, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %87

38:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 6, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %78, %38
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 %45, 3
  br i1 %46, label %47, label %81

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 3, %48
  %50 = mul nsw i32 8, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** @cls_msk, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = ashr i32 %52, %53
  %55 = and i32 %54, 255
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %47
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i32*, i32** @cls, align 8
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = ashr i32 %64, %65
  %67 = and i32 %66, 255
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %75

69:                                               ; preds = %47
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %69, %58
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 2
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %44

81:                                               ; preds = %44
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %81, %35
  br label %88

88:                                               ; preds = %87, %30
  ret i32 1
}

declare dso_local i32 @DEF_FIELD_ADDR(i8*, i32, ...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
