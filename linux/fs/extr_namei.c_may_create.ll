; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_may_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_may_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }
%struct.dentry = type { i64 }

@AUDIT_TYPE_CHILD_CREATE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @may_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_create(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.user_namespace*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = load i32, i32* @AUDIT_TYPE_CHILD_CREATE, align 4
  %10 = call i32 @audit_inode_child(%struct.inode* %7, %struct.dentry* %8, i32 %9)
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EEXIST, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i64 @IS_DEADDIR(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %49

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.user_namespace*, %struct.user_namespace** %29, align 8
  store %struct.user_namespace* %30, %struct.user_namespace** %6, align 8
  %31 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %32 = call i32 (...) @current_fsuid()
  %33 = call i32 @kuid_has_mapping(%struct.user_namespace* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.user_namespace*, %struct.user_namespace** %6, align 8
  %37 = call i32 (...) @current_fsgid()
  %38 = call i32 @kgid_has_mapping(%struct.user_namespace* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %25
  %41 = load i32, i32* @EOVERFLOW, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %49

43:                                               ; preds = %35
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = load i32, i32* @MAY_WRITE, align 4
  %46 = load i32, i32* @MAY_EXEC, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @inode_permission(%struct.inode* %44, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %40, %22, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @audit_inode_child(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i64 @IS_DEADDIR(%struct.inode*) #1

declare dso_local i32 @kuid_has_mapping(%struct.user_namespace*, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @kgid_has_mapping(%struct.user_namespace*, i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
