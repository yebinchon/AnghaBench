; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_debug.c___jffs2_dbg_acct_sanity_check_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_debug.c___jffs2_dbg_acct_sanity_check_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.jffs2_eraseblock = type { i64, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [56 x i8] c"eeep, space accounting for block at 0x%08x is screwed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"free %#08x + dirty %#08x + used %#08x + wasted %#08x + unchecked %#08x != total %#08x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"eeep, space accounting superblock info is screwed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [116 x i8] c"free %#08x + dirty %#08x + used %#08x + erasing %#08x + bad %#08x + wasted %#08x + unchecked %#08x != total %#08x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__jffs2_dbg_acct_sanity_check_nolock(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1) #0 {
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca %struct.jffs2_eraseblock*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %4, align 8
  %5 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %6 = icmp ne %struct.jffs2_eraseblock* %5, null
  br i1 %6, label %7, label %31

7:                                                ; preds = %2
  %8 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %9 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %12 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %16 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %14, %17
  %19 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %20 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %24 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %28 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br label %31

31:                                               ; preds = %7, %2
  %32 = phi i1 [ false, %2 ], [ %30, %7 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %38 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 (i8*, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %42 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %45 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %48 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %51 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %4, align 8
  %54 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %57 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %46, i64 %49, i64 %52, i64 %55, i64 %58)
  %60 = call i32 (...) @BUG()
  br label %61

61:                                               ; preds = %36, %31
  %62 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %63 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %66 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %70 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %68, %71
  %73 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %74 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %78 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %76, %79
  %81 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %82 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %80, %83
  %85 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %86 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %90 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %61
  %97 = call i32 (i8*, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %98 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %99 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %102 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %105 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %108 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %107, i32 0, i32 4
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %111 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %114 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %117 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %120 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %119, i32 0, i32 8
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i8*, ...) @JFFS2_ERROR(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.3, i64 0, i64 0), i64 %100, i64 %103, i64 %106, i64 %109, i64 %112, i64 %115, i64 %118, i64 %121)
  %123 = call i32 (...) @BUG()
  br label %124

124:                                              ; preds = %96, %61
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @JFFS2_ERROR(i8*, ...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
