; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_sysfs.c_nfs_netns_object_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_sysfs.c_nfs_netns_object_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kset = type { i32 }
%struct.kobject = type { %struct.kset* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfs_netns_object_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kobject* (i8*, %struct.kset*, %struct.kobject*)* @nfs_netns_object_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kobject* @nfs_netns_object_alloc(i8* %0, %struct.kset* %1, %struct.kobject* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kset*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca %struct.kobject*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.kset* %1, %struct.kset** %6, align 8
  store %struct.kobject* %2, %struct.kobject** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.kobject* @kzalloc(i32 8, i32 %9)
  store %struct.kobject* %10, %struct.kobject** %8, align 8
  %11 = load %struct.kobject*, %struct.kobject** %8, align 8
  %12 = icmp ne %struct.kobject* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.kset*, %struct.kset** %6, align 8
  %15 = load %struct.kobject*, %struct.kobject** %8, align 8
  %16 = getelementptr inbounds %struct.kobject, %struct.kobject* %15, i32 0, i32 0
  store %struct.kset* %14, %struct.kset** %16, align 8
  %17 = load %struct.kobject*, %struct.kobject** %8, align 8
  %18 = load %struct.kobject*, %struct.kobject** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @kobject_init_and_add(%struct.kobject* %17, i32* @nfs_netns_object_type, %struct.kobject* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load %struct.kobject*, %struct.kobject** %8, align 8
  store %struct.kobject* %23, %struct.kobject** %4, align 8
  br label %28

24:                                               ; preds = %13
  %25 = load %struct.kobject*, %struct.kobject** %8, align 8
  %26 = call i32 @kobject_put(%struct.kobject* %25)
  br label %27

27:                                               ; preds = %24, %3
  store %struct.kobject* null, %struct.kobject** %4, align 8
  br label %28

28:                                               ; preds = %27, %22
  %29 = load %struct.kobject*, %struct.kobject** %4, align 8
  ret %struct.kobject* %29
}

declare dso_local %struct.kobject* @kzalloc(i32, i32) #1

declare dso_local i64 @kobject_init_and_add(%struct.kobject*, i32*, %struct.kobject*, i8*, i8*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
