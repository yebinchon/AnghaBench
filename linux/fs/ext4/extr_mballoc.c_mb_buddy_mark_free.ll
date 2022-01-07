; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_buddy_mark_free.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_mballoc.c_mb_buddy_mark_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_buddy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_buddy*, i32, i32)* @mb_buddy_mark_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mb_buddy_mark_free(%struct.ext4_buddy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ext4_buddy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.ext4_buddy* %0, %struct.ext4_buddy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %11 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %12 = load i32, i32* %8, align 4
  %13 = call i8* @mb_find_buddy(%struct.ext4_buddy* %11, i32 %12, i32* %7)
  store i8* %13, i8** %9, align 8
  br label %14

14:                                               ; preds = %94, %3
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %100

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @mb_buddy_adjust_border(i32* %5, i8* %22, i32 -1)
  %24 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %25 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %23
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  br label %36

36:                                               ; preds = %21, %17
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %9, align 8
  %42 = call i64 @mb_buddy_adjust_border(i32* %6, i8* %41, i32 1)
  %43 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %44 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %42
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  br label %55

55:                                               ; preds = %40, %36
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %100

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i8* @mb_find_buddy(%struct.ext4_buddy* %67, i32 %68, i32* %7)
  store i8* %69, i8** %10, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %94, label %71

71:                                               ; preds = %66, %60
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %74, %75
  %77 = add nsw i32 %76, 1
  %78 = call i32 @mb_clear_bits(i8* %72, i32 %73, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %79, %80
  %82 = add nsw i32 %81, 1
  %83 = load %struct.ext4_buddy*, %struct.ext4_buddy** %4, align 8
  %84 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, %82
  store i32 %93, i32* %91, align 4
  br label %100

94:                                               ; preds = %66
  %95 = load i32, i32* %5, align 4
  %96 = ashr i32 %95, 1
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = ashr i32 %97, 1
  store i32 %98, i32* %6, align 4
  %99 = load i8*, i8** %10, align 8
  store i8* %99, i8** %9, align 8
  br label %14

100:                                              ; preds = %71, %59, %14
  ret void
}

declare dso_local i8* @mb_find_buddy(%struct.ext4_buddy*, i32, i32*) #1

declare dso_local i64 @mb_buddy_adjust_border(i32*, i8*, i32) #1

declare dso_local i32 @mb_clear_bits(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
