; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_statfs.c_vfs_ustat.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_statfs.c_vfs_ustat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kstatfs = type { i32 }
%struct.super_block = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kstatfs*)* @vfs_ustat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_ustat(i32 %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.super_block* @user_get_super(i32 %8)
  store %struct.super_block* %9, %struct.super_block** %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %6, align 8
  %11 = icmp ne %struct.super_block* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %20 = call i32 @statfs_by_dentry(i32 %18, %struct.kstatfs* %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call i32 @drop_super(%struct.super_block* %21)
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %15, %12
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.super_block* @user_get_super(i32) #1

declare dso_local i32 @statfs_by_dentry(i32, %struct.kstatfs*) #1

declare dso_local i32 @drop_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
