; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_delete_object_part.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_kmemleak.c_delete_object_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmemleak_object = type { i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @delete_object_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_object_part(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kmemleak_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call %struct.kmemleak_object* @find_and_remove_object(i64 %8, i32 1)
  store %struct.kmemleak_object* %9, %struct.kmemleak_object** %5, align 8
  %10 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %11 = icmp ne %struct.kmemleak_object* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %15 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %18 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %21 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %19, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %13
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %6, align 8
  %31 = sub i64 %29, %30
  %32 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %33 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @create_object(i64 %28, i64 %31, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %27, %13
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %38, %39
  %41 = load i64, i64* %7, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i64, i64* %3, align 8
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %44, %45
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %3, align 8
  %49 = sub i64 %47, %48
  %50 = load i64, i64* %4, align 8
  %51 = sub i64 %49, %50
  %52 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %53 = getelementptr inbounds %struct.kmemleak_object, %struct.kmemleak_object* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @create_object(i64 %46, i64 %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %43, %37
  %58 = load %struct.kmemleak_object*, %struct.kmemleak_object** %5, align 8
  %59 = call i32 @__delete_object(%struct.kmemleak_object* %58)
  br label %60

60:                                               ; preds = %57, %12
  ret void
}

declare dso_local %struct.kmemleak_object* @find_and_remove_object(i64, i32) #1

declare dso_local i32 @create_object(i64, i64, i32, i32) #1

declare dso_local i32 @__delete_object(%struct.kmemleak_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
