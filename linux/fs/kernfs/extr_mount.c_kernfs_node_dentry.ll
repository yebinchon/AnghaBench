; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_node_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_mount.c_kernfs_node_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.kernfs_node = type { i32, i32 }
%struct.super_block = type { i32, i32* }

@kernfs_sops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @kernfs_node_dentry(%struct.kernfs_node* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.kernfs_node*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.kernfs_node*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  store %struct.kernfs_node* null, %struct.kernfs_node** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, @kernfs_sops
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.dentry* @dget(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %6, align 8
  %20 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %21 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %25, %struct.dentry** %3, align 8
  br label %85

26:                                               ; preds = %2
  %27 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %28 = call %struct.kernfs_node* @find_next_ancestor(%struct.kernfs_node* %27, %struct.kernfs_node* null)
  store %struct.kernfs_node* %28, %struct.kernfs_node** %7, align 8
  %29 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %30 = icmp ne %struct.kernfs_node* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load %struct.dentry*, %struct.dentry** %6, align 8
  %37 = call i32 @dput(%struct.dentry* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.dentry* @ERR_PTR(i32 %39)
  store %struct.dentry* %40, %struct.dentry** %3, align 8
  br label %85

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %84, %41
  %43 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %44 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %45 = icmp eq %struct.kernfs_node* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %47, %struct.dentry** %3, align 8
  br label %85

48:                                               ; preds = %42
  %49 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %50 = load %struct.kernfs_node*, %struct.kernfs_node** %7, align 8
  %51 = call %struct.kernfs_node* @find_next_ancestor(%struct.kernfs_node* %49, %struct.kernfs_node* %50)
  store %struct.kernfs_node* %51, %struct.kernfs_node** %9, align 8
  %52 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %53 = icmp ne %struct.kernfs_node* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.dentry*, %struct.dentry** %6, align 8
  %60 = call i32 @dput(%struct.dentry* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.dentry* @ERR_PTR(i32 %62)
  store %struct.dentry* %63, %struct.dentry** %3, align 8
  br label %85

64:                                               ; preds = %48
  %65 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %66 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.dentry*, %struct.dentry** %6, align 8
  %69 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  %70 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strlen(i32 %71)
  %73 = call %struct.dentry* @lookup_one_len_unlocked(i32 %67, %struct.dentry* %68, i32 %72)
  store %struct.dentry* %73, %struct.dentry** %8, align 8
  %74 = load %struct.dentry*, %struct.dentry** %6, align 8
  %75 = call i32 @dput(%struct.dentry* %74)
  %76 = load %struct.dentry*, %struct.dentry** %8, align 8
  %77 = call i64 @IS_ERR(%struct.dentry* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %64
  %80 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %80, %struct.dentry** %3, align 8
  br label %85

81:                                               ; preds = %64
  %82 = load %struct.kernfs_node*, %struct.kernfs_node** %9, align 8
  store %struct.kernfs_node* %82, %struct.kernfs_node** %7, align 8
  %83 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %83, %struct.dentry** %6, align 8
  br label %84

84:                                               ; preds = %81
  br i1 true, label %42, label %85

85:                                               ; preds = %24, %35, %46, %58, %79, %84
  %86 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %86
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.dentry* @dget(i32) #1

declare dso_local %struct.kernfs_node* @find_next_ancestor(%struct.kernfs_node*, %struct.kernfs_node*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @lookup_one_len_unlocked(i32, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
