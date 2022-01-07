; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_dirty_cow_nnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_dirty_cow_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, %struct.ubifs_nnode* }
%struct.ubifs_nnode = type { i64, %struct.TYPE_6__*, i32, %struct.ubifs_nbranch*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ubifs_nnode* }
%struct.ubifs_nbranch = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ubifs_nnode* }

@COW_CNODE = common dso_local global i32 0, align 4
@DIRTY_CNODE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@OBSOLETE_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_nnode* (%struct.ubifs_info*, %struct.ubifs_nnode*)* @dirty_cow_nnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_nnode* @dirty_cow_nnode(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1) #0 {
  %3 = alloca %struct.ubifs_nnode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_nnode*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_nbranch*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %5, align 8
  %9 = load i32, i32* @COW_CNODE, align 4
  %10 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %11 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %10, i32 0, i32 2
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @DIRTY_CNODE, align 4
  %16 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %17 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %16, i32 0, i32 2
  %18 = call i32 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %27 = call i32 @ubifs_add_nnode_dirt(%struct.ubifs_info* %25, %struct.ubifs_nnode* %26)
  br label %28

28:                                               ; preds = %20, %14
  %29 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  store %struct.ubifs_nnode* %29, %struct.ubifs_nnode** %3, align 8
  br label %123

30:                                               ; preds = %2
  %31 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call %struct.ubifs_nnode* @kmemdup(%struct.ubifs_nnode* %31, i32 40, i32 %32)
  store %struct.ubifs_nnode* %33, %struct.ubifs_nnode** %6, align 8
  %34 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %35 = icmp ne %struct.ubifs_nnode* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.ubifs_nnode* @ERR_PTR(i32 %42)
  store %struct.ubifs_nnode* %43, %struct.ubifs_nnode** %3, align 8
  br label %123

44:                                               ; preds = %30
  %45 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %46 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %45, i32 0, i32 4
  store i32* null, i32** %46, align 8
  %47 = load i32, i32* @DIRTY_CNODE, align 4
  %48 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %49 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %48, i32 0, i32 2
  %50 = call i32 @__set_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @COW_CNODE, align 4
  %52 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %53 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %52, i32 0, i32 2
  %54 = call i32 @__clear_bit(i32 %51, i32* %53)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %77, %44
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %61 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %60, i32 0, i32 3
  %62 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %62, i64 %64
  store %struct.ubifs_nbranch* %65, %struct.ubifs_nbranch** %8, align 8
  %66 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %67 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = icmp ne %struct.TYPE_4__* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %72 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %73 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store %struct.ubifs_nnode* %71, %struct.ubifs_nnode** %75, align 8
  br label %76

76:                                               ; preds = %70, %59
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %55

80:                                               ; preds = %55
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %82 = load i32, i32* @OBSOLETE_CNODE, align 4
  %83 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %84 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %83, i32 0, i32 2
  %85 = call i32 @test_bit(i32 %82, i32* %84)
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @ubifs_assert(%struct.ubifs_info* %81, i32 %88)
  %90 = load i32, i32* @OBSOLETE_CNODE, align 4
  %91 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %92 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %91, i32 0, i32 2
  %93 = call i32 @__set_bit(i32 %90, i32* %92)
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %95 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %99 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %100 = call i32 @ubifs_add_nnode_dirt(%struct.ubifs_info* %98, %struct.ubifs_nnode* %99)
  %101 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %102 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = icmp ne %struct.TYPE_6__* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %80
  %106 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %107 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %5, align 8
  %108 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %107, i32 0, i32 1
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %113 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store %struct.ubifs_nnode* %106, %struct.ubifs_nnode** %116, align 8
  br label %121

117:                                              ; preds = %80
  %118 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %120 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %119, i32 0, i32 1
  store %struct.ubifs_nnode* %118, %struct.ubifs_nnode** %120, align 8
  br label %121

121:                                              ; preds = %117, %105
  %122 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  store %struct.ubifs_nnode* %122, %struct.ubifs_nnode** %3, align 8
  br label %123

123:                                              ; preds = %121, %40, %28
  %124 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %3, align 8
  ret %struct.ubifs_nnode* %124
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ubifs_add_nnode_dirt(%struct.ubifs_info*, %struct.ubifs_nnode*) #1

declare dso_local %struct.ubifs_nnode* @kmemdup(%struct.ubifs_nnode*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_nnode* @ERR_PTR(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
