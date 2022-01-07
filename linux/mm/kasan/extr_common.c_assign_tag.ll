; ModuleID = '/home/carl/AnghaBench/linux/mm/kasan/extr_common.c_assign_tag.c'
source_filename = "/home/carl/AnghaBench/linux/mm/kasan/extr_common.c_assign_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32, i32 }

@SLAB_TYPESAFE_BY_RCU = common dso_local global i32 0, align 4
@KASAN_TAG_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kmem_cache*, i8*, i32, i32)* @assign_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @assign_tag(%struct.kmem_cache* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kmem_cache*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kmem_cache* %0, %struct.kmem_cache** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @get_tag(i8* %13)
  store i32 %14, i32* %5, align 4
  br label %46

15:                                               ; preds = %4
  %16 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %17 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %15
  %21 = load %struct.kmem_cache*, %struct.kmem_cache** %6, align 8
  %22 = getelementptr inbounds %struct.kmem_cache, %struct.kmem_cache* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SLAB_TYPESAFE_BY_RCU, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @KASAN_TAG_KERNEL, align 4
  br label %34

32:                                               ; preds = %27
  %33 = call i32 (...) @random_tag()
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %5, align 4
  br label %46

36:                                               ; preds = %20, %15
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (...) @random_tag()
  br label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @get_tag(i8* %42)
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %40, %39 ], [ %43, %41 ]
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %34, %12
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @get_tag(i8*) #1

declare dso_local i32 @random_tag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
