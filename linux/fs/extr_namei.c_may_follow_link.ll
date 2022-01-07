; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_may_follow_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_may_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.TYPE_5__*, i32, %struct.inode*, %struct.inode* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@sysctl_protected_symlinks = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"follow_link\00", align 1
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @may_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_follow_link(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  %7 = load i32, i32* @sysctl_protected_symlinks, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

10:                                               ; preds = %1
  %11 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %12 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 4
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  %14 = call %struct.TYPE_6__* (...) @current_cred()
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @uid_eq(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %79

23:                                               ; preds = %10
  %24 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %25 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %24, i32 0, i32 3
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @S_ISVTX, align 4
  %31 = load i32, i32* @S_IWOTH, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = load i32, i32* @S_ISVTX, align 4
  %35 = load i32, i32* @S_IWOTH, align 4
  %36 = or i32 %34, %35
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %79

39:                                               ; preds = %23
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @uid_valid(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @uid_eq(i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %79

54:                                               ; preds = %46, %39
  %55 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %56 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @LOOKUP_RCU, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @ECHILD, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %79

64:                                               ; preds = %54
  %65 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %66 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %69 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @audit_inode(i32 %67, i32 %74, i32 0)
  %76 = call i32 @audit_log_link_denied(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EACCES, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %64, %61, %53, %38, %22, %9
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local %struct.TYPE_6__* @current_cred(...) #1

declare dso_local i64 @uid_valid(i32) #1

declare dso_local i32 @audit_inode(i32, i32, i32) #1

declare dso_local i32 @audit_log_link_denied(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
