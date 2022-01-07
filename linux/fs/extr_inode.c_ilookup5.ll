; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_ilookup5.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_ilookup5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ilookup5(%struct.super_block* %0, i64 %1, i32 (%struct.inode*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (%struct.inode*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (%struct.inode*, i8*)* %2, i32 (%struct.inode*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  br label %10

10:                                               ; preds = %25, %4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32 (%struct.inode*, i8*)*, i32 (%struct.inode*, i8*)** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct.inode* @ilookup5_nowait(%struct.super_block* %11, i64 %12, i32 (%struct.inode*, i8*)* %13, i8* %14)
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load %struct.inode*, %struct.inode** %9, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %10
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call i32 @wait_on_inode(%struct.inode* %19)
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = call i32 @inode_unhashed(%struct.inode* %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %9, align 8
  %27 = call i32 @iput(%struct.inode* %26)
  br label %10

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %10
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  ret %struct.inode* %30
}

declare dso_local %struct.inode* @ilookup5_nowait(%struct.super_block*, i64, i32 (%struct.inode*, i8*)*, i8*) #1

declare dso_local i32 @wait_on_inode(%struct.inode*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inode_unhashed(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
