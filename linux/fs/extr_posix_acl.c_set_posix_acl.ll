; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_set_posix_acl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_posix_acl.c_set_posix_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.inode*, %struct.posix_acl*, i32)* }
%struct.TYPE_3__ = type { i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_posix_acl(%struct.inode* %0, i32 %1, %struct.posix_acl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.posix_acl*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.posix_acl* %2, %struct.posix_acl** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = call i32 @IS_POSIXACL(%struct.inode* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %77

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.inode*, %struct.posix_acl*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.inode*, %struct.posix_acl*, i32)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %77

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ACL_TYPE_DEFAULT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @S_ISDIR(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %37 = icmp ne %struct.posix_acl* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EACCES, align 4
  %40 = sub nsw i32 0, %39
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi i32 [ %40, %38 ], [ 0, %41 ]
  store i32 %43, i32* %4, align 4
  br label %77

44:                                               ; preds = %29, %25
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @inode_owner_or_capable(%struct.inode* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @EPERM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %77

51:                                               ; preds = %44
  %52 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %53 = icmp ne %struct.posix_acl* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %61 = call i32 @posix_acl_valid(i32 %59, %struct.posix_acl* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %4, align 4
  br label %77

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66, %51
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.inode*, %struct.posix_acl*, i32)*, i32 (%struct.inode*, %struct.posix_acl*, i32)** %71, align 8
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = load %struct.posix_acl*, %struct.posix_acl** %7, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 %72(%struct.inode* %73, %struct.posix_acl* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %67, %64, %48, %42, %22, %12
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @IS_POSIXACL(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

declare dso_local i32 @posix_acl_valid(i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
