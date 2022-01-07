; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_acl.c_NULL.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_acl.c_NULL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }
%struct.iattr = type { i32, i32, i32 }

@JFFS2_XPREFIX_ACL_ACCESS = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@JFFS2_XPREFIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_set_acl(%struct.inode* %0, %struct.posix_acl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.posix_acl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iattr, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.posix_acl* %1, %struct.posix_acl** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %66 [
    i32 129, label %13
    i32 128, label %49
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @JFFS2_XPREFIX_ACL_ACCESS, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %16 = icmp ne %struct.posix_acl* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call i32 @posix_acl_update_mode(%struct.inode* %18, i32* %10, %struct.posix_acl** %6)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %83

24:                                               ; preds = %17
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %24
  %31 = load i32, i32* @ATTR_MODE, align 4
  %32 = load i32, i32* @ATTR_CTIME, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i32 @current_time(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = call i32 @jffs2_do_setattr(%struct.inode* %40, %struct.iattr* %11)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %83

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %24
  br label %48

48:                                               ; preds = %47, %13
  br label %69

49:                                               ; preds = %3
  %50 = load i32, i32* @JFFS2_XPREFIX_ACL_DEFAULT, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @S_ISDIR(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %49
  %57 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %58 = icmp ne %struct.posix_acl* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EACCES, align 4
  %61 = sub nsw i32 0, %60
  br label %63

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 0, %62 ]
  store i32 %64, i32* %4, align 4
  br label %83

65:                                               ; preds = %49
  br label %69

66:                                               ; preds = %3
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %83

69:                                               ; preds = %65, %48
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %73 = call i32 @__jffs2_set_acl(%struct.inode* %70, i32 %71, %struct.posix_acl* %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %69
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.posix_acl*, %struct.posix_acl** %6, align 8
  %80 = call i32 @set_cached_acl(%struct.inode* %77, i32 %78, %struct.posix_acl* %79)
  br label %81

81:                                               ; preds = %76, %69
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %66, %63, %44, %22
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @posix_acl_update_mode(%struct.inode*, i32*, %struct.posix_acl**) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @jffs2_do_setattr(%struct.inode*, %struct.iattr*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @__jffs2_set_acl(%struct.inode*, i32, %struct.posix_acl*) #1

declare dso_local i32 @set_cached_acl(%struct.inode*, i32, %struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
