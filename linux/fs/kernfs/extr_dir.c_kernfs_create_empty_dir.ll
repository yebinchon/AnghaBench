; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_create_empty_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_create_empty_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i32*, i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@KERNFS_DIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KERNFS_EMPTY_DIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernfs_node* @kernfs_create_empty_dir(%struct.kernfs_node* %0, i8* %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @S_IRUGO, align 4
  %11 = load i32, i32* @S_IXUGO, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @S_IFDIR, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %16 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %17 = load i32, i32* @KERNFS_DIR, align 4
  %18 = call %struct.kernfs_node* @kernfs_new_node(%struct.kernfs_node* %8, i8* %9, i32 %14, i32 %15, i32 %16, i32 %17)
  store %struct.kernfs_node* %18, %struct.kernfs_node** %6, align 8
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %20 = icmp ne %struct.kernfs_node* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.kernfs_node* @ERR_PTR(i32 %23)
  store %struct.kernfs_node* %24, %struct.kernfs_node** %3, align 8
  br label %53

25:                                               ; preds = %2
  %26 = load i32, i32* @KERNFS_EMPTY_DIR, align 4
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %28 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %32 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %36 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %39 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %41 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  %42 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %43 = call i32 @kernfs_add_one(%struct.kernfs_node* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %25
  %47 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  store %struct.kernfs_node* %47, %struct.kernfs_node** %3, align 8
  br label %53

48:                                               ; preds = %25
  %49 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %50 = call i32 @kernfs_put(%struct.kernfs_node* %49)
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.kernfs_node* @ERR_PTR(i32 %51)
  store %struct.kernfs_node* %52, %struct.kernfs_node** %3, align 8
  br label %53

53:                                               ; preds = %48, %46, %21
  %54 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  ret %struct.kernfs_node* %54
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
