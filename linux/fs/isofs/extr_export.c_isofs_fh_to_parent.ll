; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_export.c_isofs_fh_to_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_export.c_isofs_fh_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32 }
%struct.isofs_fid = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @isofs_fh_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @isofs_fh_to_parent(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.isofs_fid*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.fid*, %struct.fid** %7, align 8
  %12 = bitcast %struct.fid* %11 to %struct.isofs_fid*
  store %struct.isofs_fid* %12, %struct.isofs_fid** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %43

19:                                               ; preds = %15
  %20 = load %struct.super_block*, %struct.super_block** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.isofs_fid*, %struct.isofs_fid** %10, align 8
  %25 = getelementptr inbounds %struct.isofs_fid, %struct.isofs_fid* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  br label %28

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 0, %27 ]
  %30 = load %struct.isofs_fid*, %struct.isofs_fid** %10, align 8
  %31 = getelementptr inbounds %struct.isofs_fid, %struct.isofs_fid* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 4
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.isofs_fid*, %struct.isofs_fid** %10, align 8
  %37 = getelementptr inbounds %struct.isofs_fid, %struct.isofs_fid* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  br label %40

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 0, %39 ]
  %42 = call %struct.dentry* @isofs_export_iget(%struct.super_block* %20, i32 %29, i32 %32, i32 %41)
  store %struct.dentry* %42, %struct.dentry** %5, align 8
  br label %43

43:                                               ; preds = %40, %18
  %44 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %44
}

declare dso_local %struct.dentry* @isofs_export_iget(%struct.super_block*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
