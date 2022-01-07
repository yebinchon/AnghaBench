; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_is_valid_blkaddr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_is_valid_blkaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"access invalid blkaddr:%u\00", align 1
@SBI_NEED_FSCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_is_valid_blkaddr(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %120 [
    i32 131, label %9
    i32 129, label %10
    i32 128, label %20
    i32 133, label %39
    i32 130, label %58
    i32 136, label %75
    i32 135, label %75
    i32 134, label %75
    i32 132, label %103
  ]

9:                                                ; preds = %3
  br label %122

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %13 = call i32 @SIT_BLK_CNT(%struct.f2fs_sb_info* %12)
  %14 = icmp sge i32 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @unlikely(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %123

19:                                               ; preds = %10
  br label %122

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %23 = call i32 @MAIN_BLKADDR(%struct.f2fs_sb_info* %22)
  %24 = icmp sge i32 %21, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %28 = call %struct.TYPE_3__* @SM_I(%struct.f2fs_sb_info* %27)
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %26, %30
  br label %32

32:                                               ; preds = %25, %20
  %33 = phi i1 [ true, %20 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @unlikely(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %123

38:                                               ; preds = %32
  br label %122

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %42 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %41)
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp sge i32 %40, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %49 = call i32 @__start_cp_addr(%struct.f2fs_sb_info* %48)
  %50 = icmp slt i32 %47, %49
  br label %51

51:                                               ; preds = %46, %39
  %52 = phi i1 [ true, %39 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @unlikely(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %123

57:                                               ; preds = %51
  br label %122

58:                                               ; preds = %3
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %61 = call i32 @MAX_BLKADDR(%struct.f2fs_sb_info* %60)
  %62 = icmp sge i32 %59, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %66 = call i32 @MAIN_BLKADDR(%struct.f2fs_sb_info* %65)
  %67 = icmp slt i32 %64, %66
  br label %68

68:                                               ; preds = %63, %58
  %69 = phi i1 [ true, %58 ], [ %67, %63 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @unlikely(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %123

74:                                               ; preds = %68
  br label %122

75:                                               ; preds = %3, %3, %3
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %78 = call i32 @MAX_BLKADDR(%struct.f2fs_sb_info* %77)
  %79 = icmp sge i32 %76, %78
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %83 = call i32 @MAIN_BLKADDR(%struct.f2fs_sb_info* %82)
  %84 = icmp slt i32 %81, %83
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi i1 [ true, %75 ], [ %84, %80 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @unlikely(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @f2fs_warn(%struct.f2fs_sb_info* %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %95 = load i32, i32* @SBI_NEED_FSCK, align 4
  %96 = call i32 @set_sbi_flag(%struct.f2fs_sb_info* %94, i32 %95)
  %97 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %123

98:                                               ; preds = %85
  %99 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @__is_bitmap_valid(%struct.f2fs_sb_info* %99, i32 %100, i32 %101)
  store i32 %102, i32* %4, align 4
  br label %123

103:                                              ; preds = %3
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %106 = call i32 @SEG0_BLKADDR(%struct.f2fs_sb_info* %105)
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %111 = call i32 @MAIN_BLKADDR(%struct.f2fs_sb_info* %110)
  %112 = icmp sge i32 %109, %111
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i1 [ true, %103 ], [ %112, %108 ]
  %115 = zext i1 %114 to i32
  %116 = call i32 @unlikely(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %123

119:                                              ; preds = %113
  br label %122

120:                                              ; preds = %3
  %121 = call i32 (...) @BUG()
  br label %122

122:                                              ; preds = %120, %119, %74, %57, %38, %19, %9
  store i32 1, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %118, %98, %90, %73, %56, %37, %18
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @SIT_BLK_CNT(%struct.f2fs_sb_info*) #1

declare dso_local i32 @MAIN_BLKADDR(%struct.f2fs_sb_info*) #1

declare dso_local %struct.TYPE_3__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__start_cp_addr(%struct.f2fs_sb_info*) #1

declare dso_local i32 @MAX_BLKADDR(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_warn(%struct.f2fs_sb_info*, i8*, i32) #1

declare dso_local i32 @set_sbi_flag(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__is_bitmap_valid(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @SEG0_BLKADDR(%struct.f2fs_sb_info*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
