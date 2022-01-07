; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fat.h_fat_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fat.h_fat_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*)* @fat_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @fat_checksum(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = getelementptr inbounds i8, i8* %4, i64 0
  %6 = load i8, i8* %5, align 1
  store i8 %6, i8* %3, align 1
  %7 = load i8, i8* %3, align 1
  %8 = zext i8 %7 to i32
  %9 = shl i32 %8, 7
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = ashr i32 %11, 1
  %13 = add nsw i32 %9, %12
  %14 = load i8*, i8** %2, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %13, %17
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %3, align 1
  %20 = load i8, i8* %3, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 7
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = ashr i32 %24, 1
  %26 = add nsw i32 %22, %25
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = add nsw i32 %26, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %3, align 1
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = shl i32 %34, 7
  %36 = load i8, i8* %3, align 1
  %37 = zext i8 %36 to i32
  %38 = ashr i32 %37, 1
  %39 = add nsw i32 %35, %38
  %40 = load i8*, i8** %2, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %39, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %3, align 1
  %46 = load i8, i8* %3, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 7
  %49 = load i8, i8* %3, align 1
  %50 = zext i8 %49 to i32
  %51 = ashr i32 %50, 1
  %52 = add nsw i32 %48, %51
  %53 = load i8*, i8** %2, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %52, %56
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %3, align 1
  %59 = load i8, i8* %3, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 7
  %62 = load i8, i8* %3, align 1
  %63 = zext i8 %62 to i32
  %64 = ashr i32 %63, 1
  %65 = add nsw i32 %61, %64
  %66 = load i8*, i8** %2, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 5
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %65, %69
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %3, align 1
  %72 = load i8, i8* %3, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 7
  %75 = load i8, i8* %3, align 1
  %76 = zext i8 %75 to i32
  %77 = ashr i32 %76, 1
  %78 = add nsw i32 %74, %77
  %79 = load i8*, i8** %2, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 6
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %78, %82
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %3, align 1
  %85 = load i8, i8* %3, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 7
  %88 = load i8, i8* %3, align 1
  %89 = zext i8 %88 to i32
  %90 = ashr i32 %89, 1
  %91 = add nsw i32 %87, %90
  %92 = load i8*, i8** %2, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 7
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = add nsw i32 %91, %95
  %97 = trunc i32 %96 to i8
  store i8 %97, i8* %3, align 1
  %98 = load i8, i8* %3, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 7
  %101 = load i8, i8* %3, align 1
  %102 = zext i8 %101 to i32
  %103 = ashr i32 %102, 1
  %104 = add nsw i32 %100, %103
  %105 = load i8*, i8** %2, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = add nsw i32 %104, %108
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %3, align 1
  %111 = load i8, i8* %3, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 7
  %114 = load i8, i8* %3, align 1
  %115 = zext i8 %114 to i32
  %116 = ashr i32 %115, 1
  %117 = add nsw i32 %113, %116
  %118 = load i8*, i8** %2, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 9
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = add nsw i32 %117, %121
  %123 = trunc i32 %122 to i8
  store i8 %123, i8* %3, align 1
  %124 = load i8, i8* %3, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 %125, 7
  %127 = load i8, i8* %3, align 1
  %128 = zext i8 %127 to i32
  %129 = ashr i32 %128, 1
  %130 = add nsw i32 %126, %129
  %131 = load i8*, i8** %2, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 10
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = add nsw i32 %130, %134
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %3, align 1
  %137 = load i8, i8* %3, align 1
  ret i8 %137
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
