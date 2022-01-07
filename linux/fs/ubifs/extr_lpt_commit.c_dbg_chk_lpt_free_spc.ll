; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_chk_lpt_free_spc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_dbg_chk_lpt_free_spc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"LPT space error: free %lld lpt_sz %lld\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_chk_lpt_free_spc(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i64 0, i64* %4, align 8
  %6 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %7 = call i32 @dbg_is_chk_lprops(%struct.ubifs_info* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

10:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %80, %10
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %83

17:                                               ; preds = %11
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 6
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %17
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 6
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27, %17
  br label %80

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %42 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %38
  %50 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %51 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %54 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load i64, i64* %4, align 8
  %58 = add nsw i64 %57, %56
  store i64 %58, i64* %4, align 8
  br label %79

59:                                               ; preds = %38
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 6
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %74 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %4, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %72, %59
  br label %79

79:                                               ; preds = %78, %49
  br label %80

80:                                               ; preds = %79, %37
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %11

83:                                               ; preds = %11
  %84 = load i64, i64* %4, align 8
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %86 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %103

89:                                               ; preds = %83
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %93 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @ubifs_err(%struct.ubifs_info* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %94)
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %97 = call i32 @ubifs_dump_lpt_info(%struct.ubifs_info* %96)
  %98 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %99 = call i32 @ubifs_dump_lpt_lebs(%struct.ubifs_info* %98)
  %100 = call i32 (...) @dump_stack()
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %104

103:                                              ; preds = %83
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %89, %9
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @dbg_is_chk_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i64, i64) #1

declare dso_local i32 @ubifs_dump_lpt_info(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_dump_lpt_lebs(%struct.ubifs_info*) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
