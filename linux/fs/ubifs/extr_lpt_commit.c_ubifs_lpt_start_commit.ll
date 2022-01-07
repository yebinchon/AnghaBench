; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_ubifs_lpt_start_commit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_ubifs_lpt_start_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"no cnodes to commit\00", align 1
@LTAB_DIRTY = common dso_local global i32 0, align 4
@LSAVE_DIRTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_lpt_start_commit(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %6 = call i32 @dbg_lp(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 2
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = call i32 @dbg_chk_lpt_free_spc(%struct.ubifs_info* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %129

15:                                               ; preds = %1
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = call i32 @dbg_check_ltab(%struct.ubifs_info* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %129

21:                                               ; preds = %15
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %23 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %48

26:                                               ; preds = %21
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 8
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %43, %26
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %31 = call i64 @need_write_all(%struct.ubifs_info* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %38 = call i32 @lpt_gc(%struct.ubifs_info* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %134

43:                                               ; preds = %33
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 2
  %46 = call i32 @mutex_lock(i32* %45)
  br label %29

47:                                               ; preds = %29
  br label %48

48:                                               ; preds = %47, %21
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %50 = call i32 @lpt_tgc_start(%struct.ubifs_info* %49)
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %48
  %56 = call i32 @dbg_cmt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %129

57:                                               ; preds = %48
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %57
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %64 = call i64 @need_write_all(%struct.ubifs_info* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %68 = call i32 @make_tree_dirty(%struct.ubifs_info* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %129

72:                                               ; preds = %66
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = call i32 @lpt_tgc_start(%struct.ubifs_info* %73)
  br label %75

75:                                               ; preds = %72, %62, %57
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %82 = call i32 @populate_lsave(%struct.ubifs_info* %81)
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = call i32 @get_cnodes_to_commit(%struct.ubifs_info* %84)
  store i32 %85, i32* %5, align 4
  %86 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @ubifs_assert(%struct.ubifs_info* %86, i32 %89)
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %92 = call i32 @layout_cnodes(%struct.ubifs_info* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %129

96:                                               ; preds = %83
  %97 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %99 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %98, i32 0, i32 5
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ubifs_lpt_calc_hash(%struct.ubifs_info* %97, i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %96
  br label %129

107:                                              ; preds = %96
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %109 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %112 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %115 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = mul i64 4, %117
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memcpy(i32 %110, i32 %113, i32 %119)
  %121 = load i32, i32* @LTAB_DIRTY, align 4
  %122 = load i32, i32* @LSAVE_DIRTY, align 4
  %123 = or i32 %121, %122
  %124 = xor i32 %123, -1
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %107, %106, %95, %71, %55, %20, %14
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %131 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %130, i32 0, i32 2
  %132 = call i32 @mutex_unlock(i32* %131)
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %129, %41
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @dbg_lp(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dbg_chk_lpt_free_spc(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_check_ltab(%struct.ubifs_info*) #1

declare dso_local i64 @need_write_all(%struct.ubifs_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @lpt_gc(%struct.ubifs_info*) #1

declare dso_local i32 @lpt_tgc_start(%struct.ubifs_info*) #1

declare dso_local i32 @dbg_cmt(i8*) #1

declare dso_local i32 @make_tree_dirty(%struct.ubifs_info*) #1

declare dso_local i32 @populate_lsave(%struct.ubifs_info*) #1

declare dso_local i32 @get_cnodes_to_commit(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @layout_cnodes(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_lpt_calc_hash(%struct.ubifs_info*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
