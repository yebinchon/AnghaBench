; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_super.c_reconfigure_single.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_super.c_reconfigure_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fs_context = type { i32 }

@MS_RMT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i8*)* @reconfigure_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reconfigure_single(%struct.super_block* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fs_context*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MS_RMT_MASK, align 4
  %15 = call %struct.fs_context* @fs_context_for_reconfigure(i32 %12, i32 %13, i32 %14)
  store %struct.fs_context* %15, %struct.fs_context** %8, align 8
  %16 = load %struct.fs_context*, %struct.fs_context** %8, align 8
  %17 = call i64 @IS_ERR(%struct.fs_context* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.fs_context*, %struct.fs_context** %8, align 8
  %21 = call i32 @PTR_ERR(%struct.fs_context* %20)
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %3
  %23 = load %struct.fs_context*, %struct.fs_context** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @parse_monolithic_mount_data(%struct.fs_context* %23, i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %32

29:                                               ; preds = %22
  %30 = load %struct.fs_context*, %struct.fs_context** %8, align 8
  %31 = call i32 @reconfigure_super(%struct.fs_context* %30)
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %28
  %33 = load %struct.fs_context*, %struct.fs_context** %8, align 8
  %34 = call i32 @put_fs_context(%struct.fs_context* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %19
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.fs_context* @fs_context_for_reconfigure(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.fs_context*) #1

declare dso_local i32 @PTR_ERR(%struct.fs_context*) #1

declare dso_local i32 @parse_monolithic_mount_data(%struct.fs_context*, i8*) #1

declare dso_local i32 @reconfigure_super(%struct.fs_context*) #1

declare dso_local i32 @put_fs_context(%struct.fs_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
