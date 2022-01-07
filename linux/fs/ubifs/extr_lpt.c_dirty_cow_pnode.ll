; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_dirty_cow_pnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_dirty_cow_pnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_pnode = type { i64, %struct.TYPE_4__*, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_pnode* }

@COW_CNODE = common dso_local global i32 0, align 4
@DIRTY_CNODE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OBSOLETE_CNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_pnode* (%struct.ubifs_info*, %struct.ubifs_pnode*)* @dirty_cow_pnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_pnode* @dirty_cow_pnode(%struct.ubifs_info* %0, %struct.ubifs_pnode* %1) #0 {
  %3 = alloca %struct.ubifs_pnode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_pnode*, align 8
  %6 = alloca %struct.ubifs_pnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_pnode* %1, %struct.ubifs_pnode** %5, align 8
  %7 = load i32, i32* @COW_CNODE, align 4
  %8 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %9 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %8, i32 0, i32 2
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %28, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @DIRTY_CNODE, align 4
  %14 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %14, i32 0, i32 2
  %16 = call i32 @test_and_set_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %25 = call i32 @add_pnode_dirt(%struct.ubifs_info* %23, %struct.ubifs_pnode* %24)
  br label %26

26:                                               ; preds = %18, %12
  %27 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  store %struct.ubifs_pnode* %27, %struct.ubifs_pnode** %3, align 8
  br label %89

28:                                               ; preds = %2
  %29 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %30 = load i32, i32* @GFP_NOFS, align 4
  %31 = call %struct.ubifs_pnode* @kmemdup(%struct.ubifs_pnode* %29, i32 32, i32 %30)
  store %struct.ubifs_pnode* %31, %struct.ubifs_pnode** %6, align 8
  %32 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %33 = icmp ne %struct.ubifs_pnode* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.ubifs_pnode* @ERR_PTR(i32 %40)
  store %struct.ubifs_pnode* %41, %struct.ubifs_pnode** %3, align 8
  br label %89

42:                                               ; preds = %28
  %43 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %44 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %43, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = load i32, i32* @DIRTY_CNODE, align 4
  %46 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %47 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %46, i32 0, i32 2
  %48 = call i32 @__set_bit(i32 %45, i32* %47)
  %49 = load i32, i32* @COW_CNODE, align 4
  %50 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %51 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %50, i32 0, i32 2
  %52 = call i32 @__clear_bit(i32 %49, i32* %51)
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %54 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %55 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %56 = call i32 @replace_cats(%struct.ubifs_info* %53, %struct.ubifs_pnode* %54, %struct.ubifs_pnode* %55)
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %58 = load i32, i32* @OBSOLETE_CNODE, align 4
  %59 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %60 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %59, i32 0, i32 2
  %61 = call i32 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @ubifs_assert(%struct.ubifs_info* %57, i32 %64)
  %66 = load i32, i32* @OBSOLETE_CNODE, align 4
  %67 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %68 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %67, i32 0, i32 2
  %69 = call i32 @__set_bit(i32 %66, i32* %68)
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %75 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %76 = call i32 @add_pnode_dirt(%struct.ubifs_info* %74, %struct.ubifs_pnode* %75)
  %77 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %78 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %79 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %84 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store %struct.ubifs_pnode* %77, %struct.ubifs_pnode** %87, align 8
  %88 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  store %struct.ubifs_pnode* %88, %struct.ubifs_pnode** %3, align 8
  br label %89

89:                                               ; preds = %42, %38, %26
  %90 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %3, align 8
  ret %struct.ubifs_pnode* %90
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @add_pnode_dirt(%struct.ubifs_info*, %struct.ubifs_pnode*) #1

declare dso_local %struct.ubifs_pnode* @kmemdup(%struct.ubifs_pnode*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ubifs_pnode* @ERR_PTR(i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @replace_cats(%struct.ubifs_info*, %struct.ubifs_pnode*, %struct.ubifs_pnode*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
