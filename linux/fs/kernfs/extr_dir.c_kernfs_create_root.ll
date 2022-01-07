; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_create_root.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_create_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_root = type { i32, i32, i32, %struct.kernfs_node*, %struct.kernfs_syscall_ops*, i32, i32 }
%struct.kernfs_node = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { %struct.kernfs_root* }
%struct.kernfs_syscall_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@GLOBAL_ROOT_GID = common dso_local global i32 0, align 4
@KERNFS_DIR = common dso_local global i32 0, align 4
@KERNFS_ROOT_CREATE_DEACTIVATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kernfs_root* @kernfs_create_root(%struct.kernfs_syscall_ops* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.kernfs_root*, align 8
  %5 = alloca %struct.kernfs_syscall_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kernfs_root*, align 8
  %9 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_syscall_ops* %0, %struct.kernfs_syscall_ops** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.kernfs_root* @kzalloc(i32 40, i32 %10)
  store %struct.kernfs_root* %11, %struct.kernfs_root** %8, align 8
  %12 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %13 = icmp ne %struct.kernfs_root* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.kernfs_root* @ERR_PTR(i32 %16)
  store %struct.kernfs_root* %17, %struct.kernfs_root** %4, align 8
  br label %79

18:                                               ; preds = %3
  %19 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %20 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %19, i32 0, i32 5
  %21 = call i32 @idr_init(i32* %20)
  %22 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %23 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %22, i32 0, i32 6
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %26 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %28 = load i32, i32* @S_IFDIR, align 4
  %29 = load i32, i32* @S_IRUGO, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @S_IXUGO, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %34 = load i32, i32* @GLOBAL_ROOT_GID, align 4
  %35 = load i32, i32* @KERNFS_DIR, align 4
  %36 = call %struct.kernfs_node* @__kernfs_new_node(%struct.kernfs_root* %27, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34, i32 %35)
  store %struct.kernfs_node* %36, %struct.kernfs_node** %9, align 8
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %38 = icmp ne %struct.kernfs_node* %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %18
  %40 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %41 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %40, i32 0, i32 5
  %42 = call i32 @idr_destroy(i32* %41)
  %43 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %44 = call i32 @kfree(%struct.kernfs_root* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.kernfs_root* @ERR_PTR(i32 %46)
  store %struct.kernfs_root* %47, %struct.kernfs_root** %4, align 8
  br label %79

48:                                               ; preds = %18
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %51 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  %52 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %53 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %54 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.kernfs_root* %52, %struct.kernfs_root** %55, align 8
  %56 = load %struct.kernfs_syscall_ops*, %struct.kernfs_syscall_ops** %5, align 8
  %57 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %58 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %57, i32 0, i32 4
  store %struct.kernfs_syscall_ops* %56, %struct.kernfs_syscall_ops** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %61 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %63 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %64 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %63, i32 0, i32 3
  store %struct.kernfs_node* %62, %struct.kernfs_node** %64, align 8
  %65 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %66 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %65, i32 0, i32 2
  %67 = call i32 @init_waitqueue_head(i32* %66)
  %68 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  %69 = getelementptr inbounds %struct.kernfs_root, %struct.kernfs_root* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @KERNFS_ROOT_CREATE_DEACTIVATED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %48
  %75 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %76 = call i32 @kernfs_activate(%struct.kernfs_node* %75)
  br label %77

77:                                               ; preds = %74, %48
  %78 = load %struct.kernfs_root*, %struct.kernfs_root** %8, align 8
  store %struct.kernfs_root* %78, %struct.kernfs_root** %4, align 8
  br label %79

79:                                               ; preds = %77, %39, %14
  %80 = load %struct.kernfs_root*, %struct.kernfs_root** %4, align 8
  ret %struct.kernfs_root* %80
}

declare dso_local %struct.kernfs_root* @kzalloc(i32, i32) #1

declare dso_local %struct.kernfs_root* @ERR_PTR(i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.kernfs_node* @__kernfs_new_node(%struct.kernfs_root*, i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.kernfs_root*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @kernfs_activate(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
