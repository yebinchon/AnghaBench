; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_params.c_param_array_set.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_params.c_param_array_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32, i32, i32, %struct.kparam_array* }
%struct.kparam_array = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @param_array_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @param_array_set(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kernel_param*, align 8
  %5 = alloca %struct.kparam_array*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %4, align 8
  %7 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %8 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %7, i32 0, i32 3
  %9 = load %struct.kparam_array*, %struct.kparam_array** %8, align 8
  store %struct.kparam_array* %9, %struct.kparam_array** %5, align 8
  %10 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %11 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %14 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %3, align 8
  %17 = load %struct.kparam_array*, %struct.kparam_array** %5, align 8
  %18 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kparam_array*, %struct.kparam_array** %5, align 8
  %21 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kparam_array*, %struct.kparam_array** %5, align 8
  %24 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.kparam_array*, %struct.kparam_array** %5, align 8
  %27 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %32 = getelementptr inbounds %struct.kernel_param, %struct.kernel_param* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.kparam_array*, %struct.kparam_array** %5, align 8
  %35 = getelementptr inbounds %struct.kparam_array, %struct.kparam_array* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = inttoptr i64 %36 to i32*
  br label %41

40:                                               ; preds = %2
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32* [ %39, %38 ], [ %6, %40 ]
  %43 = call i32 @param_array(i32 %12, i32 %15, i8* %16, i32 1, i32 %19, i32 %22, i32 %25, i32 %30, i32 %33, i32* %42)
  ret i32 %43
}

declare dso_local i32 @param_array(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
