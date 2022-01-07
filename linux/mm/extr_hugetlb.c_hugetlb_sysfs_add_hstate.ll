; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_sysfs_add_hstate.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_hugetlb_sysfs_add_hstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hstate = type { i32 }
%struct.kobject = type { i32 }
%struct.attribute_group = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hstate*, %struct.kobject*, %struct.kobject**, %struct.attribute_group*)* @hugetlb_sysfs_add_hstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlb_sysfs_add_hstate(%struct.hstate* %0, %struct.kobject* %1, %struct.kobject** %2, %struct.attribute_group* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hstate*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.kobject**, align 8
  %9 = alloca %struct.attribute_group*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hstate* %0, %struct.hstate** %6, align 8
  store %struct.kobject* %1, %struct.kobject** %7, align 8
  store %struct.kobject** %2, %struct.kobject*** %8, align 8
  store %struct.attribute_group* %3, %struct.attribute_group** %9, align 8
  %12 = load %struct.hstate*, %struct.hstate** %6, align 8
  %13 = call i32 @hstate_index(%struct.hstate* %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.hstate*, %struct.hstate** %6, align 8
  %15 = getelementptr inbounds %struct.hstate, %struct.hstate* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kobject*, %struct.kobject** %7, align 8
  %18 = call %struct.kobject* @kobject_create_and_add(i32 %16, %struct.kobject* %17)
  %19 = load %struct.kobject**, %struct.kobject*** %8, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.kobject*, %struct.kobject** %19, i64 %21
  store %struct.kobject* %18, %struct.kobject** %22, align 8
  %23 = load %struct.kobject**, %struct.kobject*** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.kobject*, %struct.kobject** %23, i64 %25
  %27 = load %struct.kobject*, %struct.kobject** %26, align 8
  %28 = icmp ne %struct.kobject* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %51

32:                                               ; preds = %4
  %33 = load %struct.kobject**, %struct.kobject*** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.kobject*, %struct.kobject** %33, i64 %35
  %37 = load %struct.kobject*, %struct.kobject** %36, align 8
  %38 = load %struct.attribute_group*, %struct.attribute_group** %9, align 8
  %39 = call i32 @sysfs_create_group(%struct.kobject* %37, %struct.attribute_group* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  %43 = load %struct.kobject**, %struct.kobject*** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.kobject*, %struct.kobject** %43, i64 %45
  %47 = load %struct.kobject*, %struct.kobject** %46, align 8
  %48 = call i32 @kobject_put(%struct.kobject* %47)
  br label %49

49:                                               ; preds = %42, %32
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %49, %29
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @hstate_index(%struct.hstate*) #1

declare dso_local %struct.kobject* @kobject_create_and_add(i32, %struct.kobject*) #1

declare dso_local i32 @sysfs_create_group(%struct.kobject*, %struct.attribute_group*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
