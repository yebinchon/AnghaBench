; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_reservation_check_and_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_reservation_check_and_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_extent = type { i64, %struct.gfs2_rbm }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rbm*, %struct.gfs2_inode*, i64, %struct.gfs2_extent*)* @gfs2_reservation_check_and_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_reservation_check_and_update(%struct.gfs2_rbm* %0, %struct.gfs2_inode* %1, i64 %2, %struct.gfs2_extent* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_rbm*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.gfs2_extent*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %6, align 8
  store %struct.gfs2_inode* %1, %struct.gfs2_inode** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.gfs2_extent* %3, %struct.gfs2_extent** %9, align 8
  %14 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %6, align 8
  %15 = call i64 @gfs2_rbm_to_block(%struct.gfs2_rbm* %14)
  store i64 %15, i64* %10, align 8
  store i64 1, i64* %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %6, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @gfs2_free_extlen(%struct.gfs2_rbm* %19, i64 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load %struct.gfs2_extent*, %struct.gfs2_extent** %9, align 8
  %24 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %64

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %6, align 8
  %31 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %36 = call i64 @gfs2_next_unreserved_block(i32 %32, i64 %33, i64 %34, %struct.gfs2_inode* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %68

40:                                               ; preds = %29
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43, %40
  store i32 0, i32* %5, align 4
  br label %77

48:                                               ; preds = %43
  %49 = load i64, i64* %11, align 8
  %50 = load %struct.gfs2_extent*, %struct.gfs2_extent** %9, align 8
  %51 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load i64, i64* %11, align 8
  %56 = load %struct.gfs2_extent*, %struct.gfs2_extent** %9, align 8
  %57 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.gfs2_extent*, %struct.gfs2_extent** %9, align 8
  %59 = getelementptr inbounds %struct.gfs2_extent, %struct.gfs2_extent* %58, i32 0, i32 1
  %60 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %6, align 8
  %61 = bitcast %struct.gfs2_rbm* %59 to i8*
  %62 = bitcast %struct.gfs2_rbm* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 4 %62, i64 4, i1 false)
  br label %63

63:                                               ; preds = %54, %48
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = add nsw i64 %65, %66
  store i64 %67, i64* %12, align 8
  br label %68

68:                                               ; preds = %64, %29
  %69 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %6, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @gfs2_rbm_from_block(%struct.gfs2_rbm* %69, i64 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %5, align 4
  br label %77

76:                                               ; preds = %68
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %74, %47
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i64 @gfs2_rbm_to_block(%struct.gfs2_rbm*) #1

declare dso_local i64 @gfs2_free_extlen(%struct.gfs2_rbm*, i64) #1

declare dso_local i64 @gfs2_next_unreserved_block(i32, i64, i64, %struct.gfs2_inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
