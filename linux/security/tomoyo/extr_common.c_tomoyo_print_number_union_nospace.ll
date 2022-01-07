; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_print_number_union_nospace.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_common.c_tomoyo_print_number_union_nospace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_io_buffer = type { i32 }
%struct.tomoyo_number_union = type { i64*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%lX\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"0%lo\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tomoyo_io_buffer*, %struct.tomoyo_number_union*)* @tomoyo_print_number_union_nospace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tomoyo_print_number_union_nospace(%struct.tomoyo_io_buffer* %0, %struct.tomoyo_number_union* %1) #0 {
  %3 = alloca %struct.tomoyo_io_buffer*, align 8
  %4 = alloca %struct.tomoyo_number_union*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  store %struct.tomoyo_io_buffer* %0, %struct.tomoyo_io_buffer** %3, align 8
  store %struct.tomoyo_number_union* %1, %struct.tomoyo_number_union** %4, align 8
  %11 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %12 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %17 = call i32 @tomoyo_set_string(%struct.tomoyo_io_buffer* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %19 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %20 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @tomoyo_set_string(%struct.tomoyo_io_buffer* %18, i8* %25)
  br label %87

27:                                               ; preds = %2
  %28 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %29 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %34 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %39 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.tomoyo_number_union*, %struct.tomoyo_number_union** %4, align 8
  %44 = getelementptr inbounds %struct.tomoyo_number_union, %struct.tomoyo_number_union* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %48, align 16
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %80, %27
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %83

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %62 [
    i32 129, label %54
    i32 128, label %58
  ]

54:                                               ; preds = %52
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %56 = load i64, i64* %6, align 8
  %57 = call i32 (i8*, i32, i8*, ...) @tomoyo_addprintf(i8* %55, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  br label %66

58:                                               ; preds = %52
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %60 = load i64, i64* %6, align 8
  %61 = call i32 (i8*, i32, i8*, ...) @tomoyo_addprintf(i8* %59, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %60)
  br label %66

62:                                               ; preds = %52
  %63 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %64 = load i64, i64* %6, align 8
  %65 = call i32 (i8*, i32, i8*, ...) @tomoyo_addprintf(i8* %63, i32 128, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %64)
  br label %66

66:                                               ; preds = %62, %58, %54
  %67 = load i64, i64* %6, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %83

75:                                               ; preds = %70, %66
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %77 = call i32 (i8*, i32, i8*, ...) @tomoyo_addprintf(i8* %76, i32 128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i64, i64* %7, align 8
  store i64 %79, i64* %6, align 8
  br label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %49

83:                                               ; preds = %74, %49
  %84 = load %struct.tomoyo_io_buffer*, %struct.tomoyo_io_buffer** %3, align 8
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %86 = call i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %83, %15
  ret void
}

declare dso_local i32 @tomoyo_set_string(%struct.tomoyo_io_buffer*, i8*) #1

declare dso_local i32 @tomoyo_addprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @tomoyo_io_printf(%struct.tomoyo_io_buffer*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
