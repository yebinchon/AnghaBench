; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_is_pnode_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_is_pnode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_pnode = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { i32, i32 }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@DIRTY_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32)* @dbg_is_pnode_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_is_pnode_dirty(%struct.ubifs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_pnode*, align 8
  %11 = alloca %struct.ubifs_nbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %16 = call i32 @DIV_ROUND_UP(i32 %14, i32 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %62, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %65

21:                                               ; preds = %17
  %22 = call i32 (...) @cond_resched()
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.ubifs_pnode* @ubifs_pnode_lookup(%struct.ubifs_info* %23, i32 %24)
  store %struct.ubifs_pnode* %25, %struct.ubifs_pnode** %10, align 8
  %26 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %10, align 8
  %27 = call i64 @IS_ERR(%struct.ubifs_pnode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %10, align 8
  %31 = call i32 @PTR_ERR(%struct.ubifs_pnode* %30)
  store i32 %31, i32* %4, align 4
  br label %66

32:                                               ; preds = %21
  %33 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %10, align 8
  %34 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %36, align 8
  %38 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %10, align 8
  %39 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %37, i64 %40
  store %struct.ubifs_nbranch* %41, %struct.ubifs_nbranch** %11, align 8
  %42 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %11, align 8
  %43 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %32
  %48 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %11, align 8
  %49 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %32
  br label %62

54:                                               ; preds = %47
  %55 = load i32, i32* @DIRTY_CNODE, align 4
  %56 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %10, align 8
  %57 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %56, i32 0, i32 1
  %58 = call i64 @test_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %66

61:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %66

62:                                               ; preds = %53
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %17

65:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %61, %60, %29
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.ubifs_pnode* @ubifs_pnode_lookup(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_pnode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_pnode*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
