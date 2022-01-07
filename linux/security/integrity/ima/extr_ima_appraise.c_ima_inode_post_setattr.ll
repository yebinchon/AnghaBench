; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_ima_inode_post_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_appraise.c_ima_inode_post_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32, i32 }
%struct.integrity_iint_cache = type { i32 }

@ima_policy_flag = common dso_local global i32 0, align 4
@IMA_APPRAISE = common dso_local global i32 0, align 4
@IOP_XATTR = common dso_local global i32 0, align 4
@MAY_ACCESS = common dso_local global i32 0, align 4
@POST_SETATTR = common dso_local global i32 0, align 4
@XATTR_NAME_IMA = common dso_local global i32 0, align 4
@IMA_CHANGE_ATTR = common dso_local global i32 0, align 4
@IMA_UPDATE_XATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_inode_post_setattr(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.integrity_iint_cache*, align 8
  %5 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %6 = load %struct.dentry*, %struct.dentry** %2, align 8
  %7 = call %struct.inode* @d_backing_inode(%struct.dentry* %6)
  store %struct.inode* %7, %struct.inode** %3, align 8
  %8 = load i32, i32* @ima_policy_flag, align 4
  %9 = load i32, i32* @IMA_APPRAISE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @S_ISREG(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IOP_XATTR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18, %12, %1
  br label %55

26:                                               ; preds = %18
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = load i32, i32* @MAY_ACCESS, align 4
  %29 = load i32, i32* @POST_SETATTR, align 4
  %30 = call i32 @ima_must_appraise(%struct.inode* %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load %struct.dentry*, %struct.dentry** %2, align 8
  %35 = load i32, i32* @XATTR_NAME_IMA, align 4
  %36 = call i32 @__vfs_removexattr(%struct.dentry* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call %struct.integrity_iint_cache* @integrity_iint_find(%struct.inode* %38)
  store %struct.integrity_iint_cache* %39, %struct.integrity_iint_cache** %4, align 8
  %40 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %41 = icmp ne %struct.integrity_iint_cache* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i32, i32* @IMA_CHANGE_ATTR, align 4
  %44 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %45 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %44, i32 0, i32 0
  %46 = call i32 @set_bit(i32 %43, i32* %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @IMA_UPDATE_XATTR, align 4
  %51 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %4, align 8
  %52 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %51, i32 0, i32 0
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %42
  br label %55

55:                                               ; preds = %25, %54, %37
  ret void
}

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @ima_must_appraise(%struct.inode*, i32, i32) #1

declare dso_local i32 @__vfs_removexattr(%struct.dentry*, i32) #1

declare dso_local %struct.integrity_iint_cache* @integrity_iint_find(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
