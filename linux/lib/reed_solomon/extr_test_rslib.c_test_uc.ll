; ModuleID = '/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_test_uc.c'
source_filename = "/home/carl/AnghaBench/linux/lib/reed_solomon/extr_test_rslib.c_test_uc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_control = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.estat = type { i32, i32, i32, i32 }
%struct.wspace = type { i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rs_control*, i32, i32, i32, i32, %struct.estat*, %struct.wspace*, i32)* @test_uc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_uc(%struct.rs_control* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.estat* %5, %struct.wspace* %6, i32 %7) #0 {
  %9 = alloca %struct.rs_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.estat*, align 8
  %15 = alloca %struct.wspace*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.rs_control* %0, %struct.rs_control** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.estat* %5, %struct.estat** %14, align 8
  store %struct.wspace* %6, %struct.wspace** %15, align 8
  store i32 %7, i32* %16, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.rs_control*, %struct.rs_control** %9, align 8
  %30 = getelementptr inbounds %struct.rs_control, %struct.rs_control* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %28, %33
  store i32 %34, i32* %17, align 4
  %35 = load %struct.wspace*, %struct.wspace** %15, align 8
  %36 = getelementptr inbounds %struct.wspace, %struct.wspace* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %18, align 8
  %38 = load %struct.wspace*, %struct.wspace** %15, align 8
  %39 = getelementptr inbounds %struct.wspace, %struct.wspace* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %19, align 8
  %41 = load %struct.wspace*, %struct.wspace** %15, align 8
  %42 = getelementptr inbounds %struct.wspace, %struct.wspace* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %20, align 8
  %44 = load %struct.wspace*, %struct.wspace** %15, align 8
  %45 = getelementptr inbounds %struct.wspace, %struct.wspace* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %21, align 8
  %47 = load %struct.wspace*, %struct.wspace** %15, align 8
  %48 = getelementptr inbounds %struct.wspace, %struct.wspace* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %22, align 8
  %50 = load %struct.wspace*, %struct.wspace** %15, align 8
  %51 = getelementptr inbounds %struct.wspace, %struct.wspace* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %23, align 8
  store i32 0, i32* %27, align 4
  br label %53

53:                                               ; preds = %165, %8
  %54 = load i32, i32* %27, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %168

57:                                               ; preds = %53
  %58 = load %struct.rs_control*, %struct.rs_control** %9, align 8
  %59 = load %struct.wspace*, %struct.wspace** %15, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @get_rcw_we(%struct.rs_control* %58, %struct.wspace* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %16, align 4
  switch i32 %64, label %111 [
    i32 129, label %65
    i32 130, label %82
    i32 128, label %100
  ]

65:                                               ; preds = %57
  %66 = load %struct.rs_control*, %struct.rs_control** %9, align 8
  %67 = load i32*, i32** %22, align 8
  %68 = load i32*, i32** %22, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32*, i32** %18, align 8
  %75 = load i32*, i32** %20, align 8
  %76 = call i32 @decode_rs16(%struct.rs_control* %66, i32* %67, i32* %71, i32 %72, i32* null, i32 %73, i32* %74, i32 0, i32* %75)
  store i32 %76, i32* %24, align 4
  %77 = load i32*, i32** %22, align 8
  %78 = load i32, i32* %24, align 4
  %79 = load i32*, i32** %20, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @fix_err(i32* %77, i32 %78, i32* %79, i32* %80)
  br label %112

82:                                               ; preds = %57
  %83 = load %struct.rs_control*, %struct.rs_control** %9, align 8
  %84 = load i32*, i32** %22, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %23, align 8
  %87 = call i32 @compute_syndrome(%struct.rs_control* %83, i32* %84, i32 %85, i32* %86)
  %88 = load %struct.rs_control*, %struct.rs_control** %9, align 8
  %89 = load i32, i32* %17, align 4
  %90 = load i32*, i32** %23, align 8
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %18, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = call i32 @decode_rs16(%struct.rs_control* %88, i32* null, i32* null, i32 %89, i32* %90, i32 %91, i32* %92, i32 0, i32* %93)
  store i32 %94, i32* %24, align 4
  %95 = load i32*, i32** %22, align 8
  %96 = load i32, i32* %24, align 4
  %97 = load i32*, i32** %20, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = call i32 @fix_err(i32* %95, i32 %96, i32* %97, i32* %98)
  br label %112

100:                                              ; preds = %57
  %101 = load %struct.rs_control*, %struct.rs_control** %9, align 8
  %102 = load i32*, i32** %22, align 8
  %103 = load i32*, i32** %22, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32*, i32** %18, align 8
  %110 = call i32 @decode_rs16(%struct.rs_control* %101, i32* %102, i32* %106, i32 %107, i32* null, i32 %108, i32* %109, i32 0, i32* null)
  store i32 %110, i32* %24, align 4
  br label %112

111:                                              ; preds = %57
  br label %165

112:                                              ; preds = %100, %82, %65
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* %25, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %112
  %117 = load %struct.estat*, %struct.estat** %14, align 8
  %118 = getelementptr inbounds %struct.estat, %struct.estat* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %116, %112
  %122 = load i32, i32* %16, align 4
  %123 = icmp ne i32 %122, 128
  br i1 %123, label %124, label %150

124:                                              ; preds = %121
  store i32 0, i32* %26, align 4
  br label %125

125:                                              ; preds = %146, %124
  %126 = load i32, i32* %26, align 4
  %127 = load i32, i32* %24, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %125
  %130 = load i32*, i32** %19, align 8
  %131 = load i32*, i32** %18, align 8
  %132 = load i32, i32* %26, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %130, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 1
  br i1 %139, label %140, label %145

140:                                              ; preds = %129
  %141 = load %struct.estat*, %struct.estat** %14, align 8
  %142 = getelementptr inbounds %struct.estat, %struct.estat* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %140, %129
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %26, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %26, align 4
  br label %125

149:                                              ; preds = %125
  br label %150

150:                                              ; preds = %149, %121
  %151 = load i32*, i32** %22, align 8
  %152 = load i32*, i32** %21, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = call i64 @memcmp(i32* %151, i32* %152, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %150
  %160 = load %struct.estat*, %struct.estat** %14, align 8
  %161 = getelementptr inbounds %struct.estat, %struct.estat* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %159, %150
  br label %165

165:                                              ; preds = %164, %111
  %166 = load i32, i32* %27, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %27, align 4
  br label %53

168:                                              ; preds = %53
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.estat*, %struct.estat** %14, align 8
  %171 = getelementptr inbounds %struct.estat, %struct.estat* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 4
  ret void
}

declare dso_local i32 @get_rcw_we(%struct.rs_control*, %struct.wspace*, i32, i32, i32) #1

declare dso_local i32 @decode_rs16(%struct.rs_control*, i32*, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @fix_err(i32*, i32, i32*, i32*) #1

declare dso_local i32 @compute_syndrome(%struct.rs_control*, i32*, i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
