; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_jffs2_scan_dirty_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_jffs2_scan_dirty_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i64, i32, i32 }
%struct.jffs2_eraseblock = type { i64, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"Dirty space 0x%x larger then free_size 0x%x (wasted 0x%x)\0A\00", align 1
@REF_OBSOLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_scan_dirty_space(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_eraseblock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %90

12:                                               ; preds = %3
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %15 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %12
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %24 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %27 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pr_crit(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %22, i64 %25, i32 %28)
  %30 = call i32 (...) @BUG()
  br label %31

31:                                               ; preds = %21, %12
  %32 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %33 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = icmp ne %struct.TYPE_2__* %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %31
  %37 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %38 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i64 @ref_obsolete(%struct.TYPE_2__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %45 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %52 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = sub nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %59 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %57
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %66 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  br label %89

69:                                               ; preds = %36, %31
  %70 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %71 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %74 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %78 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* @REF_OBSOLETE, align 8
  %82 = load i64, i64* %8, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %8, align 8
  %84 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %85 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %7, align 8
  %88 = call i32 @jffs2_link_node_ref(%struct.jffs2_sb_info* %84, %struct.jffs2_eraseblock* %85, i64 %86, i64 %87, i32* null)
  br label %89

89:                                               ; preds = %69, %42
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %11
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_crit(i8*, i64, i64, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @ref_obsolete(%struct.TYPE_2__*) #1

declare dso_local i32 @jffs2_link_node_ref(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
