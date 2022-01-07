; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_unlink_ok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_gfs2_unlink_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EPERM = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@CAP_FOWNER = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.qstr*, %struct.gfs2_inode*)* @gfs2_unlink_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_unlink_ok(%struct.gfs2_inode* %0, %struct.qstr* %1, %struct.gfs2_inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.gfs2_inode* %2, %struct.gfs2_inode** %7, align 8
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %10 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %9, i32 0, i32 0
  %11 = call i64 @IS_IMMUTABLE(%struct.TYPE_5__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 0
  %16 = call i64 @IS_APPEND(%struct.TYPE_5__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %3
  %19 = load i32, i32* @EPERM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %13
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %23 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @S_ISVTX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %21
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (...) @current_fsuid()
  %35 = call i32 @uid_eq(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %29
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (...) @current_fsuid()
  %43 = call i32 @uid_eq(i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @CAP_FOWNER, align 4
  %47 = call i32 @capable(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %77

52:                                               ; preds = %45, %37, %29, %21
  %53 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %54 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %53, i32 0, i32 0
  %55 = call i64 @IS_APPEND(%struct.TYPE_5__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EPERM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %77

60:                                               ; preds = %52
  %61 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %62 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %61, i32 0, i32 0
  %63 = load i32, i32* @MAY_WRITE, align 4
  %64 = load i32, i32* @MAY_EXEC, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @gfs2_permission(%struct.TYPE_5__* %62, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %4, align 4
  br label %77

71:                                               ; preds = %60
  %72 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %73 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %72, i32 0, i32 0
  %74 = load %struct.qstr*, %struct.qstr** %6, align 8
  %75 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %76 = call i32 @gfs2_dir_check(%struct.TYPE_5__* %73, %struct.qstr* %74, %struct.gfs2_inode* %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %69, %57, %49, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @IS_IMMUTABLE(%struct.TYPE_5__*) #1

declare dso_local i64 @IS_APPEND(%struct.TYPE_5__*) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @gfs2_permission(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @gfs2_dir_check(%struct.TYPE_5__*, %struct.qstr*, %struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
