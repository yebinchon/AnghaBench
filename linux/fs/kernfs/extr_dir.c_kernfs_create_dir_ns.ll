; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_create_dir_ns.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_create_dir_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i8*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@KERNFS_DIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernfs_node* @kernfs_create_dir_ns(%struct.kernfs_node* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca %struct.kernfs_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.kernfs_node*, align 8
  %17 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @S_IFDIR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @KERNFS_DIR, align 4
  %26 = call %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* %18, i8* %19, i32 %22, i32 %23, i32 %24, i32 %25)
  store %struct.kernfs_node* %26, %struct.kernfs_node** %16, align 8
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %28 = icmp ne %struct.kernfs_node* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.kernfs_node* @ERR_PTR(i32 %31)
  store %struct.kernfs_node* %32, %struct.kernfs_node** %8, align 8
  br label %58

33:                                               ; preds = %7
  %34 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %35 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %39 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load i8*, i8** %15, align 8
  %42 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %43 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %46 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %48 = call i32 @kernfs_add_one(%struct.kernfs_node* %47)
  store i32 %48, i32* %17, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %33
  %52 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  store %struct.kernfs_node* %52, %struct.kernfs_node** %8, align 8
  br label %58

53:                                               ; preds = %33
  %54 = load %struct.kernfs_node*, %struct.kernfs_node** %16, align 8
  %55 = call i32 @kernfs_put(%struct.kernfs_node* %54)
  %56 = load i32, i32* %17, align 4
  %57 = call %struct.kernfs_node* @ERR_PTR(i32 %56)
  store %struct.kernfs_node* %57, %struct.kernfs_node** %8, align 8
  br label %58

58:                                               ; preds = %53, %51, %29
  %59 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  ret %struct.kernfs_node* %59
}

declare dso_local %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node*, i8*, i32, i32, i32, i32) #1

declare dso_local %struct.kernfs_node* @ERR_PTR(i32) #1

declare dso_local i32 @kernfs_add_one(%struct.kernfs_node*) #1

declare dso_local i32 @kernfs_put(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
