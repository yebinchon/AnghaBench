; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_new_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_new_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.kernfs_node* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %15 = call i32 @kernfs_root(%struct.kernfs_node* %14)
  %16 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call %struct.kernfs_node* @__kernfs_new_node(i32 %15, %struct.kernfs_node* %16, i8* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  store %struct.kernfs_node* %22, %struct.kernfs_node** %13, align 8
  %23 = load %struct.kernfs_node*, %struct.kernfs_node** %13, align 8
  %24 = icmp ne %struct.kernfs_node* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %27 = call i32 @kernfs_get(%struct.kernfs_node* %26)
  %28 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %29 = load %struct.kernfs_node*, %struct.kernfs_node** %13, align 8
  %30 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %29, i32 0, i32 0
  store %struct.kernfs_node* %28, %struct.kernfs_node** %30, align 8
  br label %31

31:                                               ; preds = %25, %6
  %32 = load %struct.kernfs_node*, %struct.kernfs_node** %13, align 8
  ret %struct.kernfs_node* %32
}

declare dso_local %struct.kernfs_node* @__kernfs_new_node(i32, %struct.kernfs_node*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kernfs_root(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_get(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
