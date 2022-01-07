; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_ops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_file.c_kernfs_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_ops = type { i32 }
%struct.kernfs_node = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kernfs_ops* }

@KERNFS_LOCKDEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernfs_ops* (%struct.kernfs_node*)* @kernfs_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernfs_ops* @kernfs_ops(%struct.kernfs_node* %0) #0 {
  %2 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %2, align 8
  %3 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %4 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @KERNFS_LOCKDEP, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %11 = call i32 @lockdep_assert_held(%struct.kernfs_node* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %2, align 8
  %14 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.kernfs_ops*, %struct.kernfs_ops** %15, align 8
  ret %struct.kernfs_ops* %16
}

declare dso_local i32 @lockdep_assert_held(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
