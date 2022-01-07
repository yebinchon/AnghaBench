; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_get_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_get_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.inode = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Could not load journal inode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.super_block*, i32)* @ext4_get_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @ext4_get_journal(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = call i32 @ext4_has_feature_journal(%struct.super_block* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.inode* @ext4_get_journal_inode(%struct.super_block* %14, i32 %15)
  store %struct.inode* %16, %struct.inode** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.TYPE_5__* @jbd2_journal_init_inode(%struct.inode* %21)
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %7, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %24 = icmp ne %struct.TYPE_5__* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.super_block*, %struct.super_block** %4, align 8
  %27 = load i32, i32* @KERN_ERR, align 4
  %28 = call i32 @ext4_msg(%struct.super_block* %26, i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i32 @iput(%struct.inode* %29)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %39

31:                                               ; preds = %20
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store %struct.super_block* %32, %struct.super_block** %34, align 8
  %35 = load %struct.super_block*, %struct.super_block** %4, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = call i32 @ext4_init_journal_params(%struct.super_block* %35, %struct.TYPE_5__* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %38, %struct.TYPE_5__** %3, align 8
  br label %39

39:                                               ; preds = %31, %25, %19
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %40
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext4_has_feature_journal(%struct.super_block*) #1

declare dso_local %struct.inode* @ext4_get_journal_inode(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_5__* @jbd2_journal_init_inode(%struct.inode*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ext4_init_journal_params(%struct.super_block*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
