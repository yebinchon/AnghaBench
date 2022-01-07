; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_filename_mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_filename_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filename = type { i32 }
%struct.path = type { i32 }
%struct.nameidata = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@LOOKUP_REVAL = common dso_local global i32 0, align 4
@AUDIT_INODE_NOEVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.filename*, %struct.path*, i32)* @filename_mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filename_mountpoint(i32 %0, %struct.filename* %1, %struct.path* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.filename*, align 8
  %8 = alloca %struct.path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nameidata, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.filename* %1, %struct.filename** %7, align 8
  store %struct.path* %2, %struct.path** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.filename*, %struct.filename** %7, align 8
  %13 = call i64 @IS_ERR(%struct.filename* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.filename*, %struct.filename** %7, align 8
  %17 = call i32 @PTR_ERR(%struct.filename* %16)
  store i32 %17, i32* %5, align 4
  br label %71

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.filename*, %struct.filename** %7, align 8
  %21 = call i32 @set_nameidata(%struct.nameidata* %10, i32 %19, %struct.filename* %20)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @LOOKUP_RCU, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.path*, %struct.path** %8, align 8
  %26 = call i32 @path_mountpoint(%struct.nameidata* %10, i32 %24, %struct.path* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @ECHILD, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.path*, %struct.path** %8, align 8
  %37 = call i32 @path_mountpoint(%struct.nameidata* %10, i32 %35, %struct.path* %36)
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %18
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @ESTALE, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @LOOKUP_REVAL, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.path*, %struct.path** %8, align 8
  %51 = call i32 @path_mountpoint(%struct.nameidata* %10, i32 %49, %struct.path* %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %46, %38
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @likely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.filename*, %struct.filename** %7, align 8
  %61 = load %struct.path*, %struct.path** %8, align 8
  %62 = getelementptr inbounds %struct.path, %struct.path* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AUDIT_INODE_NOEVAL, align 4
  %65 = call i32 @audit_inode(%struct.filename* %60, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %52
  %67 = call i32 (...) @restore_nameidata()
  %68 = load %struct.filename*, %struct.filename** %7, align 8
  %69 = call i32 @putname(%struct.filename* %68)
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %66, %15
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @IS_ERR(%struct.filename*) #1

declare dso_local i32 @PTR_ERR(%struct.filename*) #1

declare dso_local i32 @set_nameidata(%struct.nameidata*, i32, %struct.filename*) #1

declare dso_local i32 @path_mountpoint(%struct.nameidata*, i32, %struct.path*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @audit_inode(%struct.filename*, i32, i32) #1

declare dso_local i32 @restore_nameidata(...) #1

declare dso_local i32 @putname(%struct.filename*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
