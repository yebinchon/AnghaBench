; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_setup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i8 }

@vfat_dir_inode_operations = common dso_local global i32 0, align 4
@vfat_ci_dentry_ops = common dso_local global i32 0, align 4
@vfat_dentry_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %3 = load %struct.super_block*, %struct.super_block** %2, align 8
  %4 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %3)
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  store i32* @vfat_dir_inode_operations, i32** %5, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 8
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 115
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  store i32* @vfat_ci_dentry_ops, i32** %15, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = getelementptr inbounds %struct.super_block, %struct.super_block* %17, i32 0, i32 0
  store i32* @vfat_dentry_ops, i32** %18, align 8
  br label %19

19:                                               ; preds = %16, %13
  ret void
}

declare dso_local %struct.TYPE_4__* @MSDOS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
