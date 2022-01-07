; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c___ubsan_handle_shift_out_of_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c___ubsan_handle_shift_out_of_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shift_out_of_bounds_data = type { i32, %struct.type_descriptor*, %struct.type_descriptor* }
%struct.type_descriptor = type { i32 }

@VALUE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"shift exponent %s is negative\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"shift exponent %s is too large for %u-bit type %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"left shift of negative value %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"left shift of %s by %s places cannot be represented in type %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ubsan_handle_shift_out_of_bounds(%struct.shift_out_of_bounds_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.shift_out_of_bounds_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.type_descriptor*, align 8
  %9 = alloca %struct.type_descriptor*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.shift_out_of_bounds_data* %0, %struct.shift_out_of_bounds_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.shift_out_of_bounds_data*, %struct.shift_out_of_bounds_data** %4, align 8
  %15 = getelementptr inbounds %struct.shift_out_of_bounds_data, %struct.shift_out_of_bounds_data* %14, i32 0, i32 2
  %16 = load %struct.type_descriptor*, %struct.type_descriptor** %15, align 8
  store %struct.type_descriptor* %16, %struct.type_descriptor** %8, align 8
  %17 = load %struct.shift_out_of_bounds_data*, %struct.shift_out_of_bounds_data** %4, align 8
  %18 = getelementptr inbounds %struct.shift_out_of_bounds_data, %struct.shift_out_of_bounds_data* %17, i32 0, i32 1
  %19 = load %struct.type_descriptor*, %struct.type_descriptor** %18, align 8
  store %struct.type_descriptor* %19, %struct.type_descriptor** %9, align 8
  %20 = load i32, i32* @VALUE_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load i32, i32* @VALUE_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load %struct.shift_out_of_bounds_data*, %struct.shift_out_of_bounds_data** %4, align 8
  %28 = getelementptr inbounds %struct.shift_out_of_bounds_data, %struct.shift_out_of_bounds_data* %27, i32 0, i32 0
  %29 = call i64 @suppress_report(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 1, i32* %13, align 4
  br label %81

32:                                               ; preds = %3
  %33 = load %struct.shift_out_of_bounds_data*, %struct.shift_out_of_bounds_data** %4, align 8
  %34 = getelementptr inbounds %struct.shift_out_of_bounds_data, %struct.shift_out_of_bounds_data* %33, i32 0, i32 0
  %35 = call i32 @ubsan_prologue(i32* %34, i64* %7)
  %36 = trunc i64 %21 to i32
  %37 = load %struct.type_descriptor*, %struct.type_descriptor** %8, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @val_to_string(i8* %23, i32 %36, %struct.type_descriptor* %37, i8* %38)
  %40 = trunc i64 %25 to i32
  %41 = load %struct.type_descriptor*, %struct.type_descriptor** %9, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @val_to_string(i8* %26, i32 %40, %struct.type_descriptor* %41, i8* %42)
  %44 = load %struct.type_descriptor*, %struct.type_descriptor** %8, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @val_is_negative(%struct.type_descriptor* %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %79

50:                                               ; preds = %32
  %51 = load %struct.type_descriptor*, %struct.type_descriptor** %8, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = call i64 @get_unsigned_val(%struct.type_descriptor* %51, i8* %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.type_descriptor*, %struct.type_descriptor** %9, align 8
  %56 = call i8* @type_bit_width(%struct.type_descriptor* %55)
  %57 = icmp uge i8* %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.type_descriptor*, %struct.type_descriptor** %9, align 8
  %60 = call i8* @type_bit_width(%struct.type_descriptor* %59)
  %61 = load %struct.type_descriptor*, %struct.type_descriptor** %9, align 8
  %62 = getelementptr inbounds %struct.type_descriptor, %struct.type_descriptor* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %60, i32 %63)
  br label %78

65:                                               ; preds = %50
  %66 = load %struct.type_descriptor*, %struct.type_descriptor** %9, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @val_is_negative(%struct.type_descriptor* %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  br label %77

72:                                               ; preds = %65
  %73 = load %struct.type_descriptor*, %struct.type_descriptor** %9, align 8
  %74 = getelementptr inbounds %struct.type_descriptor, %struct.type_descriptor* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0), i8* %26, i8* %23, i32 %75)
  br label %77

77:                                               ; preds = %72, %70
  br label %78

78:                                               ; preds = %77, %58
  br label %79

79:                                               ; preds = %78, %48
  %80 = call i32 @ubsan_epilogue(i64* %7)
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %79, %31
  %82 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %13, align 4
  switch i32 %83, label %85 [
    i32 0, label %84
    i32 1, label %84
  ]

84:                                               ; preds = %81, %81
  ret void

85:                                               ; preds = %81
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @suppress_report(i32*) #2

declare dso_local i32 @ubsan_prologue(i32*, i64*) #2

declare dso_local i32 @val_to_string(i8*, i32, %struct.type_descriptor*, i8*) #2

declare dso_local i64 @val_is_negative(%struct.type_descriptor*, i8*) #2

declare dso_local i32 @pr_err(i8*, i8*, ...) #2

declare dso_local i64 @get_unsigned_val(%struct.type_descriptor*, i8*) #2

declare dso_local i8* @type_bit_width(%struct.type_descriptor*) #2

declare dso_local i32 @ubsan_epilogue(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
