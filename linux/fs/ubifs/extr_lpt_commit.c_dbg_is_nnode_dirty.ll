; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_is_nnode_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_is_nnode_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32 }
%struct.ubifs_nnode = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { i32, i32 }

@DIRTY_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32, i32)* @dbg_is_nnode_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbg_is_nnode_dirty(%struct.ubifs_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_nnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_nbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %12 = call %struct.ubifs_nnode* @first_nnode(%struct.ubifs_info* %11, i32* %9)
  store %struct.ubifs_nnode* %12, %struct.ubifs_nnode** %8, align 8
  br label %13

13:                                               ; preds = %73, %3
  %14 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %15 = icmp ne %struct.ubifs_nnode* %14, null
  br i1 %15, label %16, label %77

16:                                               ; preds = %13
  %17 = call i32 (...) @cond_resched()
  %18 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %19 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %16
  %23 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %24 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %26, align 8
  %28 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %29 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %27, i64 %30
  store %struct.ubifs_nbranch* %31, %struct.ubifs_nbranch** %10, align 8
  %32 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %33 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %22
  %38 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %10, align 8
  %39 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %22
  br label %73

44:                                               ; preds = %37
  %45 = load i32, i32* @DIRTY_CNODE, align 4
  %46 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %47 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %46, i32 0, i32 1
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %78

51:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %78

52:                                               ; preds = %16
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %60 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %52
  br label %73

65:                                               ; preds = %58
  %66 = load i32, i32* @DIRTY_CNODE, align 4
  %67 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %68 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %67, i32 0, i32 1
  %69 = call i64 @test_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %4, align 4
  br label %78

72:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %78

73:                                               ; preds = %64, %43
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %75 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %76 = call %struct.ubifs_nnode* @next_nnode(%struct.ubifs_info* %74, %struct.ubifs_nnode* %75, i32* %9)
  store %struct.ubifs_nnode* %76, %struct.ubifs_nnode** %8, align 8
  br label %13

77:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %77, %72, %71, %51, %50
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.ubifs_nnode* @first_nnode(%struct.ubifs_info*, i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.ubifs_nnode* @next_nnode(%struct.ubifs_info*, %struct.ubifs_nnode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
