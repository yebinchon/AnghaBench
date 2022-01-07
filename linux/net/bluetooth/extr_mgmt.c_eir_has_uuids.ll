; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_eir_has_uuids.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_eir_has_uuids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bluetooth_base_uuid = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64, [16 x i64]*)* @eir_has_uuids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eir_has_uuids(i64* %0, i64 %1, i64 %2, [16 x i64]* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [16 x i64]*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [16 x i64], align 16
  %13 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store [16 x i64]* %3, [16 x i64]** %9, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %152, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %161

18:                                               ; preds = %14
  %19 = load i64*, i64** %6, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %161

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %10, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %29, 1
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %161

33:                                               ; preds = %25
  %34 = load i64*, i64** %6, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  %36 = load i64, i64* %35, align 8
  switch i64 %36, label %152 [
    i64 131, label %37
    i64 130, label %37
    i64 129, label %74
    i64 128, label %74
    i64 133, label %125
    i64 132, label %125
  ]

37:                                               ; preds = %33, %33
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %70, %37
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 3
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %11, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %38
  %45 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %46 = load i64*, i64** @bluetooth_base_uuid, align 8
  %47 = call i32 @memcpy(i64* %45, i64* %46, i32 16)
  %48 = load i64*, i64** %6, align 8
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 %49, 3
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 13
  store i64 %53, i64* %54, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 12
  store i64 %60, i64* %61, align 16
  %62 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %63 = load i64, i64* %8, align 8
  %64 = load [16 x i64]*, [16 x i64]** %9, align 8
  %65 = bitcast [16 x i64]* %64 to i64**
  %66 = call i32 @has_uuid(i64* %62, i64 %63, i64** %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %162

69:                                               ; preds = %44
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 2
  store i32 %72, i32* %13, align 4
  br label %38

73:                                               ; preds = %38
  br label %152

74:                                               ; preds = %33, %33
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %121, %74
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 5
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %11, align 8
  %80 = icmp sle i64 %78, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %75
  %82 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %83 = load i64*, i64** @bluetooth_base_uuid, align 8
  %84 = call i32 @memcpy(i64* %82, i64* %83, i32 16)
  %85 = load i64*, i64** %6, align 8
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 5
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 15
  store i64 %90, i64* %91, align 8
  %92 = load i64*, i64** %6, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 14
  store i64 %97, i64* %98, align 16
  %99 = load i64*, i64** %6, align 8
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 13
  store i64 %104, i64* %105, align 8
  %106 = load i64*, i64** %6, align 8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 12
  store i64 %111, i64* %112, align 16
  %113 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %114 = load i64, i64* %8, align 8
  %115 = load [16 x i64]*, [16 x i64]** %9, align 8
  %116 = bitcast [16 x i64]* %115 to i64**
  %117 = call i32 @has_uuid(i64* %113, i64 %114, i64** %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %81
  store i32 1, i32* %5, align 4
  br label %162

120:                                              ; preds = %81
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 4
  store i32 %123, i32* %13, align 4
  br label %75

124:                                              ; preds = %75
  br label %152

125:                                              ; preds = %33, %33
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %148, %125
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 17
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %11, align 8
  %131 = icmp sle i64 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %126
  %133 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %134 = load i64*, i64** %6, align 8
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = getelementptr inbounds i64, i64* %137, i64 2
  %139 = call i32 @memcpy(i64* %133, i64* %138, i32 16)
  %140 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %141 = load i64, i64* %8, align 8
  %142 = load [16 x i64]*, [16 x i64]** %9, align 8
  %143 = bitcast [16 x i64]* %142 to i64**
  %144 = call i32 @has_uuid(i64* %140, i64 %141, i64** %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %132
  store i32 1, i32* %5, align 4
  br label %162

147:                                              ; preds = %132
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 16
  store i32 %150, i32* %13, align 4
  br label %126

151:                                              ; preds = %126
  br label %152

152:                                              ; preds = %33, %151, %124, %73
  %153 = load i64, i64* %11, align 8
  %154 = add nsw i64 %153, 1
  %155 = load i64, i64* %10, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %10, align 8
  %157 = load i64, i64* %11, align 8
  %158 = add nsw i64 %157, 1
  %159 = load i64*, i64** %6, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 %158
  store i64* %160, i64** %6, align 8
  br label %14

161:                                              ; preds = %32, %24, %14
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %146, %119, %68
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @has_uuid(i64*, i64, i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
