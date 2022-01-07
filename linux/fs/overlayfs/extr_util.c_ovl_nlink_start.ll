; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_nlink_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_util.c_ovl_nlink_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.cred = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@OVL_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ovl_nlink_start(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = call %struct.inode* @d_inode(%struct.dentry* %7)
  store %struct.inode* %8, %struct.inode** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = icmp ne %struct.inode* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %1
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = call i64 @ovl_need_index(%struct.dentry* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = call i32 @ovl_dentry_has_upper_alias(%struct.dentry* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = call i32 @ovl_copy_up(%struct.dentry* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %68

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %22, %18
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i32 @ovl_inode_lock(%struct.inode* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %68

41:                                               ; preds = %34
  %42 = load %struct.dentry*, %struct.dentry** %3, align 8
  %43 = call i64 @d_is_dir(%struct.dentry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @OVL_INDEX, align 4
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = call i32 @ovl_test_flag(i32 %46, %struct.inode* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45, %41
  br label %60

51:                                               ; preds = %45
  %52 = load %struct.dentry*, %struct.dentry** %3, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.cred* @ovl_override_creds(i32 %54)
  store %struct.cred* %55, %struct.cred** %5, align 8
  %56 = load %struct.dentry*, %struct.dentry** %3, align 8
  %57 = call i32 @ovl_set_nlink_upper(%struct.dentry* %56)
  store i32 %57, i32* %6, align 4
  %58 = load %struct.cred*, %struct.cred** %5, align 8
  %59 = call i32 @revert_creds(%struct.cred* %58)
  br label %60

60:                                               ; preds = %51, %50
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call i32 @ovl_inode_unlock(%struct.inode* %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %39, %31, %15
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @ovl_need_index(%struct.dentry*) #1

declare dso_local i32 @ovl_dentry_has_upper_alias(%struct.dentry*) #1

declare dso_local i32 @ovl_copy_up(%struct.dentry*) #1

declare dso_local i32 @ovl_inode_lock(%struct.inode*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @ovl_test_flag(i32, %struct.inode*) #1

declare dso_local %struct.cred* @ovl_override_creds(i32) #1

declare dso_local i32 @ovl_set_nlink_upper(%struct.dentry*) #1

declare dso_local i32 @revert_creds(%struct.cred*) #1

declare dso_local i32 @ovl_inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
