; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_set_alloc_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_set_alloc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.gfs2_inode = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.gfs2_rbm }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rbm*, %struct.gfs2_inode*, i32)* @gfs2_set_alloc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_set_alloc_start(%struct.gfs2_rbm* %0, %struct.gfs2_inode* %1, i32 %2) #0 {
  %4 = alloca %struct.gfs2_rbm*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %4, align 8
  store %struct.gfs2_inode* %1, %struct.gfs2_inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %9 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %8, i32 0, i32 1
  %10 = call i64 @gfs2_rs_active(%struct.TYPE_4__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %14 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %15 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = bitcast %struct.gfs2_rbm* %13 to i8*
  %18 = bitcast %struct.gfs2_rbm* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  br label %58

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %19
  %23 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %24 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %27 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @rgrp_contains_block(%struct.TYPE_3__* %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %33 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  br label %47

35:                                               ; preds = %22, %19
  %36 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %37 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %42 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %40, %45
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %35, %31
  %48 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @gfs2_rbm_from_block(%struct.gfs2_rbm* %48, i64 %49)
  %51 = call i64 @WARN_ON_ONCE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %55 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %57 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %12, %53, %47
  ret void
}

declare dso_local i64 @gfs2_rs_active(%struct.TYPE_4__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @rgrp_contains_block(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
