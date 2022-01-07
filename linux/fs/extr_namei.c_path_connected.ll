; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_path_connected.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_path_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32, %struct.vfsmount* }
%struct.vfsmount = type { i64, %struct.super_block* }
%struct.super_block = type { i32, i64 }

@SB_I_MULTIROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*)* @path_connected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_connected(%struct.path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.super_block*, align 8
  store %struct.path* %0, %struct.path** %3, align 8
  %6 = load %struct.path*, %struct.path** %3, align 8
  %7 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  %8 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  store %struct.vfsmount* %8, %struct.vfsmount** %4, align 8
  %9 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %10 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @SB_I_MULTIROOT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %1
  %19 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %20 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %35

27:                                               ; preds = %18, %1
  %28 = load %struct.path*, %struct.path** %3, align 8
  %29 = getelementptr inbounds %struct.path, %struct.path* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %32 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @is_subdir(i32 %30, i64 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %27, %26
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @is_subdir(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
