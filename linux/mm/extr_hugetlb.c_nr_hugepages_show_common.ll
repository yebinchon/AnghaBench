; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_nr_hugepages_show_common.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_hugetlb.c_nr_hugepages_show_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }
%struct.hstate = type { i64, i64* }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @nr_hugepages_show_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nr_hugepages_show_common(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.kobj_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hstate*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.kobject*, %struct.kobject** %4, align 8
  %11 = call %struct.hstate* @kobj_to_hstate(%struct.kobject* %10, i32* %9)
  store %struct.hstate* %11, %struct.hstate** %7, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @NUMA_NO_NODE, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.hstate*, %struct.hstate** %7, align 8
  %17 = getelementptr inbounds %struct.hstate, %struct.hstate* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  br label %27

19:                                               ; preds = %3
  %20 = load %struct.hstate*, %struct.hstate** %7, align 8
  %21 = getelementptr inbounds %struct.hstate, %struct.hstate* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %19, %15
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %29)
  ret i32 %30
}

declare dso_local %struct.hstate* @kobj_to_hstate(%struct.kobject*, i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
