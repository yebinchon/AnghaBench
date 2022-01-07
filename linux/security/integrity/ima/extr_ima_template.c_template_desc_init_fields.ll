; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template.c_template_desc_init_fields.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_template.c_template_desc_init_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_template_field = type { i32 }

@IMA_TEMPLATE_NUM_FIELDS_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"format string '%s' contains too many fields\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IMA_TEMPLATE_FIELD_ID_MAX_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid field with length %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"field '%s' not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @template_desc_init_fields(i8* %0, %struct.ima_template_field*** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ima_template_field***, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ima_template_field*** %1, %struct.ima_template_field**** %6, align 8
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* @IMA_TEMPLATE_NUM_FIELDS_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.ima_template_field*, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %132

28:                                               ; preds = %23, %3
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @template_fmt_size(i8* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @IMA_TEMPLATE_NUM_FIELDS_MAX, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %132

39:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  %40 = load i8*, i8** %5, align 8
  store i8* %40, i8** %8, align 8
  br label %41

41:                                               ; preds = %94, %39
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %102

45:                                               ; preds = %41
  %46 = load i32, i32* @IMA_TEMPLATE_FIELD_ID_MAX_LEN, align 4
  %47 = add nsw i32 %46, 1
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %15, align 8
  %50 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %16, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @strchrnul(i8* %51, i8 signext 124)
  %53 = load i8*, i8** %8, align 8
  %54 = ptrtoint i8* %52 to i64
  %55 = ptrtoint i8* %53 to i64
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %45
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @IMA_TEMPLATE_FIELD_ID_MAX_LEN, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60, %45
  %65 = load i32, i32* %13, align 4
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %90

69:                                               ; preds = %60
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @memcpy(i8* %50, i8* %70, i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %50, i64 %74
  store i8 0, i8* %75, align 1
  %76 = call %struct.ima_template_field* @lookup_template_field(i8* %50)
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ima_template_field*, %struct.ima_template_field** %20, i64 %78
  store %struct.ima_template_field* %76, %struct.ima_template_field** %79, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ima_template_field*, %struct.ima_template_field** %20, i64 %81
  %83 = load %struct.ima_template_field*, %struct.ima_template_field** %82, align 8
  %84 = icmp ne %struct.ima_template_field* %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %69
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %87 = load i32, i32* @ENOENT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %90

89:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %89, %85, %64
  %91 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %14, align 4
  switch i32 %92, label %132 [
    i32 0, label %93
  ]

93:                                               ; preds = %90
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  %99 = load i8*, i8** %8, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %8, align 8
  br label %41

102:                                              ; preds = %41
  %103 = load %struct.ima_template_field***, %struct.ima_template_field**** %6, align 8
  %104 = icmp ne %struct.ima_template_field*** %103, null
  br i1 %104, label %105, label %131

105:                                              ; preds = %102
  %106 = load i32*, i32** %7, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.ima_template_field** @kmalloc_array(i32 %109, i32 8, i32 %110)
  %112 = load %struct.ima_template_field***, %struct.ima_template_field**** %6, align 8
  store %struct.ima_template_field** %111, %struct.ima_template_field*** %112, align 8
  %113 = load %struct.ima_template_field***, %struct.ima_template_field**** %6, align 8
  %114 = load %struct.ima_template_field**, %struct.ima_template_field*** %113, align 8
  %115 = icmp eq %struct.ima_template_field** %114, null
  br i1 %115, label %116, label %119

116:                                              ; preds = %108
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %132

119:                                              ; preds = %108
  %120 = load %struct.ima_template_field***, %struct.ima_template_field**** %6, align 8
  %121 = load %struct.ima_template_field**, %struct.ima_template_field*** %120, align 8
  %122 = bitcast %struct.ima_template_field** %121 to i8*
  %123 = bitcast %struct.ima_template_field** %20 to i8*
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @memcpy(i8* %122, i8* %123, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = load i32*, i32** %7, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %119, %105, %102
  store i32 0, i32* %4, align 4
  store i32 1, i32* %14, align 4
  br label %132

132:                                              ; preds = %131, %116, %90, %34, %27
  %133 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %133)
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @template_fmt_size(i8*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i8* @strchrnul(i8*, i8 signext) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local %struct.ima_template_field* @lookup_template_field(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local %struct.ima_template_field** @kmalloc_array(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
