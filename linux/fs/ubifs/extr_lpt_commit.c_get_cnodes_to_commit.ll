; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_get_cnodes_to_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_get_cnodes_to_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, %struct.ubifs_cnode*, %struct.TYPE_2__* }
%struct.ubifs_cnode = type { %struct.ubifs_cnode*, i32 }
%struct.TYPE_2__ = type { i32 }

@DIRTY_CNODE = common dso_local global i32 0, align 4
@COW_CNODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"committing %d cnodes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @get_cnodes_to_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cnodes_to_commit(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_cnode*, align 8
  %5 = alloca %struct.ubifs_cnode*, align 8
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

12:                                               ; preds = %1
  %13 = load i32, i32* @DIRTY_CNODE, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %13, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %88

21:                                               ; preds = %12
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call %struct.ubifs_cnode* @first_dirty_cnode(%struct.ubifs_info* %22, %struct.TYPE_2__* %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 2
  store %struct.ubifs_cnode* %26, %struct.ubifs_cnode** %28, align 8
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 2
  %31 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %30, align 8
  store %struct.ubifs_cnode* %31, %struct.ubifs_cnode** %4, align 8
  %32 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %33 = icmp ne %struct.ubifs_cnode* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %88

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %63
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = load i32, i32* @COW_CNODE, align 4
  %41 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %42 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %41, i32 0, i32 1
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @ubifs_assert(%struct.ubifs_info* %39, i32 %46)
  %48 = load i32, i32* @COW_CNODE, align 4
  %49 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %50 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %49, i32 0, i32 1
  %51 = call i32 @__set_bit(i32 %48, i32* %50)
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %53 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %54 = call %struct.ubifs_cnode* @next_dirty_cnode(%struct.ubifs_info* %52, %struct.ubifs_cnode* %53)
  store %struct.ubifs_cnode* %54, %struct.ubifs_cnode** %5, align 8
  %55 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %56 = icmp ne %struct.ubifs_cnode* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %38
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 2
  %60 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %59, align 8
  %61 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %62 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %61, i32 0, i32 0
  store %struct.ubifs_cnode* %60, %struct.ubifs_cnode** %62, align 8
  br label %70

63:                                               ; preds = %38
  %64 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  %65 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %4, align 8
  %66 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %65, i32 0, i32 0
  store %struct.ubifs_cnode* %64, %struct.ubifs_cnode** %66, align 8
  %67 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %5, align 8
  store %struct.ubifs_cnode* %67, %struct.ubifs_cnode** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %38

70:                                               ; preds = %57
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @dbg_cmt(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @dbg_lp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %78 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = icmp eq i32 %76, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @ubifs_assert(%struct.ubifs_info* %75, i32 %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %70, %34, %20, %11
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.ubifs_cnode* @first_dirty_cnode(%struct.ubifs_info*, %struct.TYPE_2__*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local %struct.ubifs_cnode* @next_dirty_cnode(%struct.ubifs_info*, %struct.ubifs_cnode*) #1

declare dso_local i32 @dbg_cmt(i8*, i32) #1

declare dso_local i32 @dbg_lp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
