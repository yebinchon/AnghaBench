; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c_internal_create_groups.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_group.c_internal_create_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute_group = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, i32, %struct.attribute_group**)* @internal_create_groups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @internal_create_groups(%struct.kobject* %0, i32 %1, %struct.attribute_group** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.attribute_group**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.attribute_group** %2, %struct.attribute_group*** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.attribute_group**, %struct.attribute_group*** %7, align 8
  %11 = icmp ne %struct.attribute_group** %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %52

13:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %47, %13
  %15 = load %struct.attribute_group**, %struct.attribute_group*** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %15, i64 %17
  %19 = load %struct.attribute_group*, %struct.attribute_group** %18, align 8
  %20 = icmp ne %struct.attribute_group* %19, null
  br i1 %20, label %21, label %50

21:                                               ; preds = %14
  %22 = load %struct.kobject*, %struct.kobject** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.attribute_group**, %struct.attribute_group*** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %24, i64 %26
  %28 = load %struct.attribute_group*, %struct.attribute_group** %27, align 8
  %29 = call i32 @internal_create_group(%struct.kobject* %22, i32 %23, %struct.attribute_group* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %37, %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %9, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.kobject*, %struct.kobject** %5, align 8
  %39 = load %struct.attribute_group**, %struct.attribute_group*** %7, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.attribute_group*, %struct.attribute_group** %39, i64 %41
  %43 = load %struct.attribute_group*, %struct.attribute_group** %42, align 8
  %44 = call i32 @sysfs_remove_group(%struct.kobject* %38, %struct.attribute_group* %43)
  br label %33

45:                                               ; preds = %33
  br label %50

46:                                               ; preds = %21
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %14

50:                                               ; preds = %45, %14
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %12
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @internal_create_group(%struct.kobject*, i32, %struct.attribute_group*) #1

declare dso_local i32 @sysfs_remove_group(%struct.kobject*, %struct.attribute_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
