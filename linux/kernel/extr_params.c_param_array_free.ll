; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_params.c_param_array_free.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_params.c_param_array_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kparam_array = type { i32*, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @param_array_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @param_array_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kparam_array*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.kparam_array*
  store %struct.kparam_array* %6, %struct.kparam_array** %4, align 8
  %7 = load %struct.kparam_array*, %struct.kparam_array** %4, align 8
  %8 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i64)*, i32 (i64)** %10, align 8
  %12 = icmp ne i32 (i64)* %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %49, %13
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.kparam_array*, %struct.kparam_array** %4, align 8
  %17 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.kparam_array*, %struct.kparam_array** %4, align 8
  %22 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  br label %29

25:                                               ; preds = %14
  %26 = load %struct.kparam_array*, %struct.kparam_array** %4, align 8
  %27 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %24, %20 ], [ %28, %25 ]
  %31 = icmp ult i32 %15, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct.kparam_array*, %struct.kparam_array** %4, align 8
  %34 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %33, i32 0, i32 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i64)*, i32 (i64)** %36, align 8
  %38 = load %struct.kparam_array*, %struct.kparam_array** %4, align 8
  %39 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.kparam_array*, %struct.kparam_array** %4, align 8
  %42 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = mul i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %40, %46
  %48 = call i32 %37(i64 %47)
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %3, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %14

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
