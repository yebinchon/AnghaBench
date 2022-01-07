; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_write_template_field_data.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template_lib.c_ima_write_template_field_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_field_data = type { i8*, i32 }

@DATA_FMT_STRING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.ima_field_data*)* @ima_write_template_field_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_write_template_field_data(i8* %0, i32 %1, i32 %2, %struct.ima_field_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ima_field_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ima_field_data* %3, %struct.ima_field_data** %9, align 8
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @DATA_FMT_STRING, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %67

29:                                               ; preds = %20
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @memcpy(i8* %30, i8* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @DATA_FMT_STRING, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %29
  %38 = load i8*, i8** %10, align 8
  store i8* %38, i8** %11, align 8
  br label %39

39:                                               ; preds = %56, %37
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = ptrtoint i8* %40 to i64
  %43 = ptrtoint i8* %41 to i64
  %44 = sub i64 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load i8*, i8** %11, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i8*, i8** %11, align 8
  store i8 95, i8* %54, align 1
  br label %55

55:                                               ; preds = %53, %48
  br label %56

56:                                               ; preds = %55
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  br label %39

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59, %29
  %61 = load i8*, i8** %10, align 8
  %62 = load %struct.ima_field_data*, %struct.ima_field_data** %9, align 8
  %63 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.ima_field_data*, %struct.ima_field_data** %9, align 8
  %66 = getelementptr inbounds %struct.ima_field_data, %struct.ima_field_data* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %60, %26
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
