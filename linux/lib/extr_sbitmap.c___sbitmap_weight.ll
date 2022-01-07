; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_sbitmap.c___sbitmap_weight.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_sbitmap.c___sbitmap_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbitmap = type { i32, %struct.sbitmap_word* }
%struct.sbitmap_word = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbitmap*, i32)* @__sbitmap_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sbitmap_weight(%struct.sbitmap* %0, i32 %1) #0 {
  %3 = alloca %struct.sbitmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sbitmap_word*, align 8
  store %struct.sbitmap* %0, %struct.sbitmap** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %46, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %11 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %49

14:                                               ; preds = %8
  %15 = load %struct.sbitmap*, %struct.sbitmap** %3, align 8
  %16 = getelementptr inbounds %struct.sbitmap, %struct.sbitmap* %15, i32 0, i32 1
  %17 = load %struct.sbitmap_word*, %struct.sbitmap_word** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sbitmap_word, %struct.sbitmap_word* %17, i64 %19
  store %struct.sbitmap_word* %20, %struct.sbitmap_word** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %14
  %24 = load %struct.sbitmap_word*, %struct.sbitmap_word** %7, align 8
  %25 = getelementptr inbounds %struct.sbitmap_word, %struct.sbitmap_word* %24, i32 0, i32 2
  %26 = load %struct.sbitmap_word*, %struct.sbitmap_word** %7, align 8
  %27 = getelementptr inbounds %struct.sbitmap_word, %struct.sbitmap_word* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @bitmap_weight(i32* %25, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %45

34:                                               ; preds = %14
  %35 = load %struct.sbitmap_word*, %struct.sbitmap_word** %7, align 8
  %36 = getelementptr inbounds %struct.sbitmap_word, %struct.sbitmap_word* %35, i32 0, i32 1
  %37 = load %struct.sbitmap_word*, %struct.sbitmap_word** %7, align 8
  %38 = getelementptr inbounds %struct.sbitmap_word, %struct.sbitmap_word* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @bitmap_weight(i32* %36, i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %34, %23
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %8

49:                                               ; preds = %8
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i64 @bitmap_weight(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
