; ModuleID = '/home/carl/AnghaBench/linux/net/can/extr_gw.c_cgw_csum_crc8_rel.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/extr_gw.c_cgw_csum_crc8_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.canfd_frame = type { i64*, i32, i32 }
%struct.cgw_csum_crc8 = type { i32, i32, i32, i64, i64*, i32, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.canfd_frame*, %struct.cgw_csum_crc8*)* @cgw_csum_crc8_rel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgw_csum_crc8_rel(%struct.canfd_frame* %0, %struct.cgw_csum_crc8* %1) #0 {
  %3 = alloca %struct.canfd_frame*, align 8
  %4 = alloca %struct.cgw_csum_crc8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.canfd_frame* %0, %struct.canfd_frame** %3, align 8
  store %struct.cgw_csum_crc8* %1, %struct.cgw_csum_crc8** %4, align 8
  %10 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %11 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %14 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @calc_idx(i32 %12, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %18 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %21 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @calc_idx(i32 %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %25 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %28 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @calc_idx(i32 %26, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %32 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36, %2
  br label %175

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %49 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %72, %47
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %54 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp sle i32 %52, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %59 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %58, i32 0, i32 4
  %60 = load i64*, i64** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %63 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = xor i64 %61, %68
  %70 = getelementptr inbounds i64, i64* %60, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %57
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %51

75:                                               ; preds = %51
  br label %105

76:                                               ; preds = %43
  %77 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %78 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %101, %76
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %83 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %80
  %87 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %88 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %87, i32 0, i32 4
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %92 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = xor i64 %90, %97
  %99 = getelementptr inbounds i64, i64* %89, i64 %98
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %8, align 8
  br label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %9, align 4
  br label %80

104:                                              ; preds = %80
  br label %105

105:                                              ; preds = %104, %75
  %106 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %107 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  switch i32 %108, label %161 [
    i32 129, label %109
    i32 130, label %122
    i32 128, label %141
  ]

109:                                              ; preds = %105
  %110 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %111 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %110, i32 0, i32 4
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %115 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %114, i32 0, i32 6
  %116 = load i64*, i64** %115, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 0
  %118 = load i64, i64* %117, align 8
  %119 = xor i64 %113, %118
  %120 = getelementptr inbounds i64, i64* %112, i64 %119
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %8, align 8
  br label %161

122:                                              ; preds = %105
  %123 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %124 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %123, i32 0, i32 4
  %125 = load i64*, i64** %124, align 8
  %126 = load i64, i64* %8, align 8
  %127 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %128 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %127, i32 0, i32 6
  %129 = load i64*, i64** %128, align 8
  %130 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %131 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %130, i32 0, i32 0
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 1
  %134 = load i64, i64* %133, align 8
  %135 = and i64 %134, 15
  %136 = getelementptr inbounds i64, i64* %129, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = xor i64 %126, %137
  %139 = getelementptr inbounds i64, i64* %125, i64 %138
  %140 = load i64, i64* %139, align 8
  store i64 %140, i64* %8, align 8
  br label %161

141:                                              ; preds = %105
  %142 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %143 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %142, i32 0, i32 4
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %147 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, 255
  %150 = sext i32 %149 to i64
  %151 = xor i64 %145, %150
  %152 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %153 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = ashr i32 %154, 8
  %156 = and i32 %155, 255
  %157 = sext i32 %156 to i64
  %158 = xor i64 %151, %157
  %159 = getelementptr inbounds i64, i64* %144, i64 %158
  %160 = load i64, i64* %159, align 8
  store i64 %160, i64* %8, align 8
  br label %161

161:                                              ; preds = %105, %141, %122, %109
  %162 = load i64, i64* %8, align 8
  %163 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %164 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %163, i32 0, i32 7
  %165 = load i64, i64* %164, align 8
  %166 = xor i64 %162, %165
  %167 = load %struct.canfd_frame*, %struct.canfd_frame** %3, align 8
  %168 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load %struct.cgw_csum_crc8*, %struct.cgw_csum_crc8** %4, align 8
  %171 = getelementptr inbounds %struct.cgw_csum_crc8, %struct.cgw_csum_crc8* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %169, i64 %173
  store i64 %166, i64* %174, align 8
  br label %175

175:                                              ; preds = %161, %42
  ret void
}

declare dso_local i32 @calc_idx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
