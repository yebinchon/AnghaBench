; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_string_set_value.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_data-convert-bt.c_string_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bt_ctf_field = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"\\x%02x\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to set unprintable string '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"UNPRINTABLE-STRING\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bt_ctf_field*, i8*)* @string_set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_set_value(%struct.bt_ctf_field* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bt_ctf_field*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [5 x i8], align 1
  store %struct.bt_ctf_field* %0, %struct.bt_ctf_field** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12)
  store i64 %13, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %82, %2
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %87

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isprint(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %82

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 %33, i8* %36, align 1
  br label %81

37:                                               ; preds = %18
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %39 = load i8*, i8** %5, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = and i32 %43, 255
  %45 = call i32 @snprintf(i8* %38, i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %73, label %48

48:                                               ; preds = %37
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %50, %51
  %53 = mul i64 %52, 4
  %54 = add i64 %49, %53
  %55 = add i64 %54, 2
  %56 = call i8* @zalloc(i64 %55)
  store i8* %56, i8** %6, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %48
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %4, align 8
  %63 = call i32 @bt_ctf_field_string_set_value(%struct.bt_ctf_field* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %63, i32* %3, align 4
  br label %101

64:                                               ; preds = %48
  %65 = load i64, i64* %8, align 8
  %66 = icmp ugt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i32 @strncpy(i8* %68, i8* %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %64
  br label %73

73:                                               ; preds = %72, %37
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %78 = call i32 @memcpy(i8* %76, i8* %77, i32 4)
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 3
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %73, %29
  br label %82

82:                                               ; preds = %81, %28
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  br label %14

87:                                               ; preds = %14
  %88 = load i8*, i8** %6, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %4, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = call i32 @bt_ctf_field_string_set_value(%struct.bt_ctf_field* %91, i8* %92)
  store i32 %93, i32* %3, align 4
  br label %101

94:                                               ; preds = %87
  %95 = load %struct.bt_ctf_field*, %struct.bt_ctf_field** %4, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 @bt_ctf_field_string_set_value(%struct.bt_ctf_field* %95, i8* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %90, %59
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @zalloc(i64) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local i32 @bt_ctf_field_string_set_value(%struct.bt_ctf_field*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
