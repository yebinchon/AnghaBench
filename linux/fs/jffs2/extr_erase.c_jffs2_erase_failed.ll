; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_erase.c_jffs2_erase_failed.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_erase.c_jffs2_erase_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.jffs2_eraseblock = type { i32, i64 }

@MTD_FAIL_ADDR_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i64)* @jffs2_erase_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_erase_failed(%struct.jffs2_sb_info* %0, %struct.jffs2_eraseblock* %1, i64 %2) #0 {
  %4 = alloca %struct.jffs2_sb_info*, align 8
  %5 = alloca %struct.jffs2_eraseblock*, align 8
  %6 = alloca i64, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %4, align 8
  store %struct.jffs2_eraseblock* %1, %struct.jffs2_eraseblock** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %8 = call i64 @jffs2_cleanmarker_oob(%struct.jffs2_sb_info* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %62

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @MTD_FAIL_ADDR_UNKNOWN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %10
  %15 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %16 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @jffs2_write_nand_badblock(%struct.jffs2_sb_info* %15, %struct.jffs2_eraseblock* %16, i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %61, label %20

20:                                               ; preds = %14
  %21 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %22 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %25 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %24, i32 0, i32 2
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %28 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %27, i32 0, i32 0
  %29 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %30 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %29, i32 0, i32 9
  %31 = call i32 @list_move(i32* %28, i32* %30)
  %32 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %33 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %36 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = sub nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %42 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %45 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  %50 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %51 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %54 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %56 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %55, i32 0, i32 2
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %59 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  br label %105

61:                                               ; preds = %14
  br label %62

62:                                               ; preds = %61, %10, %3
  %63 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %64 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %63, i32 0, i32 1
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %67 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %66, i32 0, i32 2
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %70 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %73 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %79 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %78, i32 0, i32 5
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %82 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %80
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %82, align 8
  %87 = load %struct.jffs2_eraseblock*, %struct.jffs2_eraseblock** %5, align 8
  %88 = getelementptr inbounds %struct.jffs2_eraseblock, %struct.jffs2_eraseblock* %87, i32 0, i32 0
  %89 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %90 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %89, i32 0, i32 4
  %91 = call i32 @list_move(i32* %88, i32* %90)
  %92 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %93 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %97 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %96, i32 0, i32 2
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %100 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %4, align 8
  %103 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %102, i32 0, i32 0
  %104 = call i32 @wake_up(i32* %103)
  br label %105

105:                                              ; preds = %62, %20
  ret void
}

declare dso_local i64 @jffs2_cleanmarker_oob(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_write_nand_badblock(%struct.jffs2_sb_info*, %struct.jffs2_eraseblock*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
