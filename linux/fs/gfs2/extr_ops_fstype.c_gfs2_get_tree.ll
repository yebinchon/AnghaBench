; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_get_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_gfs2_get_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { %struct.TYPE_4__*, %struct.gfs2_args* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32 }
%struct.gfs2_args = type { i64 }

@gfs2_fill_super = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @gfs2_get_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_get_tree(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.gfs2_args*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %7 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %8 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %7, i32 0, i32 1
  %9 = load %struct.gfs2_args*, %struct.gfs2_args** %8, align 8
  store %struct.gfs2_args* %9, %struct.gfs2_args** %4, align 8
  %10 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %11 = load i32, i32* @gfs2_fill_super, align 4
  %12 = call i32 @get_tree_bdev(%struct.fs_context* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %19 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %23, align 8
  store %struct.gfs2_sbd* %24, %struct.gfs2_sbd** %5, align 8
  %25 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %26 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call i32 @dput(%struct.TYPE_4__* %27)
  %29 = load %struct.gfs2_args*, %struct.gfs2_args** %4, align 8
  %30 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %17
  %34 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %35 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @dget(i32 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_4__*
  %39 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %40 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %39, i32 0, i32 0
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  br label %49

41:                                               ; preds = %17
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %43 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @dget(i32 %44)
  %46 = bitcast i8* %45 to %struct.TYPE_4__*
  %47 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %48 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %47, i32 0, i32 0
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %48, align 8
  br label %49

49:                                               ; preds = %41, %33
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %15
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @get_tree_bdev(%struct.fs_context*, i32) #1

declare dso_local i32 @dput(%struct.TYPE_4__*) #1

declare dso_local i8* @dget(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
