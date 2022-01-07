; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_handle_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_super.c_handle_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_super_block = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"super-6517\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"cannot support attributes on 3.5.x disk format\00", align 1
@REISERFS_ATTRS = common dso_local global i32 0, align 4
@reiserfs_attrs_cleared = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"super-6518\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"cannot support attributes until flag is set in super-block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @handle_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_attrs(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.reiserfs_super_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block* %4)
  store %struct.reiserfs_super_block* %5, %struct.reiserfs_super_block** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = call i64 @reiserfs_attrs(%struct.super_block* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %1
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call i64 @old_format_only(%struct.super_block* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = call i32 @reiserfs_warning(%struct.super_block* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @REISERFS_ATTRS, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.super_block*, %struct.super_block** %2, align 8
  %20 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %18
  store i32 %23, i32* %21, align 4
  br label %44

24:                                               ; preds = %9
  %25 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %3, align 8
  %26 = getelementptr inbounds %struct.reiserfs_super_block, %struct.reiserfs_super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  %29 = load i32, i32* @reiserfs_attrs_cleared, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %24
  %33 = load %struct.super_block*, %struct.super_block** %2, align 8
  %34 = call i32 @reiserfs_warning(%struct.super_block* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @REISERFS_ATTRS, align 4
  %36 = shl i32 1, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.super_block*, %struct.super_block** %2, align 8
  %39 = call %struct.TYPE_2__* @REISERFS_SB(%struct.super_block* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %37
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %32, %24
  br label %44

44:                                               ; preds = %13, %43, %1
  ret void
}

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local i64 @reiserfs_attrs(%struct.super_block*) #1

declare dso_local i64 @old_format_only(%struct.super_block*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local %struct.TYPE_2__* @REISERFS_SB(%struct.super_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
