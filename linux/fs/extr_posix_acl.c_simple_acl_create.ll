; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_simple_acl_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_simple_acl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@ACL_TYPE_ACCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simple_acl_create(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = call i32 @posix_acl_create(%struct.inode* %9, i32* %11, %struct.posix_acl** %6, %struct.posix_acl** %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %20 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %21 = call i32 @set_cached_acl(%struct.inode* %18, i32 %19, %struct.posix_acl* %20)
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = load i32, i32* @ACL_TYPE_ACCESS, align 4
  %24 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %25 = call i32 @set_cached_acl(%struct.inode* %22, i32 %23, %struct.posix_acl* %24)
  %26 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %27 = icmp ne %struct.posix_acl* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %17
  %29 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %30 = call i32 @posix_acl_release(%struct.posix_acl* %29)
  br label %31

31:                                               ; preds = %28, %17
  %32 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %33 = icmp ne %struct.posix_acl* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %36 = call i32 @posix_acl_release(%struct.posix_acl* %35)
  br label %37

37:                                               ; preds = %34, %31
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %15
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @posix_acl_create(%struct.inode*, i32*, %struct.posix_acl**, %struct.posix_acl**) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
