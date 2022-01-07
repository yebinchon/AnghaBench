; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_may_o_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_may_o_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.user_namespace* }
%struct.user_namespace = type { i32 }
%struct.dentry = type { i32 }

@EOVERFLOW = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.dentry*, i32)* @may_o_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_o_create(%struct.path* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.user_namespace*, align 8
  %9 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.path*, %struct.path** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @security_path_mknod(%struct.path* %10, %struct.dentry* %11, i32 %12, i32 0)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %4, align 4
  br label %61

18:                                               ; preds = %3
  %19 = load %struct.path*, %struct.path** %5, align 8
  %20 = getelementptr inbounds %struct.path, %struct.path* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.user_namespace*, %struct.user_namespace** %24, align 8
  store %struct.user_namespace* %25, %struct.user_namespace** %8, align 8
  %26 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %27 = call i32 (...) @current_fsuid()
  %28 = call i32 @kuid_has_mapping(%struct.user_namespace* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %32 = call i32 (...) @current_fsgid()
  %33 = call i32 @kgid_has_mapping(%struct.user_namespace* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %18
  %36 = load i32, i32* @EOVERFLOW, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %61

38:                                               ; preds = %30
  %39 = load %struct.path*, %struct.path** %5, align 8
  %40 = getelementptr inbounds %struct.path, %struct.path* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MAY_WRITE, align 4
  %45 = load i32, i32* @MAY_EXEC, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @inode_permission(i32 %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %4, align 4
  br label %61

52:                                               ; preds = %38
  %53 = load %struct.path*, %struct.path** %5, align 8
  %54 = getelementptr inbounds %struct.path, %struct.path* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.dentry*, %struct.dentry** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @security_inode_create(i32 %57, %struct.dentry* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %52, %50, %35, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @security_path_mknod(%struct.path*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @kuid_has_mapping(%struct.user_namespace*, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @kgid_has_mapping(%struct.user_namespace*, i32) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @inode_permission(i32, i32) #1

declare dso_local i32 @security_inode_create(i32, %struct.dentry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
