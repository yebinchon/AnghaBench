; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_chmod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_posix_acl_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.inode*, %struct.posix_acl*, i32)* }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_acl_chmod(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @IS_POSIXACL(%struct.inode* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.inode*, %struct.posix_acl*, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.inode*, %struct.posix_acl*, i32)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %60

22:                                               ; preds = %12
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %25 = call %struct.posix_acl* @get_acl(%struct.inode* %23, i32 %24)
  store %struct.posix_acl* %25, %struct.posix_acl** %6, align 8
  %26 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %27 = call i64 @IS_ERR_OR_NULL(%struct.posix_acl* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.posix_acl* @ERR_PTR(i32 %32)
  %34 = icmp eq %struct.posix_acl* %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %60

36:                                               ; preds = %29
  %37 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.posix_acl* %37)
  store i32 %38, i32* %3, align 4
  br label %60

39:                                               ; preds = %22
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @__posix_acl_chmod(%struct.posix_acl** %6, i32 %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %60

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.inode*, %struct.posix_acl*, i32)** %51, align 8
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %55 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %56 = call i32 %52(%struct.inode* %53, %struct.posix_acl* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %58 = call i32 @posix_acl_release(%struct.posix_acl* %57)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %47, %45, %36, %35, %19, %11
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @IS_POSIXACL(%struct.inode*) #1

declare dso_local %struct.posix_acl* @get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.posix_acl*) #1

declare dso_local %struct.posix_acl* @ERR_PTR(i32) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @__posix_acl_chmod(%struct.posix_acl**, i32, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
