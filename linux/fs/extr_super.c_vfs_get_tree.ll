; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_super.c_vfs_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_super.c_vfs_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.super_block* }
%struct.super_block = type { i64, i32, i32 }
%struct.TYPE_4__ = type { {}* }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Filesystem %s get_tree() didn't set fc->root\0A\00", align 1
@SB_BORN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s set sb->s_maxbytes to negative value (%lld)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %6 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %7 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = icmp ne %struct.TYPE_5__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %85

13:                                               ; preds = %1
  %14 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %15 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.fs_context*)**
  %19 = load i32 (%struct.fs_context*)*, i32 (%struct.fs_context*)** %18, align 8
  %20 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %21 = call i32 %19(%struct.fs_context* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %85

26:                                               ; preds = %13
  %27 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %28 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %33 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = call i32 (...) @BUG()
  br label %39

39:                                               ; preds = %31, %26
  %40 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %41 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.super_block*, %struct.super_block** %43, align 8
  store %struct.super_block* %44, %struct.super_block** %4, align 8
  %45 = load %struct.super_block*, %struct.super_block** %4, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = call i32 (...) @smp_wmb()
  %53 = load i32, i32* @SB_BORN, align 4
  %54 = load %struct.super_block*, %struct.super_block** %4, align 8
  %55 = getelementptr inbounds %struct.super_block, %struct.super_block* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %60 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @security_sb_set_mnt_opts(%struct.super_block* %58, i32 %61, i32 0, i32* null)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %39
  %67 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %68 = call i32 @fc_drop_locked(%struct.fs_context* %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %85

70:                                               ; preds = %39
  %71 = load %struct.super_block*, %struct.super_block** %4, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %77 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.super_block*, %struct.super_block** %4, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @WARN(i32 %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %80, i64 %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %70, %66, %24, %10
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @security_sb_set_mnt_opts(%struct.super_block*, i32, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fc_drop_locked(%struct.fs_context*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
