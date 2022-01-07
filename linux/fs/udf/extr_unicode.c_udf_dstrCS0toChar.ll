; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_unicode.c_udf_dstrCS0toChar.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_unicode.c_udf_dstrCS0toChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"incorrect dstring lengths (%d/%d), truncating\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udf_dstrCS0toChar(%struct.super_block* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %5
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %14
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %36, 2
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %34, %24
  br label %41

41:                                               ; preds = %40, %14
  br label %42

42:                                               ; preds = %41, %5
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @udf_name_from_CS0(%struct.super_block* %43, i32* %44, i32 %45, i32* %46, i32 %47, i32 0)
  ret i32 %48
}

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @udf_name_from_CS0(%struct.super_block*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
