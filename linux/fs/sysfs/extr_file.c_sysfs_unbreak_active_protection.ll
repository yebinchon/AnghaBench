; ModuleID = '/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_unbreak_active_protection.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysfs/extr_file.c_sysfs_unbreak_active_protection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kobject* }
%struct.kobject = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysfs_unbreak_active_protection(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  %3 = alloca %struct.kobject*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %2, align 8
  %4 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %5 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.kobject*, %struct.kobject** %7, align 8
  store %struct.kobject* %8, %struct.kobject** %3, align 8
  %9 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %10 = call i32 @kernfs_unbreak_active_protection(%struct.kernfs_node* %9)
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %12 = call i32 @kernfs_put(%struct.kernfs_node* %11)
  %13 = load %struct.kobject*, %struct.kobject** %3, align 8
  %14 = call i32 @kobject_put(%struct.kobject* %13)
  ret void
}

declare dso_local i32 @kernfs_unbreak_active_protection(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

declare dso_local i32 @kobject_put(%struct.kobject*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
