; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_categorize_lprops.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lprops.c_ubifs_categorize_lprops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i64, i64 }
%struct.ubifs_lprops = type { i32, i64, i64 }

@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_UNCAT = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@LPROPS_EMPTY = common dso_local global i32 0, align 4
@LPROPS_FRDI_IDX = common dso_local global i32 0, align 4
@LPROPS_FREEABLE = common dso_local global i32 0, align 4
@LPROPS_DIRTY_IDX = common dso_local global i32 0, align 4
@LPROPS_DIRTY = common dso_local global i32 0, align 4
@LPROPS_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_categorize_lprops(%struct.ubifs_info* %0, %struct.ubifs_lprops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_lprops*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_lprops* %1, %struct.ubifs_lprops** %5, align 8
  %6 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %7 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @LPROPS_TAKEN, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @LPROPS_UNCAT, align 4
  store i32 %13, i32* %3, align 4
  br label %107

14:                                               ; preds = %2
  %15 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %25 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LPROPS_INDEX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @ubifs_assert(%struct.ubifs_info* %23, i32 %31)
  %33 = load i32, i32* @LPROPS_EMPTY, align 4
  store i32 %33, i32* %3, align 4
  br label %107

34:                                               ; preds = %14
  %35 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %36 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %39 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %43 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %34
  %47 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %48 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @LPROPS_INDEX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @LPROPS_FRDI_IDX, align 4
  store i32 %54, i32* %3, align 4
  br label %107

55:                                               ; preds = %46
  %56 = load i32, i32* @LPROPS_FREEABLE, align 4
  store i32 %56, i32* %3, align 4
  br label %107

57:                                               ; preds = %34
  %58 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %59 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @LPROPS_INDEX, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %57
  %65 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %66 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %69 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %71, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load i32, i32* @LPROPS_DIRTY_IDX, align 4
  store i32 %77, i32* %3, align 4
  br label %107

78:                                               ; preds = %64
  br label %105

79:                                               ; preds = %57
  %80 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %81 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %84 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %82, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %89 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %92 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @LPROPS_DIRTY, align 4
  store i32 %96, i32* %3, align 4
  br label %107

97:                                               ; preds = %87, %79
  %98 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %5, align 8
  %99 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @LPROPS_FREE, align 4
  store i32 %103, i32* %3, align 4
  br label %107

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %78
  %106 = load i32, i32* @LPROPS_UNCAT, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %105, %102, %95, %76, %55, %53, %22, %12
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
