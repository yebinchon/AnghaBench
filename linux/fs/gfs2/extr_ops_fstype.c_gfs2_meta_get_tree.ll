; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_meta_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_meta_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32, i32, i32, i32*, i32* }
%struct.super_block = type { i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.path = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"path_lookup on %s returned error %d\0A\00", align 1
@gfs2_fs_type = common dso_local global i32 0, align 4
@test_meta_super = common dso_local global i32 0, align 4
@set_meta_super = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"gfs2 mount does not exist\0A\00", align 1
@SB_RDONLY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @gfs2_meta_get_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_meta_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.path, align 8
  %7 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %8 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %9 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %14 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %85

21:                                               ; preds = %12
  %22 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %23 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %26 = call i32 @kern_path(i32* %24, i32 %25, %struct.path* %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %31 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %85

36:                                               ; preds = %21
  %37 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %38 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %37, i32 0, i32 3
  store i32* @gfs2_fs_type, i32** %38, align 8
  %39 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %46 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %48 = load i32, i32* @test_meta_super, align 4
  %49 = load i32, i32* @set_meta_super, align 4
  %50 = call %struct.super_block* @sget_fc(%struct.fs_context* %47, i32 %48, i32 %49)
  store %struct.super_block* %50, %struct.super_block** %4, align 8
  %51 = call i32 @path_put(%struct.path* %6)
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = call i64 @IS_ERR(%struct.super_block* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %36
  %56 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.super_block*, %struct.super_block** %4, align 8
  %58 = call i32 @PTR_ERR(%struct.super_block* %57)
  store i32 %58, i32* %2, align 4
  br label %85

59:                                               ; preds = %36
  %60 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %61 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.super_block*, %struct.super_block** %4, align 8
  %64 = getelementptr inbounds %struct.super_block, %struct.super_block* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = xor i32 %62, %65
  %67 = load i32, i32* @SB_RDONLY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.super_block*, %struct.super_block** %4, align 8
  %72 = call i32 @deactivate_locked_super(%struct.super_block* %71)
  %73 = load i32, i32* @EBUSY, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %85

75:                                               ; preds = %59
  %76 = load %struct.super_block*, %struct.super_block** %4, align 8
  %77 = getelementptr inbounds %struct.super_block, %struct.super_block* %76, i32 0, i32 1
  %78 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %77, align 8
  store %struct.gfs2_sbd* %78, %struct.gfs2_sbd** %5, align 8
  %79 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %80 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dget(i32 %81)
  %83 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %84 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %75, %70, %55, %29, %18
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @kern_path(i32*, i32, %struct.path*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local %struct.super_block* @sget_fc(%struct.fs_context*, i32, i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i64 @IS_ERR(%struct.super_block*) #1

declare dso_local i32 @PTR_ERR(%struct.super_block*) #1

declare dso_local i32 @deactivate_locked_super(%struct.super_block*) #1

declare dso_local i32 @dget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
