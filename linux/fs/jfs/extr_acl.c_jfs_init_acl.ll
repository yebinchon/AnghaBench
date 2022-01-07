; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_acl.c_jfs_init_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_acl.c_jfs_init_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, i32* }
%struct.posix_acl = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jfs_init_acl(i32 %0, %struct.inode* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.posix_acl*, align 8
  %9 = alloca %struct.posix_acl*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.inode*, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = call i32 @posix_acl_create(%struct.inode* %11, i32* %13, %struct.posix_acl** %8, %struct.posix_acl** %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %21 = icmp ne %struct.posix_acl* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %26 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %27 = call i32 @__jfs_set_acl(i32 %23, %struct.inode* %24, i32 %25, %struct.posix_acl* %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.posix_acl*, %struct.posix_acl** %8, align 8
  %29 = call i32 @posix_acl_release(%struct.posix_acl* %28)
  br label %33

30:                                               ; preds = %19
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %22
  %34 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %35 = icmp ne %struct.posix_acl* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %43 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %44 = call i32 @__jfs_set_acl(i32 %40, %struct.inode* %41, i32 %42, %struct.posix_acl* %43)
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %39, %36
  %46 = load %struct.posix_acl*, %struct.posix_acl** %9, align 8
  %47 = call i32 @posix_acl_release(%struct.posix_acl* %46)
  br label %51

48:                                               ; preds = %33
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %52)
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, -65536
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %56, %59
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %51, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @posix_acl_create(%struct.inode*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @__jfs_set_acl(i32, %struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
