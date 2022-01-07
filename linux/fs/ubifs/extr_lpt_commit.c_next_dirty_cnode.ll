; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_next_dirty_cnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_next_dirty_cnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_cnode = type { i32, i64, i32, %struct.ubifs_nnode* }
%struct.ubifs_nnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_cnode* }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@DIRTY_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_cnode* (%struct.ubifs_info*, %struct.ubifs_cnode*)* @next_dirty_cnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_cnode* @next_dirty_cnode(%struct.ubifs_info* %0, %struct.ubifs_cnode* %1) #0 {
  %3 = alloca %struct.ubifs_cnode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_cnode*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_cnode* %1, %struct.ubifs_cnode** %5, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %9 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %10 = call i32 @ubifs_assert(%struct.ubifs_info* %8, %struct.ubifs_cnode* %9)
  %11 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %12 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %11, i32 0, i32 3
  %13 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %12, align 8
  store %struct.ubifs_nnode* %13, %struct.ubifs_nnode** %6, align 8
  %14 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %15 = icmp ne %struct.ubifs_nnode* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.ubifs_cnode* null, %struct.ubifs_cnode** %3, align 8
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %19 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %56, %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %28 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %33, align 8
  store %struct.ubifs_cnode* %34, %struct.ubifs_cnode** %5, align 8
  %35 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %36 = icmp ne %struct.ubifs_cnode* %35, null
  br i1 %36, label %37, label %55

37:                                               ; preds = %26
  %38 = load i32, i32* @DIRTY_CNODE, align 4
  %39 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %40 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %39, i32 0, i32 2
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %45 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  store %struct.ubifs_cnode* %49, %struct.ubifs_cnode** %3, align 8
  br label %62

50:                                               ; preds = %43
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %52 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %53 = bitcast %struct.ubifs_cnode* %52 to %struct.ubifs_nnode*
  %54 = call %struct.ubifs_cnode* @first_dirty_cnode(%struct.ubifs_info* %51, %struct.ubifs_nnode* %53)
  store %struct.ubifs_cnode* %54, %struct.ubifs_cnode** %3, align 8
  br label %62

55:                                               ; preds = %37, %26
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %22

59:                                               ; preds = %22
  %60 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %61 = bitcast %struct.ubifs_nnode* %60 to %struct.ubifs_cnode*
  store %struct.ubifs_cnode* %61, %struct.ubifs_cnode** %3, align 8
  br label %62

62:                                               ; preds = %59, %50, %48, %16
  %63 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %3, align 8
  ret %struct.ubifs_cnode* %63
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, %struct.ubifs_cnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.ubifs_cnode* @first_dirty_cnode(%struct.ubifs_info*, %struct.ubifs_nnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
