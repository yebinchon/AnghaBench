; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_selinux_fs_info_create.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_selinuxfs.c_selinux_fs_info_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.selinux_fs_info* }
%struct.selinux_fs_info = type { %struct.super_block*, i32*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SEL_INO_NEXT = common dso_local global i64 0, align 8
@selinux_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @selinux_fs_info_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @selinux_fs_info_create(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.selinux_fs_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.selinux_fs_info* @kzalloc(i32 32, i32 %5)
  store %struct.selinux_fs_info* %6, %struct.selinux_fs_info** %4, align 8
  %7 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %4, align 8
  %8 = icmp ne %struct.selinux_fs_info* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %28

12:                                               ; preds = %1
  %13 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %4, align 8
  %14 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %13, i32 0, i32 3
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load i64, i64* @SEL_INO_NEXT, align 8
  %17 = sub nsw i64 %16, 1
  %18 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %4, align 8
  %19 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %4, align 8
  %21 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %20, i32 0, i32 1
  store i32* @selinux_state, i32** %21, align 8
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %4, align 8
  %24 = getelementptr inbounds %struct.selinux_fs_info, %struct.selinux_fs_info* %23, i32 0, i32 0
  store %struct.super_block* %22, %struct.super_block** %24, align 8
  %25 = load %struct.selinux_fs_info*, %struct.selinux_fs_info** %4, align 8
  %26 = load %struct.super_block*, %struct.super_block** %3, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  store %struct.selinux_fs_info* %25, %struct.selinux_fs_info** %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %12, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.selinux_fs_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
