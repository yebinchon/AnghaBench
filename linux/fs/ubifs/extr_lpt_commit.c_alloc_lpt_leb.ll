; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_alloc_lpt_leb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_alloc_lpt_leb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32*)* @alloc_lpt_leb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_lpt_leb(%struct.ubifs_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %9, %12
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %71, %2
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %19 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %74

22:                                               ; preds = %16
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %22
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %34 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %33, i32 0, i32 3
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32, %22
  br label %71

43:                                               ; preds = %32
  %44 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %45 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %53 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %43
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %64, %67
  %69 = load i32*, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  store i32 0, i32* %3, align 4
  br label %134

70:                                               ; preds = %43
  br label %71

71:                                               ; preds = %70, %42
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %16

74:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %128, %74
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %131

79:                                               ; preds = %75
  %80 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %81 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %80, i32 0, i32 3
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %79
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %91 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89, %79
  br label %128

100:                                              ; preds = %89
  %101 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %102 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %101, i32 0, i32 3
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %110 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %108, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %100
  %114 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %115 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %114, i32 0, i32 3
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %123 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %121, %124
  %126 = load i32*, i32** %5, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %3, align 4
  br label %134

127:                                              ; preds = %100
  br label %128

128:                                              ; preds = %127, %99
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %75

131:                                              ; preds = %75
  %132 = load i32, i32* @ENOSPC, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %131, %113, %56
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
