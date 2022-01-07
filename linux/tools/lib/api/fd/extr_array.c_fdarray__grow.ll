; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fd/extr_array.c_fdarray__grow.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fd/extr_array.c_fdarray__grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdarray = type { i32, %struct.pollfd*, %struct.pollfd* }
%struct.pollfd = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdarray__grow(%struct.fdarray* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdarray*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pollfd*, align 8
  store %struct.fdarray* %0, %struct.fdarray** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.fdarray*, %struct.fdarray** %4, align 8
  %12 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  store i64 %18, i64* %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  store i64 %21, i64* %9, align 8
  %22 = load %struct.fdarray*, %struct.fdarray** %4, align 8
  %23 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %22, i32 0, i32 2
  %24 = load %struct.pollfd*, %struct.pollfd** %23, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i8* @realloc(%struct.pollfd* %24, i64 %25)
  %27 = bitcast i8* %26 to %struct.pollfd*
  store %struct.pollfd* %27, %struct.pollfd** %10, align 8
  %28 = load %struct.pollfd*, %struct.pollfd** %10, align 8
  %29 = icmp eq %struct.pollfd* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %2
  %34 = load %struct.fdarray*, %struct.fdarray** %4, align 8
  %35 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %34, i32 0, i32 1
  %36 = load %struct.pollfd*, %struct.pollfd** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i8* @realloc(%struct.pollfd* %36, i64 %37)
  store i8* %38, i8** %6, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.pollfd*, %struct.pollfd** %10, align 8
  %43 = call i32 @free(%struct.pollfd* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %57

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.fdarray*, %struct.fdarray** %4, align 8
  %49 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pollfd*, %struct.pollfd** %10, align 8
  %51 = load %struct.fdarray*, %struct.fdarray** %4, align 8
  %52 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %51, i32 0, i32 2
  store %struct.pollfd* %50, %struct.pollfd** %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = bitcast i8* %53 to %struct.pollfd*
  %55 = load %struct.fdarray*, %struct.fdarray** %4, align 8
  %56 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %55, i32 0, i32 1
  store %struct.pollfd* %54, %struct.pollfd** %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %46, %41, %30
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @realloc(%struct.pollfd*, i64) #1

declare dso_local i32 @free(%struct.pollfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
