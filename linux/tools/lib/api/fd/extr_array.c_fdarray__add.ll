; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fd/extr_array.c_fdarray__add.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fd/extr_array.c_fdarray__add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdarray = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i16 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdarray__add(%struct.fdarray* %0, i32 %1, i16 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdarray*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.fdarray* %0, %struct.fdarray** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16 %2, i16* %7, align 2
  %9 = load %struct.fdarray*, %struct.fdarray** %5, align 8
  %10 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.fdarray*, %struct.fdarray** %5, align 8
  %13 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.fdarray*, %struct.fdarray** %5, align 8
  %16 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.fdarray*, %struct.fdarray** %5, align 8
  %21 = load %struct.fdarray*, %struct.fdarray** %5, align 8
  %22 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @fdarray__grow(%struct.fdarray* %20, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %55

29:                                               ; preds = %19, %3
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.fdarray*, %struct.fdarray** %5, align 8
  %32 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load %struct.fdarray*, %struct.fdarray** %5, align 8
  %35 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %30, i32* %39, align 4
  %40 = load i16, i16* %7, align 2
  %41 = load %struct.fdarray*, %struct.fdarray** %5, align 8
  %42 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.fdarray*, %struct.fdarray** %5, align 8
  %45 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i16 %40, i16* %49, align 4
  %50 = load %struct.fdarray*, %struct.fdarray** %5, align 8
  %51 = getelementptr inbounds %struct.fdarray, %struct.fdarray* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %29, %26
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @fdarray__grow(%struct.fdarray*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
