; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_balance_dirty_pages_ratelimited.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_page-writeback.c_balance_dirty_pages_ratelimited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.backing_dev_info = type { %struct.bdi_writeback }
%struct.bdi_writeback = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@bdp_ratelimits = common dso_local global i32 0, align 4
@ratelimit_pages = common dso_local global i32 0, align 4
@dirty_throttle_leaks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @balance_dirty_pages_ratelimited(%struct.address_space* %0) #0 {
  %2 = alloca %struct.address_space*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.backing_dev_info*, align 8
  %5 = alloca %struct.bdi_writeback*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.address_space* %0, %struct.address_space** %2, align 8
  %9 = load %struct.address_space*, %struct.address_space** %2, align 8
  %10 = getelementptr inbounds %struct.address_space, %struct.address_space* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %3, align 8
  %13 = call %struct.backing_dev_info* @inode_to_bdi(%struct.inode* %12)
  store %struct.backing_dev_info* %13, %struct.backing_dev_info** %4, align 8
  store %struct.bdi_writeback* null, %struct.bdi_writeback** %5, align 8
  %14 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %15 = call i32 @bdi_cap_account_dirty(%struct.backing_dev_info* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %124

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i64 @inode_cgwb_enabled(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.bdi_writeback* @wb_get_create_current(%struct.backing_dev_info* %23, i32 %24)
  store %struct.bdi_writeback* %25, %struct.bdi_writeback** %5, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %28 = icmp ne %struct.bdi_writeback* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.backing_dev_info*, %struct.backing_dev_info** %4, align 8
  %31 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %30, i32 0, i32 0
  store %struct.bdi_writeback* %31, %struct.bdi_writeback** %5, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %37 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PAGE_SHIFT, align 4
  %43 = sub nsw i32 %42, 10
  %44 = ashr i32 32, %43
  %45 = call i8* @min(i32 %41, i32 %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %40, %32
  %48 = call i32 (...) @preempt_disable()
  %49 = call i32* @this_cpu_ptr(i32* @bdp_ratelimits)
  store i32* %49, i32** %7, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sge i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32*, i32** %7, align 8
  store i32 0, i32* %59, align 4
  br label %71

60:                                               ; preds = %47
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ratelimit_pages, align 4
  %64 = icmp sge i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32*, i32** %7, align 8
  store i32 0, i32* %69, align 4
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %60
  br label %71

71:                                               ; preds = %70, %58
  %72 = call i32* @this_cpu_ptr(i32* @dirty_throttle_leaks)
  store i32* %72, i32** %7, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %71
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %85, %88
  %90 = call i8* @min(i32 %84, i32 %89)
  %91 = ptrtoint i8* %90 to i64
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 %95, %92
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load i64, i64* %8, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  br label %105

105:                                              ; preds = %82, %76, %71
  %106 = call i32 (...) @preempt_enable()
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp sge i32 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %105
  %116 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @balance_dirty_pages(%struct.bdi_writeback* %116, i32 %119)
  br label %121

121:                                              ; preds = %115, %105
  %122 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %123 = call i32 @wb_put(%struct.bdi_writeback* %122)
  br label %124

124:                                              ; preds = %121, %17
  ret void
}

declare dso_local %struct.backing_dev_info* @inode_to_bdi(%struct.inode*) #1

declare dso_local i32 @bdi_cap_account_dirty(%struct.backing_dev_info*) #1

declare dso_local i64 @inode_cgwb_enabled(%struct.inode*) #1

declare dso_local %struct.bdi_writeback* @wb_get_create_current(%struct.backing_dev_info*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32* @this_cpu_ptr(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @balance_dirty_pages(%struct.bdi_writeback*, i32) #1

declare dso_local i32 @wb_put(%struct.bdi_writeback*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
