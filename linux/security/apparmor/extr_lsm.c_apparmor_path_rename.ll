; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_path_rename.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_apparmor_path_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, i32 }
%struct.dentry = type { i32 }
%struct.aa_label = type { i32 }
%struct.path_cond = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@OP_RENAME_SRC = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@AA_MAY_GETATTR = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@AA_MAY_SETATTR = common dso_local global i32 0, align 4
@AA_MAY_DELETE = common dso_local global i32 0, align 4
@OP_RENAME_DEST = common dso_local global i32 0, align 4
@AA_MAY_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.dentry*, %struct.path*, %struct.dentry*)* @apparmor_path_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apparmor_path_rename(%struct.path* %0, %struct.dentry* %1, %struct.path* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.path, align 8
  %13 = alloca %struct.path, align 8
  %14 = alloca %struct.path_cond, align 4
  store %struct.path* %0, %struct.path** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.path* %2, %struct.path** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.dentry*, %struct.dentry** %7, align 8
  %16 = call i32 @path_mediated_fs(%struct.dentry* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %75

19:                                               ; preds = %4
  %20 = call %struct.aa_label* (...) @begin_current_label_crit_section()
  store %struct.aa_label* %20, %struct.aa_label** %10, align 8
  %21 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %22 = call i32 @unconfined(%struct.aa_label* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %71, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %26, %struct.dentry** %25, align 8
  %27 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 1
  %28 = load %struct.path*, %struct.path** %6, align 8
  %29 = getelementptr inbounds %struct.path, %struct.path* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %32 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %32, %struct.dentry** %31, align 8
  %33 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 1
  %34 = load %struct.path*, %struct.path** %8, align 8
  %35 = getelementptr inbounds %struct.path, %struct.path* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %33, align 8
  %37 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %14, i32 0, i32 0
  %38 = load %struct.dentry*, %struct.dentry** %7, align 8
  %39 = call %struct.TYPE_2__* @d_backing_inode(%struct.dentry* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %37, align 4
  %42 = getelementptr inbounds %struct.path_cond, %struct.path_cond* %14, i32 0, i32 1
  %43 = load %struct.dentry*, %struct.dentry** %7, align 8
  %44 = call %struct.TYPE_2__* @d_backing_inode(%struct.dentry* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %42, align 4
  %47 = load i32, i32* @OP_RENAME_SRC, align 4
  %48 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %49 = load i32, i32* @MAY_READ, align 4
  %50 = load i32, i32* @AA_MAY_GETATTR, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @MAY_WRITE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @AA_MAY_SETATTR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @AA_MAY_DELETE, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @aa_path_perm(i32 %47, %struct.aa_label* %48, %struct.path* %12, i32 0, i32 %57, %struct.path_cond* %14)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %24
  %62 = load i32, i32* @OP_RENAME_DEST, align 4
  %63 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %64 = load i32, i32* @MAY_WRITE, align 4
  %65 = load i32, i32* @AA_MAY_SETATTR, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @AA_MAY_CREATE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @aa_path_perm(i32 %62, %struct.aa_label* %63, %struct.path* %13, i32 0, i32 %68, %struct.path_cond* %14)
  store i32 %69, i32* %11, align 4
  br label %70

70:                                               ; preds = %61, %24
  br label %71

71:                                               ; preds = %70, %19
  %72 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %73 = call i32 @end_current_label_crit_section(%struct.aa_label* %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %18
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @path_mediated_fs(%struct.dentry*) #1

declare dso_local %struct.aa_label* @begin_current_label_crit_section(...) #1

declare dso_local i32 @unconfined(%struct.aa_label*) #1

declare dso_local %struct.TYPE_2__* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @aa_path_perm(i32, %struct.aa_label*, %struct.path*, i32, i32, %struct.path_cond*) #1

declare dso_local i32 @end_current_label_crit_section(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
