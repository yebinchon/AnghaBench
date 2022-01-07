; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_lookup_real_one.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_export.c_ovl_lookup_real_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ovl_layer = type { i32 }
%struct.inode = type { i32 }
%struct.name_snapshot = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@I_MUTEX_PARENT = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"overlayfs: failed to lookup one by real (%pd2, layer=%d, connected=%pd2, err=%i)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.dentry*, %struct.ovl_layer*)* @ovl_lookup_real_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ovl_lookup_real_one(%struct.dentry* %0, %struct.dentry* %1, %struct.ovl_layer* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.ovl_layer*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.name_snapshot, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.ovl_layer* %2, %struct.ovl_layer** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %7, align 8
  store %struct.dentry* null, %struct.dentry** %9, align 8
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = load i32, i32* @I_MUTEX_PARENT, align 4
  %16 = call i32 @inode_lock_nested(%struct.inode* %14, i32 %15)
  %17 = load i32, i32* @ECHILD, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call %struct.dentry* @dget_parent(%struct.dentry* %19)
  store %struct.dentry* %20, %struct.dentry** %9, align 8
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.ovl_layer*, %struct.ovl_layer** %6, align 8
  %23 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.dentry* @ovl_dentry_real_at(%struct.dentry* %21, i32 %24)
  %26 = load %struct.dentry*, %struct.dentry** %9, align 8
  %27 = icmp ne %struct.dentry* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %82

29:                                               ; preds = %3
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = call i32 @take_dentry_name_snapshot(%struct.name_snapshot* %10, %struct.dentry* %30)
  %32 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %10, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = getelementptr inbounds %struct.name_snapshot, %struct.name_snapshot* %10, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.dentry* @lookup_one_len(i32 %34, %struct.dentry* %35, i32 %38)
  store %struct.dentry* %39, %struct.dentry** %8, align 8
  %40 = load %struct.dentry*, %struct.dentry** %8, align 8
  %41 = call i32 @PTR_ERR(%struct.dentry* %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.dentry*, %struct.dentry** %8, align 8
  %43 = call i64 @IS_ERR(%struct.dentry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  br label %82

46:                                               ; preds = %29
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  %48 = icmp ne %struct.dentry* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.dentry*, %struct.dentry** %8, align 8
  %56 = call i32 @dput(%struct.dentry* %55)
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %82

59:                                               ; preds = %49
  %60 = load %struct.dentry*, %struct.dentry** %8, align 8
  %61 = load %struct.ovl_layer*, %struct.ovl_layer** %6, align 8
  %62 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.dentry* @ovl_dentry_real_at(%struct.dentry* %60, i32 %63)
  %65 = load %struct.dentry*, %struct.dentry** %5, align 8
  %66 = icmp ne %struct.dentry* %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.dentry*, %struct.dentry** %8, align 8
  %69 = call i32 @dput(%struct.dentry* %68)
  %70 = load i32, i32* @ESTALE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %11, align 4
  br label %82

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %82, %74
  %76 = call i32 @release_dentry_name_snapshot(%struct.name_snapshot* %10)
  %77 = load %struct.dentry*, %struct.dentry** %9, align 8
  %78 = call i32 @dput(%struct.dentry* %77)
  %79 = load %struct.inode*, %struct.inode** %7, align 8
  %80 = call i32 @inode_unlock(%struct.inode* %79)
  %81 = load %struct.dentry*, %struct.dentry** %8, align 8
  ret %struct.dentry* %81

82:                                               ; preds = %67, %54, %45, %28
  %83 = load %struct.dentry*, %struct.dentry** %5, align 8
  %84 = load %struct.ovl_layer*, %struct.ovl_layer** %6, align 8
  %85 = getelementptr inbounds %struct.ovl_layer, %struct.ovl_layer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.dentry*, %struct.dentry** %4, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @pr_warn_ratelimited(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), %struct.dentry* %83, i32 %86, %struct.dentry* %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = call %struct.dentry* @ERR_PTR(i32 %90)
  store %struct.dentry* %91, %struct.dentry** %8, align 8
  br label %75
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock_nested(%struct.inode*, i32) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.dentry* @ovl_dentry_real_at(%struct.dentry*, i32) #1

declare dso_local i32 @take_dentry_name_snapshot(%struct.name_snapshot*, %struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @release_dentry_name_snapshot(%struct.name_snapshot*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @pr_warn_ratelimited(i8*, %struct.dentry*, i32, %struct.dentry*, i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
