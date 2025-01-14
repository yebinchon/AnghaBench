; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bd_init_fs_context.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_block_dev.c_bd_init_fs_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_context = type { i32 }
%struct.pseudo_fs_context = type { i32* }

@BDEVFS_MAGIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SB_I_CGROUPWB = common dso_local global i32 0, align 4
@bdev_sops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_context*)* @bd_init_fs_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_init_fs_context(%struct.fs_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fs_context*, align 8
  %4 = alloca %struct.pseudo_fs_context*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %3, align 8
  %5 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %6 = load i32, i32* @BDEVFS_MAGIC, align 4
  %7 = call %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context* %5, i32 %6)
  store %struct.pseudo_fs_context* %7, %struct.pseudo_fs_context** %4, align 8
  %8 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %4, align 8
  %9 = icmp ne %struct.pseudo_fs_context* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @SB_I_CGROUPWB, align 4
  %15 = load %struct.fs_context*, %struct.fs_context** %3, align 8
  %16 = getelementptr inbounds %struct.fs_context, %struct.fs_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.pseudo_fs_context*, %struct.pseudo_fs_context** %4, align 8
  %20 = getelementptr inbounds %struct.pseudo_fs_context, %struct.pseudo_fs_context* %19, i32 0, i32 0
  store i32* @bdev_sops, i32** %20, align 8
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %13, %10
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.pseudo_fs_context* @init_pseudo(%struct.fs_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
