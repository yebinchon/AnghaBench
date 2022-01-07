; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_mountpoint_last.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_mountpoint_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.path = type { i64, i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@LAST_NORM = common dso_local global i64 0, align 8
@LOOKUP_NO_REVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*)* @mountpoint_last to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mountpoint_last(%struct.nameidata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nameidata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.path, align 8
  store %struct.nameidata* %0, %struct.nameidata** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %8 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %5, align 8
  %11 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %12 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @LOOKUP_RCU, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %19 = call i64 @unlazy_walk(%struct.nameidata* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ECHILD, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %109

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* @LOOKUP_PARENT, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %33 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LAST_NORM, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %25
  %41 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %42 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %43 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @handle_dots(%struct.nameidata* %41, i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %109

50:                                               ; preds = %40
  %51 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load %struct.dentry*, %struct.dentry** %53, align 8
  %55 = call i64 @dget(%struct.dentry* %54)
  %56 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  br label %87

57:                                               ; preds = %25
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %59, i32 0, i32 3
  %61 = call i64 @d_lookup(%struct.dentry* %58, i32* %60)
  %62 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %86, label %66

66:                                               ; preds = %57
  %67 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %67, i32 0, i32 3
  %69 = load %struct.dentry*, %struct.dentry** %5, align 8
  %70 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %71 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @LOOKUP_NO_REVAL, align 4
  %74 = or i32 %72, %73
  %75 = call i64 @lookup_slow(i32* %68, %struct.dentry* %69, i32 %74)
  %76 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @IS_ERR(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %66
  %82 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @PTR_ERR(i64 %83)
  store i32 %84, i32* %2, align 4
  br label %109

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85, %57
  br label %87

87:                                               ; preds = %86, %50
  %88 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @d_is_negative(i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @dput(i64 %94)
  %96 = load i32, i32* @ENOENT, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %109

98:                                               ; preds = %87
  %99 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %100 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  store i32 %102, i32* %103, align 8
  %104 = load %struct.nameidata*, %struct.nameidata** %3, align 8
  %105 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @d_backing_inode(i64 %106)
  %108 = call i32 @step_into(%struct.nameidata* %104, %struct.path* %6, i32 0, i32 %107, i32 0)
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %98, %92, %81, %48, %21
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i64 @unlazy_walk(%struct.nameidata*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @handle_dots(%struct.nameidata*, i64) #1

declare dso_local i64 @dget(%struct.dentry*) #1

declare dso_local i64 @d_lookup(%struct.dentry*, i32*) #1

declare dso_local i64 @lookup_slow(i32*, %struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @d_is_negative(i64) #1

declare dso_local i32 @dput(i64) #1

declare dso_local i32 @step_into(%struct.nameidata*, %struct.path*, i32, i32, i32) #1

declare dso_local i32 @d_backing_inode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
