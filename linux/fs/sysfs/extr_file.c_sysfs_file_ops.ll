; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_file_ops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_file_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_ops = type { i32 }
%struct.kernfs_node = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.kobject* }
%struct.kobject = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.sysfs_ops* }

@KERNFS_LOCKDEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sysfs_ops* (%struct.kernfs_node*)* @sysfs_file_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sysfs_ops* @sysfs_file_ops(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca %struct.kobject*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %2, align 8
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %5 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.kobject*, %struct.kobject** %7, align 8
  store %struct.kobject* %8, %struct.kobject** %3, align 8
  %9 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %10 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @KERNFS_LOCKDEP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %17 = call i32 @lockdep_assert_held(%struct.kernfs_node* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.kobject*, %struct.kobject** %3, align 8
  %20 = getelementptr inbounds %struct.kobject, %struct.kobject* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.kobject*, %struct.kobject** %3, align 8
  %25 = getelementptr inbounds %struct.kobject, %struct.kobject* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.sysfs_ops*, %struct.sysfs_ops** %27, align 8
  br label %30

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29, %23
  %31 = phi %struct.sysfs_ops* [ %28, %23 ], [ null, %29 ]
  ret %struct.sysfs_ops* %31
}

declare dso_local i32 @lockdep_assert_held(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
