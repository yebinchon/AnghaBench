; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_ubsan.c___ubsan_handle_out_of_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_ubsan.c___ubsan_handle_out_of_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.out_of_bounds_data = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@VALUE_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"index %s is out of range for type %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ubsan_handle_out_of_bounds(%struct.out_of_bounds_data* %0, i8* %1) #0 {
  %3 = alloca %struct.out_of_bounds_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.out_of_bounds_data* %0, %struct.out_of_bounds_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @VALUE_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.out_of_bounds_data*, %struct.out_of_bounds_data** %3, align 8
  %14 = getelementptr inbounds %struct.out_of_bounds_data, %struct.out_of_bounds_data* %13, i32 0, i32 2
  %15 = call i64 @suppress_report(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %8, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.out_of_bounds_data*, %struct.out_of_bounds_data** %3, align 8
  %20 = getelementptr inbounds %struct.out_of_bounds_data, %struct.out_of_bounds_data* %19, i32 0, i32 2
  %21 = call i32 @ubsan_prologue(i32* %20, i64* %5)
  %22 = trunc i64 %10 to i32
  %23 = load %struct.out_of_bounds_data*, %struct.out_of_bounds_data** %3, align 8
  %24 = getelementptr inbounds %struct.out_of_bounds_data, %struct.out_of_bounds_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @val_to_string(i8* %12, i32 %22, i32 %25, i8* %26)
  %28 = load %struct.out_of_bounds_data*, %struct.out_of_bounds_data** %3, align 8
  %29 = getelementptr inbounds %struct.out_of_bounds_data, %struct.out_of_bounds_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %32)
  %34 = call i32 @ubsan_epilogue(i64* %5)
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %18, %17
  %36 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %39 [
    i32 0, label %38
    i32 1, label %38
  ]

38:                                               ; preds = %35, %35
  ret void

39:                                               ; preds = %35
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @suppress_report(i32*) #2

declare dso_local i32 @ubsan_prologue(i32*, i64*) #2

declare dso_local i32 @val_to_string(i8*, i32, i32, i8*) #2

declare dso_local i32 @pr_err(i8*, i8*, i32) #2

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
