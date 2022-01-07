; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_first_dirty_cnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_first_dirty_cnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_cnode = type { i64, i32 }
%struct.ubifs_info = type { i32 }
%struct.ubifs_nnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_cnode* }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@DIRTY_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_cnode* (%struct.ubifs_info*, %struct.ubifs_nnode*)* @first_dirty_cnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_cnode* @first_dirty_cnode(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1) #0 {
  %3 = alloca %struct.ubifs_cnode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_nnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_cnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %5, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %11 = call i32 @ubifs_assert(%struct.ubifs_info* %9, %struct.ubifs_nnode* %10)
  br label %12

12:                                               ; preds = %2, %54
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %45, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %13
  %18 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %19 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %24, align 8
  store %struct.ubifs_cnode* %25, %struct.ubifs_cnode** %8, align 8
  %26 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %8, align 8
  %27 = icmp ne %struct.ubifs_cnode* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %17
  %29 = load i32, i32* @DIRTY_CNODE, align 4
  %30 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %8, align 8
  %31 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %30, i32 0, i32 1
  %32 = call i64 @test_bit(i32 %29, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %8, align 8
  %36 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %8, align 8
  store %struct.ubifs_cnode* %40, %struct.ubifs_cnode** %3, align 8
  br label %55

41:                                               ; preds = %34
  %42 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %8, align 8
  %43 = bitcast %struct.ubifs_cnode* %42 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %43, %struct.ubifs_nnode** %5, align 8
  store i32 1, i32* %7, align 4
  br label %48

44:                                               ; preds = %28, %17
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %13

48:                                               ; preds = %41, %13
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %53 = bitcast %struct.ubifs_nnode* %52 to %struct.ubifs_cnode*
  store %struct.ubifs_cnode* %53, %struct.ubifs_cnode** %3, align 8
  br label %55

54:                                               ; preds = %48
  br label %12

55:                                               ; preds = %51, %39
  %56 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %3, align 8
  ret %struct.ubifs_cnode* %56
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, %struct.ubifs_nnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
