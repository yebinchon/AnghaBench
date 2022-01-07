; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_cmp_reserve_info.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_livetree.c_cmp_reserve_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reserve_info = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_reserve_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_reserve_info(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.reserve_info*, align 8
  %7 = alloca %struct.reserve_info*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.reserve_info**
  %10 = load %struct.reserve_info*, %struct.reserve_info** %9, align 8
  store %struct.reserve_info* %10, %struct.reserve_info** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.reserve_info**
  %13 = load %struct.reserve_info*, %struct.reserve_info** %12, align 8
  store %struct.reserve_info* %13, %struct.reserve_info** %7, align 8
  %14 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %15 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.reserve_info*, %struct.reserve_info** %7, align 8
  %18 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %24 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.reserve_info*, %struct.reserve_info** %7, align 8
  %27 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %50

31:                                               ; preds = %22
  %32 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %33 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.reserve_info*, %struct.reserve_info** %7, align 8
  %36 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %50

40:                                               ; preds = %31
  %41 = load %struct.reserve_info*, %struct.reserve_info** %6, align 8
  %42 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.reserve_info*, %struct.reserve_info** %7, align 8
  %45 = getelementptr inbounds %struct.reserve_info, %struct.reserve_info* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %39, %30, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
