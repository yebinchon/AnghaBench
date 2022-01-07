; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c___ref_totlen.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c___ref_totlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i64, %struct.jffs2_eraseblock* }
%struct.jffs2_eraseblock = type { i64, i64, %struct.jffs2_raw_node_ref* }
%struct.jffs2_raw_node_ref = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"ref %p @0x%08x is not jeb->last_node (%p @0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, %struct.jffs2_raw_node_ref*)* @__ref_totlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__ref_totlen(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, %struct.jffs2_raw_node_ref* %2) #0 {
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_eraseblock*, align 8
  %6 = alloca %struct.jffs2_raw_node_ref*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.jffs2_raw_node_ref*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %5, align 8
  store %struct.jffs2_raw_node_ref* %2, %struct.jffs2_raw_node_ref** %6, align 8
  %9 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %10 = call %struct.jffs2_raw_node_ref* @ref_next(%struct.jffs2_raw_node_ref* %9)
  store %struct.jffs2_raw_node_ref* %10, %struct.jffs2_raw_node_ref** %8, align 8
  %11 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %8, align 8
  %12 = icmp ne %struct.jffs2_raw_node_ref* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %8, align 8
  %15 = call i64 @ref_offset(%struct.jffs2_raw_node_ref* %14)
  store i64 %15, i64* %7, align 8
  br label %73

16:                                               ; preds = %3
  %17 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %18 = icmp ne %struct.jffs2_eraseblock* %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %21 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %20, i32 0, i32 1
  %22 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %21, align 8
  %23 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %24 = getelementptr inbounds %struct.jffs2_raw_node_ref, %struct.jffs2_raw_node_ref* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %27 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = udiv i64 %25, %28
  %30 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %22, i64 %29
  store %struct.jffs2_eraseblock* %30, %struct.jffs2_eraseblock** %5, align 8
  br label %31

31:                                               ; preds = %19, %16
  %32 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %33 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %34 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %33, i32 0, i32 2
  %35 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %34, align 8
  %36 = icmp ne %struct.jffs2_raw_node_ref* %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %31
  %41 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %42 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %43 = call i64 @ref_offset(%struct.jffs2_raw_node_ref* %42)
  %44 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %45 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %44, i32 0, i32 2
  %46 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %45, align 8
  %47 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %48 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %47, i32 0, i32 2
  %49 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %48, align 8
  %50 = icmp ne %struct.jffs2_raw_node_ref* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %53 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %52, i32 0, i32 2
  %54 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %53, align 8
  %55 = call i64 @ref_offset(%struct.jffs2_raw_node_ref* %54)
  br label %57

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %51
  %58 = phi i64 [ %55, %51 ], [ 0, %56 ]
  %59 = call i32 @pr_crit(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.jffs2_raw_node_ref* %41, i64 %43, %struct.jffs2_raw_node_ref* %46, i64 %58)
  %60 = call i32 (...) @BUG()
  br label %61

61:                                               ; preds = %57, %31
  %62 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %63 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %66 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %64, %67
  %69 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %70 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %68, %71
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %61, %13
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.jffs2_raw_node_ref*, %struct.jffs2_raw_node_ref** %6, align 8
  %76 = call i64 @ref_offset(%struct.jffs2_raw_node_ref* %75)
  %77 = sub nsw i64 %74, %76
  ret i64 %77
}

declare dso_local %struct.jffs2_raw_node_ref* @ref_next(%struct.jffs2_raw_node_ref*) #1

declare dso_local i64 @ref_offset(%struct.jffs2_raw_node_ref*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_crit(i8*, %struct.jffs2_raw_node_ref*, i64, %struct.jffs2_raw_node_ref*, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
