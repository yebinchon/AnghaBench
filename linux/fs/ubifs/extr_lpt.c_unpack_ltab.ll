; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_unpack_ltab.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_unpack_ltab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@UBIFS_LPT_CRC_BYTES = common dso_local global i32 0, align 4
@UBIFS_LPT_LTAB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*)* @unpack_ltab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_ltab(%struct.ubifs_info* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* @UBIFS_LPT_CRC_BYTES, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr i8, i8* %12, i64 %14
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %18 = load i32, i32* @UBIFS_LPT_LTAB, align 4
  %19 = call i32 @check_lpt_type(%struct.ubifs_info* %17, i32** %6, i32* %8, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %112

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %101, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %104

31:                                               ; preds = %25
  %32 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ubifs_unpack_bits(%struct.ubifs_info* %32, i32** %6, i32* %8, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ubifs_unpack_bits(%struct.ubifs_info* %37, i32** %6, i32* %8, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %67, label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %67, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %56 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %64 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %59, %53, %50, %44, %31
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %112

70:                                               ; preds = %59
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %73 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %72, i32 0, i32 3
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %79, i32* %86, align 4
  %87 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %88 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %87, i32 0, i32 3
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %95 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %70
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %25

104:                                              ; preds = %25
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %106 = load i8*, i8** %5, align 8
  %107 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %108 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @check_lpt_crc(%struct.ubifs_info* %105, i8* %106, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %104, %67, %22
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @check_lpt_type(%struct.ubifs_info*, i32**, i32*, i32) #1

declare dso_local i32 @ubifs_unpack_bits(%struct.ubifs_info*, i32**, i32*, i32) #1

declare dso_local i32 @check_lpt_crc(%struct.ubifs_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
