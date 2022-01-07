; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template.c_lookup_template_field.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template.c_lookup_template_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_template_field = type { i32 }

@supported_fields = common dso_local global %struct.ima_template_field* null, align 8
@IMA_TEMPLATE_FIELD_ID_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ima_template_field* (i8*)* @lookup_template_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ima_template_field* @lookup_template_field(i8* %0) #0 {
  %2 = alloca %struct.ima_template_field*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ima_template_field*, %struct.ima_template_field** @supported_fields, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.ima_template_field* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %5
  %11 = load %struct.ima_template_field*, %struct.ima_template_field** @supported_fields, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ima_template_field, %struct.ima_template_field* %11, i64 %13
  %15 = getelementptr inbounds %struct.ima_template_field, %struct.ima_template_field* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @IMA_TEMPLATE_FIELD_ID_MAX_LEN, align 4
  %19 = call i64 @strncmp(i32 %16, i8* %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load %struct.ima_template_field*, %struct.ima_template_field** @supported_fields, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ima_template_field, %struct.ima_template_field* %22, i64 %24
  store %struct.ima_template_field* %25, %struct.ima_template_field** %2, align 8
  br label %31

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %5

30:                                               ; preds = %5
  store %struct.ima_template_field* null, %struct.ima_template_field** %2, align 8
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.ima_template_field*, %struct.ima_template_field** %2, align 8
  ret %struct.ima_template_field* %32
}

declare dso_local i32 @ARRAY_SIZE(%struct.ima_template_field*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
