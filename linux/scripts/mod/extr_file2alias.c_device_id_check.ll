; ModuleID = '/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_device_id_check.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/mod/extr_file2alias.c_device_id_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [176 x i8] c"%s: sizeof(struct %s_device_id)=%lu is not a modulo of the size of section __mod_%s__<identifier>_device_table=%lu.\0AFix definition of struct %s_device_id in mod_devicetable.h\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"%s: struct %s_device_id is %lu bytes.  The last of %lu is:\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"%s: struct %s_device_id is not terminated with a NULL entry!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64, i8*)* @device_id_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_id_check(i8* %0, i8* %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = urem i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %16, %5
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 (i8*, i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([176 x i8], [176 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %22, i64 %23, i8* %24, i64 %25, i8* %26)
  br label %28

28:                                               ; preds = %20, %16
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %85, %28
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %9, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %88

34:                                               ; preds = %29
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr i8, i8* %35, i64 %36
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 0, %38
  %40 = getelementptr i8, i8* %37, i64 %39
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %34
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = udiv i64 %52, %53
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %50, i64 %51, i64 %54)
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %75, %47
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %9, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load i32, i32* @stderr, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr i8, i8* %63, i64 %64
  %66 = load i64, i64* %9, align 8
  %67 = sub i64 0, %66
  %68 = getelementptr i8, i8* %65, i64 %67
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %68, i64 %70
  %72 = bitcast i8* %71 to i32*
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %56

78:                                               ; preds = %56
  %79 = load i32, i32* @stderr, align 4
  %80 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %81 = load i8*, i8** %6, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 (i8*, i8*, i8*, ...) @fatal(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* %81, i8* %82)
  br label %84

84:                                               ; preds = %78, %34
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %29

88:                                               ; preds = %29
  ret void
}

declare dso_local i32 @fatal(i8*, i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
