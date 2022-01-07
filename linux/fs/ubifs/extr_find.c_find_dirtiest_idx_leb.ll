; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_find.c_find_dirtiest_idx_leb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_find.c_find_dirtiest_idx_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64* }
%struct.ubifs_lprops = type { i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@LPROPS_TAKEN = common dso_local global i32 0, align 4
@LPROPS_INDEX = common dso_local global i32 0, align 4
@LPROPS_NC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"LEB %d, dirty %d and free %d flags %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @find_dirtiest_idx_leb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_dirtiest_idx_leb(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.ubifs_lprops*, align 8
  %5 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  br label %6

6:                                                ; preds = %1, %51
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = load i32, i32* @ENOSPC, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %99

15:                                               ; preds = %6
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds i64, i64* %19, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.ubifs_lprops* @ubifs_lpt_lookup(%struct.ubifs_info* %28, i32 %29)
  store %struct.ubifs_lprops* %30, %struct.ubifs_lprops** %4, align 8
  %31 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %32 = call i64 @IS_ERR(%struct.ubifs_lprops* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %15
  %35 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %36 = call i32 @PTR_ERR(%struct.ubifs_lprops* %35)
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %15
  %38 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %39 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @LPROPS_TAKEN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %46 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @LPROPS_INDEX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %44, %37
  br label %6

52:                                               ; preds = %44
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %54 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %55 = load i32, i32* @LPROPS_NC, align 4
  %56 = load i32, i32* @LPROPS_NC, align 4
  %57 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %58 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @LPROPS_TAKEN, align 4
  %61 = or i32 %59, %60
  %62 = call %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info* %53, %struct.ubifs_lprops* %54, i32 %55, i32 %56, i32 %61, i32 0)
  store %struct.ubifs_lprops* %62, %struct.ubifs_lprops** %4, align 8
  %63 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %64 = call i64 @IS_ERR(%struct.ubifs_lprops* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %52
  %67 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %68 = call i32 @PTR_ERR(%struct.ubifs_lprops* %67)
  store i32 %68, i32* %2, align 4
  br label %99

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %72 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %75 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %78 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %81 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dbg_find(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %79, i32 %82)
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %85 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %86 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @LPROPS_TAKEN, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @ubifs_assert(%struct.ubifs_info* %84, i32 %89)
  %91 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %92 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %4, align 8
  %93 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @LPROPS_INDEX, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @ubifs_assert(%struct.ubifs_info* %91, i32 %96)
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %70, %66, %34, %12
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_lprops*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_lprops*) #1

declare dso_local %struct.ubifs_lprops* @ubifs_change_lp(%struct.ubifs_info*, %struct.ubifs_lprops*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_find(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
