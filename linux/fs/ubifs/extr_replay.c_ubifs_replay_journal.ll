; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_ubifs_replay_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_replay.c_ubifs_replay_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@UBIFS_TRUN_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"bad index head LEB %d:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"start replaying the journal\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"no UBIFS nodes found at the log head LEB %d:%d, possibly corrupted\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"finished, log head LEB %d:%d, max_sqnum %llu, highest_inum %lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_replay_journal(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %7 = load i32, i32* @UBIFS_TRUN_KEY, align 4
  %8 = icmp sgt i32 %7, 5
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUILD_BUG_ON(i32 %9)
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %12 = call i32 @take_ihead(%struct.ubifs_info* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %154

17:                                               ; preds = %1
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp ne i32 %20, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ubifs_err(%struct.ubifs_info* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %154

38:                                               ; preds = %17
  %39 = call i32 (i8*, ...) @dbg_mnt(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 3
  store i32 1, i32* %41, align 4
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  store i32 %44, i32* %5, align 4
  br label %47

47:                                               ; preds = %77, %38
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @replay_log_leb(%struct.ubifs_info* %48, i32 %49, i32 0, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %69

56:                                               ; preds = %47
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %83

63:                                               ; preds = %56
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ubifs_err(%struct.ubifs_info* %64, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 0)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %63, %47
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  br label %146

73:                                               ; preds = %69
  %74 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @ubifs_next_log_lnum(%struct.ubifs_info* %74, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %47, label %83

83:                                               ; preds = %77, %62
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = call i32 @replay_buds(%struct.ubifs_info* %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %146

89:                                               ; preds = %83
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = call i32 @apply_replay_list(%struct.ubifs_info* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %146

95:                                               ; preds = %89
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %97 = call i32 @set_buds_lprops(%struct.ubifs_info* %96)
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %146

101:                                              ; preds = %95
  %102 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %103 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %102, i32 0, i32 14
  %104 = call i32 @atomic_long_read(i32* %103)
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 13
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %109 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %108, i32 0, i32 12
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %112 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %111, i32 0, i32 13
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %114, %110
  store i32 %115, i32* %113, align 4
  %116 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %117 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %118 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %121 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = icmp sle i64 %119, %122
  br i1 %123, label %129, label %124

124:                                              ; preds = %101
  %125 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %126 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %125, i32 0, i32 11
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br label %129

129:                                              ; preds = %124, %101
  %130 = phi i1 [ true, %101 ], [ %128, %124 ]
  %131 = zext i1 %130 to i32
  %132 = call i32 @ubifs_assert(%struct.ubifs_info* %116, i32 %131)
  %133 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %134 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %137 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %140 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %143 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %142, i32 0, i32 8
  %144 = load i64, i64* %143, align 8
  %145 = call i32 (i8*, ...) @dbg_mnt(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %138, i32 %141, i64 %144)
  br label %146

146:                                              ; preds = %129, %100, %94, %88, %72
  %147 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %148 = call i32 @destroy_replay_list(%struct.ubifs_info* %147)
  %149 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %150 = call i32 @destroy_bud_list(%struct.ubifs_info* %149)
  %151 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %152 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %151, i32 0, i32 3
  store i32 0, i32* %152, align 4
  %153 = load i32, i32* %4, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %146, %27, %15
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @take_ihead(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @dbg_mnt(i8*, ...) #1

declare dso_local i32 @replay_log_leb(%struct.ubifs_info*, i32, i32, i32) #1

declare dso_local i32 @ubifs_next_log_lnum(%struct.ubifs_info*, i32) #1

declare dso_local i32 @replay_buds(%struct.ubifs_info*) #1

declare dso_local i32 @apply_replay_list(%struct.ubifs_info*) #1

declare dso_local i32 @set_buds_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @destroy_replay_list(%struct.ubifs_info*) #1

declare dso_local i32 @destroy_bud_list(%struct.ubifs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
