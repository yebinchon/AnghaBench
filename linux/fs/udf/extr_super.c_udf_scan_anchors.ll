; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_scan_anchors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_super.c_udf_scan_anchors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.udf_sb_info = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*, %struct.kernel_lb_addr*)* @udf_scan_anchors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_scan_anchors(%struct.super_block* %0, i32* %1, %struct.kernel_lb_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.kernel_lb_addr*, align 8
  %8 = alloca [6 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.udf_sb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.kernel_lb_addr* %2, %struct.kernel_lb_addr** %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %13)
  store %struct.udf_sb_info* %14, %struct.udf_sb_info** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %16 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %22 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %25 = call i32 @udf_check_anchor_block(%struct.super_block* %20, i32 %23, %struct.kernel_lb_addr* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %4, align 4
  br label %196

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.super_block*, %struct.super_block** %5, align 8
  %35 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %36 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 256
  %39 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %40 = call i32 @udf_check_anchor_block(%struct.super_block* %34, i32 %38, %struct.kernel_lb_addr* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %4, align 4
  br label %196

47:                                               ; preds = %33
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 1
  br i1 %56, label %57, label %65

57:                                               ; preds = %47
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %63
  store i32 %60, i32* %64, align 4
  br label %65

65:                                               ; preds = %57, %47
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %71
  store i32 %68, i32* %72, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %74, 2
  br i1 %75, label %76, label %84

76:                                               ; preds = %65
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 2
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %76, %65
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %85, align 4
  %87 = icmp sge i32 %86, 150
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 150
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %94
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %88, %84
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 152
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %102, 152
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %106
  store i32 %103, i32* %107, align 4
  br label %108

108:                                              ; preds = %100, %96
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %185, %108
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %188

113:                                              ; preds = %109
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.super_block*, %struct.super_block** %5, align 8
  %119 = getelementptr inbounds %struct.super_block, %struct.super_block* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @i_size_read(i32 %122)
  %124 = load %struct.super_block*, %struct.super_block** %5, align 8
  %125 = getelementptr inbounds %struct.super_block, %struct.super_block* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = ashr i32 %123, %126
  %128 = icmp sge i32 %117, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %113
  br label %185

130:                                              ; preds = %113
  %131 = load %struct.super_block*, %struct.super_block** %5, align 8
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %137 = call i32 @udf_check_anchor_block(%struct.super_block* %131, i32 %135, %struct.kernel_lb_addr* %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @EAGAIN, align 4
  %140 = sub nsw i32 0, %139
  %141 = icmp ne i32 %138, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %130
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %6, align 8
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %145, %142
  %152 = load i32, i32* %12, align 4
  store i32 %152, i32* %4, align 4
  br label %196

153:                                              ; preds = %130
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, 256
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %185

160:                                              ; preds = %153
  %161 = load %struct.super_block*, %struct.super_block** %5, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, 256
  %167 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %168 = call i32 @udf_check_anchor_block(%struct.super_block* %161, i32 %166, %struct.kernel_lb_addr* %167)
  store i32 %168, i32* %12, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @EAGAIN, align 4
  %171 = sub nsw i32 0, %170
  %172 = icmp ne i32 %169, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %160
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %182, label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %6, align 8
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %176, %173
  %183 = load i32, i32* %12, align 4
  store i32 %183, i32* %4, align 4
  br label %196

184:                                              ; preds = %160
  br label %185

185:                                              ; preds = %184, %159, %129
  %186 = load i32, i32* %9, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %9, align 4
  br label %109

188:                                              ; preds = %109
  %189 = load %struct.super_block*, %struct.super_block** %5, align 8
  %190 = load %struct.udf_sb_info*, %struct.udf_sb_info** %10, align 8
  %191 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 512
  %194 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %7, align 8
  %195 = call i32 @udf_check_anchor_block(%struct.super_block* %189, i32 %193, %struct.kernel_lb_addr* %194)
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %188, %182, %151, %45, %30
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @udf_check_anchor_block(%struct.super_block*, i32, %struct.kernel_lb_addr*) #1

declare dso_local i32 @i_size_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
