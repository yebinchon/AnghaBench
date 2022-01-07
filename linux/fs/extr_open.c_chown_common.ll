; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_open.c_chown_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_open.c_chown_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.iattr = type { i32, i32, i32 }

@ATTR_CTIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_KILL_SUID = common dso_local global i32 0, align 4
@ATTR_KILL_SGID = common dso_local global i32 0, align 4
@ATTR_KILL_PRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i64, i64)* @chown_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chown_common(%struct.path* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iattr, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.path*, %struct.path** %5, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %8, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  %19 = call i32 (...) @current_user_ns()
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @make_kuid(i32 %19, i64 %20)
  store i32 %21, i32* %12, align 4
  %22 = call i32 (...) @current_user_ns()
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @make_kgid(i32 %22, i64 %23)
  store i32 %24, i32* %13, align 4
  br label %25

25:                                               ; preds = %99, %3
  %26 = load i32, i32* @ATTR_CTIME, align 4
  %27 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, -1
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @uid_valid(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %103

37:                                               ; preds = %30
  %38 = load i32, i32* @ATTR_UID, align 4
  %39 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %12, align 4
  %43 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %25
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, -1
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @gid_valid(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %103

54:                                               ; preds = %47
  %55 = load i32, i32* @ATTR_GID, align 4
  %56 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %13, align 4
  %60 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %44
  %62 = load %struct.inode*, %struct.inode** %8, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @S_ISDIR(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @ATTR_KILL_SUID, align 4
  %69 = load i32, i32* @ATTR_KILL_SGID, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ATTR_KILL_PRIV, align 4
  %72 = or i32 %70, %71
  %73 = getelementptr inbounds %struct.iattr, %struct.iattr* %11, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %67, %61
  %77 = load %struct.inode*, %struct.inode** %8, align 8
  %78 = call i32 @inode_lock(%struct.inode* %77)
  %79 = load %struct.path*, %struct.path** %5, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @security_path_chown(%struct.path* %79, i32 %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %76
  %86 = load %struct.path*, %struct.path** %5, align 8
  %87 = getelementptr inbounds %struct.path, %struct.path* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = call i32 @notify_change(%struct.TYPE_2__* %88, %struct.iattr* %11, %struct.inode** %9)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %85, %76
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = call i32 @inode_unlock(%struct.inode* %91)
  %93 = load %struct.inode*, %struct.inode** %9, align 8
  %94 = icmp ne %struct.inode* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = call i32 @break_deleg_wait(%struct.inode** %9)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  br label %25

100:                                              ; preds = %95
  br label %101

101:                                              ; preds = %100, %90
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %51, %34
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @make_kuid(i32, i64) #1

declare dso_local i32 @current_user_ns(...) #1

declare dso_local i32 @make_kgid(i32, i64) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @security_path_chown(%struct.path*, i32, i32) #1

declare dso_local i32 @notify_change(%struct.TYPE_2__*, %struct.iattr*, %struct.inode**) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @break_deleg_wait(%struct.inode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
