; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_parent_assign.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_obj_parent_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (i32, i32, i32)* }
%struct.objagg_obj = type { i32, %struct.objagg_obj*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg*, %struct.objagg_obj*, %struct.objagg_obj*, i32)* @objagg_obj_parent_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objagg_obj_parent_assign(%struct.objagg* %0, %struct.objagg_obj* %1, %struct.objagg_obj* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.objagg*, align 8
  %7 = alloca %struct.objagg_obj*, align 8
  %8 = alloca %struct.objagg_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.objagg* %0, %struct.objagg** %6, align 8
  store %struct.objagg_obj* %1, %struct.objagg_obj** %7, align 8
  store %struct.objagg_obj* %2, %struct.objagg_obj** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.objagg*, %struct.objagg** %6, align 8
  %12 = getelementptr inbounds %struct.objagg, %struct.objagg* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8* (i32, i32, i32)*, i8* (i32, i32, i32)** %14, align 8
  %16 = load %struct.objagg*, %struct.objagg** %6, align 8
  %17 = getelementptr inbounds %struct.objagg, %struct.objagg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.objagg_obj*, %struct.objagg_obj** %8, align 8
  %20 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.objagg_obj*, %struct.objagg_obj** %7, align 8
  %23 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i8* %15(i32 %18, i32 %21, i32 %24)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @IS_ERR(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @PTR_ERR(i8* %30)
  store i32 %31, i32* %5, align 4
  br label %54

32:                                               ; preds = %4
  %33 = load %struct.objagg_obj*, %struct.objagg_obj** %8, align 8
  %34 = load %struct.objagg_obj*, %struct.objagg_obj** %7, align 8
  %35 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %34, i32 0, i32 1
  store %struct.objagg_obj* %33, %struct.objagg_obj** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.objagg_obj*, %struct.objagg_obj** %7, align 8
  %38 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.objagg_obj*, %struct.objagg_obj** %7, align 8
  %43 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %42, i32 0, i32 1
  %44 = load %struct.objagg_obj*, %struct.objagg_obj** %43, align 8
  %45 = call i32 @objagg_obj_ref_inc(%struct.objagg_obj* %44)
  br label %46

46:                                               ; preds = %41, %32
  %47 = load %struct.objagg*, %struct.objagg** %6, align 8
  %48 = load %struct.objagg_obj*, %struct.objagg_obj** %7, align 8
  %49 = load %struct.objagg_obj*, %struct.objagg_obj** %8, align 8
  %50 = load %struct.objagg_obj*, %struct.objagg_obj** %8, align 8
  %51 = getelementptr inbounds %struct.objagg_obj, %struct.objagg_obj* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @trace_objagg_obj_parent_assign(%struct.objagg* %47, %struct.objagg_obj* %48, %struct.objagg_obj* %49, i32 %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %46, %29
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @objagg_obj_ref_inc(%struct.objagg_obj*) #1

declare dso_local i32 @trace_objagg_obj_parent_assign(%struct.objagg*, %struct.objagg_obj*, %struct.objagg_obj*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
