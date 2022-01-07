; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_find_next_ancestor.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_find_next_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.kernfs_node* }

@.str = private unnamed_addr constant [55 x i8] c"BUG in find_next_ancestor: called with parent == child\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernfs_node* (%struct.kernfs_node*, %struct.kernfs_node*)* @find_next_ancestor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernfs_node* @find_next_ancestor(%struct.kernfs_node* %0, %struct.kernfs_node* %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %5, align 8
  %6 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %8 = icmp eq %struct.kernfs_node* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @pr_crit_once(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  store %struct.kernfs_node* null, %struct.kernfs_node** %3, align 8
  br label %30

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %24, %11
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %14 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %13, i32 0, i32 0
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %14, align 8
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %17 = icmp ne %struct.kernfs_node* %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %20 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %19, i32 0, i32 0
  %21 = load %struct.kernfs_node*, %struct.kernfs_node** %20, align 8
  %22 = icmp ne %struct.kernfs_node* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.kernfs_node* null, %struct.kernfs_node** %3, align 8
  br label %30

24:                                               ; preds = %18
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %26 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %25, i32 0, i32 0
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %26, align 8
  store %struct.kernfs_node* %27, %struct.kernfs_node** %4, align 8
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  store %struct.kernfs_node* %29, %struct.kernfs_node** %3, align 8
  br label %30

30:                                               ; preds = %28, %23, %9
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  ret %struct.kernfs_node* %31
}

declare dso_local i32 @pr_crit_once(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
