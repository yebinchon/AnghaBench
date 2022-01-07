; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_depth.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.kernfs_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kernfs_node*, %struct.kernfs_node*)* @kernfs_depth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kernfs_depth(%struct.kernfs_node* %0, %struct.kernfs_node* %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca i64, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %3, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %17, %2
  %7 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %8 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %7, i32 0, i32 0
  %9 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %10 = icmp ne %struct.kernfs_node* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %14 = icmp ne %struct.kernfs_node* %12, %13
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i1 [ false, %6 ], [ %14, %11 ]
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %5, align 8
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %21 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %20, i32 0, i32 0
  %22 = load %struct.kernfs_node*, %struct.kernfs_node** %21, align 8
  store %struct.kernfs_node* %22, %struct.kernfs_node** %4, align 8
  br label %6

23:                                               ; preds = %15
  %24 = load i64, i64* %5, align 8
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
