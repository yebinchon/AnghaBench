; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_get_cb_cost.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_get_cb_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32, i32 }
%struct.sit_info = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32)* @get_cb_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cb_cost(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sit_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %13)
  store %struct.sit_info* %14, %struct.sit_info** %5, align 8
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @GET_SEG_FROM_SEC(%struct.f2fs_sb_info* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i8 0, i8* %10, align 1
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %37, %2
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %24 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ult i32 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %12, align 4
  %31 = add i32 %29, %30
  %32 = call %struct.TYPE_2__* @get_seg_entry(%struct.f2fs_sb_info* %28, i32 %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %12, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %12, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @get_valid_blocks(%struct.f2fs_sb_info* %41, i32 %42, i32 1)
  store i32 %43, i32* %9, align 4
  %44 = load i64, i64* %8, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %47 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @div_u64(i32 %45, i32 %48)
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %53 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @div_u64(i32 %51, i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = mul i32 %57, 100
  %59 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %60 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = lshr i32 %58, %61
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %11, align 1
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %66 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %40
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %72 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %40
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %76 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ugt i64 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %82 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %85 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %88 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %86, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %83
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %94 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %92, %95
  %97 = mul i64 100, %96
  %98 = trunc i64 %97 to i32
  %99 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %100 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %103 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = sub i64 %101, %104
  %106 = call i32 @div64_u64(i32 %98, i64 %105)
  %107 = sub nsw i32 100, %106
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %10, align 1
  br label %109

109:                                              ; preds = %91, %83
  %110 = load i32, i32* @UINT_MAX, align 4
  %111 = load i8, i8* %11, align 1
  %112 = zext i8 %111 to i32
  %113 = sub nsw i32 100, %112
  %114 = mul nsw i32 100, %113
  %115 = load i8, i8* %10, align 1
  %116 = zext i8 %115 to i32
  %117 = mul nsw i32 %114, %116
  %118 = load i8, i8* %11, align 1
  %119 = zext i8 %118 to i32
  %120 = add nsw i32 100, %119
  %121 = sdiv i32 %117, %120
  %122 = sub i32 %110, %121
  ret i32 %122
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @GET_SEC_FROM_SEG(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @GET_SEG_FROM_SEC(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.TYPE_2__* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @get_valid_blocks(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i8* @div_u64(i32, i32) #1

declare dso_local i32 @div64_u64(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
