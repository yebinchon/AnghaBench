; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_protocol.h_ORANGEFS_khandle_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_protocol.h_ORANGEFS_khandle_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orangefs_khandle = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orangefs_khandle*, %struct.orangefs_khandle*)* @ORANGEFS_khandle_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ORANGEFS_khandle_cmp(%struct.orangefs_khandle* %0, %struct.orangefs_khandle* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.orangefs_khandle*, align 8
  %5 = alloca %struct.orangefs_khandle*, align 8
  %6 = alloca i32, align 4
  store %struct.orangefs_khandle* %0, %struct.orangefs_khandle** %4, align 8
  store %struct.orangefs_khandle* %1, %struct.orangefs_khandle** %5, align 8
  store i32 15, i32* %6, align 4
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %7
  %11 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %4, align 8
  %12 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %5, align 8
  %19 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %17, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %49

27:                                               ; preds = %10
  %28 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %4, align 8
  %29 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.orangefs_khandle*, %struct.orangefs_khandle** %5, align 8
  %36 = getelementptr inbounds %struct.orangefs_khandle, %struct.orangefs_khandle* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %34, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %49

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  br label %7

48:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %43, %26
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
