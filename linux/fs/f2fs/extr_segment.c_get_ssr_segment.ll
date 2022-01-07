; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_get_ssr_segment.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_get_ssr_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i32 }
%struct.victim_selection = type { i64 (%struct.f2fs_sb_info.0*, i32*, i32, i32, i32)* }
%struct.f2fs_sb_info.0 = type opaque
%struct.TYPE_2__ = type { %struct.victim_selection* }

@NULL_SEGNO = common dso_local global i32 0, align 4
@BG_GC = common dso_local global i32 0, align 4
@SSR = common dso_local global i32 0, align 4
@CURSEG_WARM_NODE = common dso_local global i32 0, align 4
@CURSEG_COLD_NODE = common dso_local global i32 0, align 4
@CURSEG_HOT_NODE = common dso_local global i32 0, align 4
@NR_CURSEG_NODE_TYPE = common dso_local global i32 0, align 4
@CURSEG_WARM_DATA = common dso_local global i32 0, align 4
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4
@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@NR_CURSEG_DATA_TYPE = common dso_local global i32 0, align 4
@SBI_CP_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @get_ssr_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ssr_segment(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.curseg_info*, align 8
  %7 = alloca %struct.victim_selection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %12, i32 %13)
  store %struct.curseg_info* %14, %struct.curseg_info** %6, align 8
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %16 = call %struct.TYPE_2__* @DIRTY_I(%struct.f2fs_sb_info* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.victim_selection*, %struct.victim_selection** %17, align 8
  store %struct.victim_selection* %18, %struct.victim_selection** %7, align 8
  %19 = load i32, i32* @NULL_SEGNO, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.victim_selection*, %struct.victim_selection** %7, align 8
  %21 = getelementptr inbounds %struct.victim_selection, %struct.victim_selection* %20, i32 0, i32 0
  %22 = load i64 (%struct.f2fs_sb_info.0*, i32*, i32, i32, i32)*, i64 (%struct.f2fs_sb_info.0*, i32*, i32, i32, i32)** %21, align 8
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %24 = bitcast %struct.f2fs_sb_info* %23 to %struct.f2fs_sb_info.0*
  %25 = load i32, i32* @BG_GC, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @SSR, align 4
  %28 = call i64 %22(%struct.f2fs_sb_info.0* %24, i32* %8, i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %33 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  store i32 1, i32* %3, align 4
  br label %113

34:                                               ; preds = %2
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @IS_NODESEG(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @CURSEG_WARM_NODE, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  store i32 1, i32* %11, align 4
  %43 = load i32, i32* @CURSEG_COLD_NODE, align 4
  store i32 %43, i32* %9, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @CURSEG_HOT_NODE, align 4
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* @NR_CURSEG_NODE_TYPE, align 4
  store i32 %47, i32* %10, align 4
  br label %58

48:                                               ; preds = %34
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @CURSEG_WARM_DATA, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  store i32 1, i32* %11, align 4
  %53 = load i32, i32* @CURSEG_COLD_DATA, align 4
  store i32 %53, i32* %9, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* @NR_CURSEG_DATA_TYPE, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %46
  br label %59

59:                                               ; preds = %93, %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %10, align 4
  %62 = icmp sgt i32 %60, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %84

68:                                               ; preds = %63
  %69 = load %struct.victim_selection*, %struct.victim_selection** %7, align 8
  %70 = getelementptr inbounds %struct.victim_selection, %struct.victim_selection* %69, i32 0, i32 0
  %71 = load i64 (%struct.f2fs_sb_info.0*, i32*, i32, i32, i32)*, i64 (%struct.f2fs_sb_info.0*, i32*, i32, i32, i32)** %70, align 8
  %72 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %73 = bitcast %struct.f2fs_sb_info* %72 to %struct.f2fs_sb_info.0*
  %74 = load i32, i32* @BG_GC, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @SSR, align 4
  %77 = call i64 %71(%struct.f2fs_sb_info.0* %73, i32* %8, i32 %74, i32 %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %82 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  store i32 1, i32* %3, align 4
  br label %113

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %67
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %9, align 4
  br label %93

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i32 [ %88, %87 ], [ %91, %90 ]
  br label %59

95:                                               ; preds = %59
  %96 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %97 = load i32, i32* @SBI_CP_DISABLED, align 4
  %98 = call i32 @is_sbi_flag_set(%struct.f2fs_sb_info* %96, i32 %97)
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %103 = call i32 @get_free_segment(%struct.f2fs_sb_info* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @NULL_SEGNO, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.curseg_info*, %struct.curseg_info** %6, align 8
  %110 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  store i32 1, i32* %3, align 4
  br label %113

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111, %95
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %107, %79, %30
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_2__* @DIRTY_I(%struct.f2fs_sb_info*) #1

declare dso_local i64 @IS_NODESEG(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @is_sbi_flag_set(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @get_free_segment(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
