; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_build.c_jffs2_calc_trigger_levels.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_build.c_jffs2_calc_trigger_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [60 x i8] c"trigger levels (size %d KiB, block size %d KiB, %d blocks)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Blocks required to allow deletion:    %d (%d KiB)\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Blocks required to allow writes:      %d (%d KiB)\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Blocks required to quiesce GC thread: %d (%d KiB)\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Blocks required to allow GC merges:   %d (%d KiB)\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"Blocks required to GC bad blocks:     %d (%d KiB)\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Amount of dirty space required to GC: %d bytes\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Very dirty blocks before GC triggered: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_sb_info*)* @jffs2_calc_trigger_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_calc_trigger_levels(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca %struct.jffs2_sb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %2, align 8
  %4 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %5 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %4, i32 0, i32 0
  store i32 2, i32* %5, align 4
  %6 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %7 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sdiv i32 %8, 50
  store i32 %9, i32* %3, align 4
  %10 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %11 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 100
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %17 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %23 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %27 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %25, %28
  %30 = add nsw i32 %24, %29
  %31 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %32 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %34 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %38 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %40 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %44 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %46 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %45, i32 0, i32 7
  store i32 0, i32* %46, align 4
  %47 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %48 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %51 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %53 = call i64 @jffs2_can_mark_obsolete(%struct.jffs2_sb_info* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %1
  %56 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %57 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 10
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %1
  %61 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %62 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %65 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %66, 100
  %68 = add nsw i32 %63, %67
  %69 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %70 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %69, i32 0, i32 9
  store i32 %68, i32* %70, align 4
  %71 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %72 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 1024
  %75 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %76 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 1024
  %79 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %80 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @dbg_fsbuild(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %78, i32 %81)
  %83 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %84 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %87 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %90 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = mul nsw i32 %88, %91
  %93 = sdiv i32 %92, 1024
  %94 = call i32 (i8*, i32, ...) @dbg_fsbuild(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %85, i32 %93)
  %95 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %96 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %99 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %102 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %100, %103
  %105 = sdiv i32 %104, 1024
  %106 = call i32 (i8*, i32, ...) @dbg_fsbuild(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %105)
  %107 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %108 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %111 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %114 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %112, %115
  %117 = sdiv i32 %116, 1024
  %118 = call i32 (i8*, i32, ...) @dbg_fsbuild(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %117)
  %119 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %120 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %123 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %126 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = mul nsw i32 %124, %127
  %129 = sdiv i32 %128, 1024
  %130 = call i32 (i8*, i32, ...) @dbg_fsbuild(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %129)
  %131 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %132 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %131, i32 0, i32 7
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %135 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %138 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %136, %139
  %141 = sdiv i32 %140, 1024
  %142 = call i32 (i8*, i32, ...) @dbg_fsbuild(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %133, i32 %141)
  %143 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %144 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %143, i32 0, i32 9
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, i32, ...) @dbg_fsbuild(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %145)
  %147 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %2, align 8
  %148 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, i32, ...) @dbg_fsbuild(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0), i32 %149)
  ret void
}

declare dso_local i64 @jffs2_can_mark_obsolete(%struct.jffs2_sb_info*) #1

declare dso_local i32 @dbg_fsbuild(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
