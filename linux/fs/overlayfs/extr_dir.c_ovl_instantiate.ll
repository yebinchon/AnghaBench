; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_dir.c_ovl_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32, i32 }
%struct.ovl_inode_params = type { %struct.inode*, %struct.dentry* }

@.str = private unnamed_addr constant [54 x i8] c"overlayfs: newly created inode found in cache (%pd2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*, i32)* @ovl_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_instantiate(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ovl_inode_params, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %12, %struct.inode** %11, align 8
  %13 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %10, i32 0, i32 1
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %14, %struct.dentry** %13, align 8
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ovl_dir_modified(i32 %17, i32 0)
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = call i32 @ovl_dentry_set_upper_alias(%struct.dentry* %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %4
  %24 = load %struct.dentry*, %struct.dentry** %6, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.inode* @ovl_get_inode(i32 %26, %struct.ovl_inode_params* %10)
  store %struct.inode* %27, %struct.inode** %7, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = call i64 @IS_ERR(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = call i32 @PTR_ERR(%struct.inode* %32)
  store i32 %33, i32* %5, align 4
  br label %65

34:                                               ; preds = %23
  br label %47

35:                                               ; preds = %4
  %36 = load %struct.inode*, %struct.inode** %7, align 8
  %37 = call i64 @ovl_inode_real(%struct.inode* %36)
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = call i64 @d_inode(%struct.dentry* %38)
  %40 = icmp ne i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.dentry*, %struct.dentry** %8, align 8
  %44 = call i32 @dput(%struct.dentry* %43)
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i32 @inc_nlink(%struct.inode* %45)
  br label %47

47:                                               ; preds = %35, %34
  %48 = load %struct.dentry*, %struct.dentry** %6, align 8
  %49 = load %struct.inode*, %struct.inode** %7, align 8
  %50 = call i32 @d_instantiate(%struct.dentry* %48, %struct.inode* %49)
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.ovl_inode_params, %struct.ovl_inode_params* %10, i32 0, i32 0
  %53 = load %struct.inode*, %struct.inode** %52, align 8
  %54 = icmp ne %struct.inode* %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load %struct.dentry*, %struct.dentry** %6, align 8
  %57 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.dentry* %56)
  br label %58

58:                                               ; preds = %55, %47
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = call i32 @d_drop(%struct.dentry* %62)
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %31
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @ovl_dir_modified(i32, i32) #1

declare dso_local i32 @ovl_dentry_set_upper_alias(%struct.dentry*) #1

declare dso_local %struct.inode* @ovl_get_inode(i32, %struct.ovl_inode_params*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ovl_inode_real(%struct.inode*) #1

declare dso_local i64 @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, %struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
