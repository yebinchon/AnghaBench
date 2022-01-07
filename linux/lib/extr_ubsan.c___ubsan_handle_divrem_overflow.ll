; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c___ubsan_handle_divrem_overflow.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c___ubsan_handle_divrem_overflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.overflow_data = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@VALUE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"division of %s by -1 cannot be represented in type %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"division by zero\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ubsan_handle_divrem_overflow(%struct.overflow_data* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.overflow_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.overflow_data* %0, %struct.overflow_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @VALUE_LENGTH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.overflow_data*, %struct.overflow_data** %4, align 8
  %16 = getelementptr inbounds %struct.overflow_data, %struct.overflow_data* %15, i32 0, i32 1
  %17 = call i64 @suppress_report(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %53

20:                                               ; preds = %3
  %21 = load %struct.overflow_data*, %struct.overflow_data** %4, align 8
  %22 = getelementptr inbounds %struct.overflow_data, %struct.overflow_data* %21, i32 0, i32 1
  %23 = call i32 @ubsan_prologue(i32* %22, i64* %7)
  %24 = trunc i64 %12 to i32
  %25 = load %struct.overflow_data*, %struct.overflow_data** %4, align 8
  %26 = getelementptr inbounds %struct.overflow_data, %struct.overflow_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @val_to_string(i8* %14, i32 %24, %struct.TYPE_4__* %27, i8* %28)
  %30 = load %struct.overflow_data*, %struct.overflow_data** %4, align 8
  %31 = getelementptr inbounds %struct.overflow_data, %struct.overflow_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i64 @type_is_signed(%struct.TYPE_4__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %20
  %36 = load %struct.overflow_data*, %struct.overflow_data** %4, align 8
  %37 = getelementptr inbounds %struct.overflow_data, %struct.overflow_data* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @get_signed_val(%struct.TYPE_4__* %38, i8* %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.overflow_data*, %struct.overflow_data** %4, align 8
  %44 = getelementptr inbounds %struct.overflow_data, %struct.overflow_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %47)
  br label %51

49:                                               ; preds = %35, %20
  %50 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %42
  %52 = call i32 @ubsan_epilogue(i64* %7)
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %51, %19
  %54 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %10, align 4
  switch i32 %55, label %57 [
    i32 0, label %56
    i32 1, label %56
  ]

56:                                               ; preds = %53, %53
  ret void

57:                                               ; preds = %53
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @suppress_report(i32*) #2

declare dso_local i32 @ubsan_prologue(i32*, i64*) #2

declare dso_local i32 @val_to_string(i8*, i32, %struct.TYPE_4__*, i8*) #2

declare dso_local i64 @type_is_signed(%struct.TYPE_4__*) #2

declare dso_local i32 @get_signed_val(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

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
