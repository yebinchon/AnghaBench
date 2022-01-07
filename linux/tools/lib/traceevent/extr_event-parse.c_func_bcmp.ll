; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_func_bcmp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_func_bcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.func_map = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @func_bcmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @func_bcmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.func_map*, align 8
  %7 = alloca %struct.func_map*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.func_map*
  store %struct.func_map* %9, %struct.func_map** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.func_map*
  store %struct.func_map* %11, %struct.func_map** %7, align 8
  %12 = load %struct.func_map*, %struct.func_map** %6, align 8
  %13 = getelementptr inbounds %struct.func_map, %struct.func_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.func_map*, %struct.func_map** %7, align 8
  %16 = getelementptr inbounds %struct.func_map, %struct.func_map* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %36, label %19

19:                                               ; preds = %2
  %20 = load %struct.func_map*, %struct.func_map** %6, align 8
  %21 = getelementptr inbounds %struct.func_map, %struct.func_map* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.func_map*, %struct.func_map** %7, align 8
  %24 = getelementptr inbounds %struct.func_map, %struct.func_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.func_map*, %struct.func_map** %6, align 8
  %29 = getelementptr inbounds %struct.func_map, %struct.func_map* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.func_map*, %struct.func_map** %7, align 8
  %32 = getelementptr inbounds %struct.func_map, %struct.func_map* %31, i64 1
  %33 = getelementptr inbounds %struct.func_map, %struct.func_map* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %2
  store i32 0, i32* %3, align 4
  br label %47

37:                                               ; preds = %27, %19
  %38 = load %struct.func_map*, %struct.func_map** %6, align 8
  %39 = getelementptr inbounds %struct.func_map, %struct.func_map* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.func_map*, %struct.func_map** %7, align 8
  %42 = getelementptr inbounds %struct.func_map, %struct.func_map* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %47

46:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %36
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
