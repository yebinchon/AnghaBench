; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_find.c_ubifs_find_free_leb_for_idx.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_find.c_ubifs_find_free_leb_for_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ubifs_lprops = type { i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"found LEB %d, free %d, dirty %d, flags %#x\00", align 1
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@LPROPS_NC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_find_free_leb_for_idx(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  store i32 -1, i32* %5, align 4
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %9 = call i32 @ubifs_get_lprops(%struct.ubifs_info* %8)
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %11 = call %struct.ubifs_lprops* @ubifs_fast_find_empty(%struct.ubifs_info* %10)
  store %struct.ubifs_lprops* %11, %struct.ubifs_lprops** %4, align 8
  %12 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %13 = icmp ne %struct.ubifs_lprops* %12, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %1
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %16 = call %struct.ubifs_lprops* @ubifs_fast_find_freeable(%struct.ubifs_info* %15)
  store %struct.ubifs_lprops* %16, %struct.ubifs_lprops** %4, align 8
  %17 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %18 = icmp ne %struct.ubifs_lprops* %17, null
  br i1 %18, label %56, label %19

19:                                               ; preds = %14
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %19
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %33 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %31, %35
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %27, %19
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @ubifs_assert(%struct.ubifs_info* %39, i32 %44)
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %47 = call %struct.ubifs_lprops* @scan_for_leb_for_idx(%struct.ubifs_info* %46)
  store %struct.ubifs_lprops* %47, %struct.ubifs_lprops** %4, align 8
  %48 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %49 = call i64 @IS_ERR(%struct.ubifs_lprops* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %53 = call i32 @PTR_ERR(%struct.ubifs_lprops* %52)
  store i32 %53, i32* %6, align 4
  br label %118

54:                                               ; preds = %38
  br label %55

55:                                               ; preds = %54, %27
  br label %56

56:                                               ; preds = %55, %14
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %59 = icmp ne %struct.ubifs_lprops* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @ENOSPC, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %118

63:                                               ; preds = %57
  %64 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %65 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %69 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %72 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %75 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dbg_find(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %79 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @LPROPS_TAKEN, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @LPROPS_INDEX, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %7, align 4
  %85 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %86 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %85, %struct.ubifs_lprops* %86, i32 %89, i32 0, i32 %90, i32 0)
  store %struct.ubifs_lprops* %91, %struct.ubifs_lprops** %4, align 8
  %92 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %93 = call i64 @IS_ERR(%struct.ubifs_lprops* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %63
  %96 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %97 = call i32 @PTR_ERR(%struct.ubifs_lprops* %96)
  store i32 %97, i32* %6, align 4
  br label %118

98:                                               ; preds = %63
  %99 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %100 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %99)
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @ubifs_leb_unmap(%struct.ubifs_info* %101, i32 %102)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @LPROPS_NC, align 4
  %110 = load i32, i32* @LPROPS_NC, align 4
  %111 = load i32, i32* @LPROPS_TAKEN, align 4
  %112 = load i32, i32* @LPROPS_INDEX, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @ubifs_change_one_lp(%struct.ubifs_info* %107, i32 %108, i32 %109, i32 %110, i32 0, i32 %113, i32 0)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %122

116:                                              ; preds = %98
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %122

118:                                              ; preds = %95, %60, %51
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %120 = call i32 @ubifs_release_lprops(%struct.ubifs_info* %119)
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %116, %106
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @ubifs_get_lprops(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_fast_find_empty(%struct.ubifs_info*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_fast_find_freeable(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local %struct.ubifs_lprops* @scan_for_leb_for_idx(%struct.ubifs_info*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @dbg_find(i8*, i32, i32, i32, i32) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_release_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_leb_unmap(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_change_one_lp(%struct.ubifs_info*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
