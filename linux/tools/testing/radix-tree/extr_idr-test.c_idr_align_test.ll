; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_align_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/radix-tree/extr_idr-test.c_idr_align_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr = type { i32 }

@__const.idr_align_test.name = private unnamed_addr constant [15 x i8] c"Motorola 68000\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idr*)* @idr_align_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idr_align_test(%struct.idr* %0) #0 {
  %2 = alloca %struct.idr*, align 8
  %3 = alloca [15 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.idr* %0, %struct.idr** %2, align 8
  %7 = bitcast [15 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([15 x i8], [15 x i8]* @__const.idr_align_test.name, i32 0, i32 0), i64 15, i1 false)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 9
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load %struct.idr*, %struct.idr** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %14
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @idr_alloc(%struct.idr* %12, i8* %15, i32 0, i32 0, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.idr*, %struct.idr** %2, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @idr_for_each_entry(%struct.idr* %22, i8* %23, i32 %24)
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.idr*, %struct.idr** %2, align 8
  %31 = call i32 @idr_destroy(%struct.idr* %30)
  store i32 1, i32* %4, align 4
  br label %32

32:                                               ; preds = %51, %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load %struct.idr*, %struct.idr** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %38
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i32 @idr_alloc(%struct.idr* %36, i8* %39, i32 0, i32 0, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp ne i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.idr*, %struct.idr** %2, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @idr_for_each_entry(%struct.idr* %47, i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %32

54:                                               ; preds = %32
  %55 = load %struct.idr*, %struct.idr** %2, align 8
  %56 = call i32 @idr_destroy(%struct.idr* %55)
  store i32 2, i32* %4, align 4
  br label %57

57:                                               ; preds = %76, %54
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 11
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load %struct.idr*, %struct.idr** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %63
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32 @idr_alloc(%struct.idr* %61, i8* %64, i32 0, i32 0, i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = sub nsw i32 %67, 2
  %69 = icmp ne i32 %66, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUG_ON(i32 %70)
  %72 = load %struct.idr*, %struct.idr** %2, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @idr_for_each_entry(%struct.idr* %72, i8* %73, i32 %74)
  br label %76

76:                                               ; preds = %60
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load %struct.idr*, %struct.idr** %2, align 8
  %81 = call i32 @idr_destroy(%struct.idr* %80)
  store i32 3, i32* %4, align 4
  br label %82

82:                                               ; preds = %101, %79
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %83, 12
  br i1 %84, label %85, label %104

85:                                               ; preds = %82
  %86 = load %struct.idr*, %struct.idr** %2, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %88
  %90 = load i32, i32* @GFP_KERNEL, align 4
  %91 = call i32 @idr_alloc(%struct.idr* %86, i8* %89, i32 0, i32 0, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = sub nsw i32 %92, 3
  %94 = icmp ne i32 %91, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUG_ON(i32 %95)
  %97 = load %struct.idr*, %struct.idr** %2, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @idr_for_each_entry(%struct.idr* %97, i8* %98, i32 %99)
  br label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %82

104:                                              ; preds = %82
  %105 = load %struct.idr*, %struct.idr** %2, align 8
  %106 = call i32 @idr_destroy(%struct.idr* %105)
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %148, %104
  %108 = load i32, i32* %4, align 4
  %109 = icmp slt i32 %108, 8
  br i1 %109, label %110, label %151

110:                                              ; preds = %107
  %111 = load %struct.idr*, %struct.idr** %2, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %113
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i32 @idr_alloc(%struct.idr* %111, i8* %114, i32 0, i32 0, i32 %115)
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i32 @BUG_ON(i32 %118)
  %120 = load %struct.idr*, %struct.idr** %2, align 8
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %123
  %125 = load i32, i32* @GFP_KERNEL, align 4
  %126 = call i32 @idr_alloc(%struct.idr* %120, i8* %124, i32 0, i32 0, i32 %125)
  %127 = icmp ne i32 %126, 1
  %128 = zext i1 %127 to i32
  %129 = call i32 @BUG_ON(i32 %128)
  %130 = load %struct.idr*, %struct.idr** %2, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @idr_for_each_entry(%struct.idr* %130, i8* %131, i32 %132)
  %134 = load %struct.idr*, %struct.idr** %2, align 8
  %135 = call i32 @idr_remove(%struct.idr* %134, i32 1)
  %136 = load %struct.idr*, %struct.idr** %2, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @idr_for_each_entry(%struct.idr* %136, i8* %137, i32 %138)
  %140 = load %struct.idr*, %struct.idr** %2, align 8
  %141 = call i32 @idr_remove(%struct.idr* %140, i32 0)
  %142 = load %struct.idr*, %struct.idr** %2, align 8
  %143 = call i32 @idr_is_empty(%struct.idr* %142)
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i32 @BUG_ON(i32 %146)
  br label %148

148:                                              ; preds = %110
  %149 = load i32, i32* %4, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %107

151:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %185, %151
  %153 = load i32, i32* %4, align 4
  %154 = icmp slt i32 %153, 8
  br i1 %154, label %155, label %188

155:                                              ; preds = %152
  %156 = load %struct.idr*, %struct.idr** %2, align 8
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call i32 @idr_alloc(%struct.idr* %156, i8* null, i32 0, i32 0, i32 %157)
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i32
  %161 = call i32 @BUG_ON(i32 %160)
  %162 = load %struct.idr*, %struct.idr** %2, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @idr_for_each_entry(%struct.idr* %162, i8* %163, i32 %164)
  %166 = load %struct.idr*, %struct.idr** %2, align 8
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %168
  %170 = call i32 @idr_replace(%struct.idr* %166, i8* %169, i32 0)
  %171 = load %struct.idr*, %struct.idr** %2, align 8
  %172 = load i8*, i8** %6, align 8
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @idr_for_each_entry(%struct.idr* %171, i8* %172, i32 %173)
  %175 = load %struct.idr*, %struct.idr** %2, align 8
  %176 = call i8* @idr_find(%struct.idr* %175, i32 0)
  %177 = load i32, i32* %4, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %178
  %180 = icmp ne i8* %176, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @BUG_ON(i32 %181)
  %183 = load %struct.idr*, %struct.idr** %2, align 8
  %184 = call i32 @idr_remove(%struct.idr* %183, i32 0)
  br label %185

185:                                              ; preds = %155
  %186 = load i32, i32* %4, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %4, align 4
  br label %152

188:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %226, %188
  %190 = load i32, i32* %4, align 4
  %191 = icmp slt i32 %190, 8
  br i1 %191, label %192, label %229

192:                                              ; preds = %189
  %193 = load %struct.idr*, %struct.idr** %2, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %195
  %197 = load i32, i32* @GFP_KERNEL, align 4
  %198 = call i32 @idr_alloc(%struct.idr* %193, i8* %196, i32 0, i32 0, i32 %197)
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i32
  %201 = call i32 @BUG_ON(i32 %200)
  %202 = load %struct.idr*, %struct.idr** %2, align 8
  %203 = load i32, i32* @GFP_KERNEL, align 4
  %204 = call i32 @idr_alloc(%struct.idr* %202, i8* null, i32 0, i32 0, i32 %203)
  %205 = icmp ne i32 %204, 1
  %206 = zext i1 %205 to i32
  %207 = call i32 @BUG_ON(i32 %206)
  %208 = load %struct.idr*, %struct.idr** %2, align 8
  %209 = call i32 @idr_remove(%struct.idr* %208, i32 1)
  %210 = load %struct.idr*, %struct.idr** %2, align 8
  %211 = load i8*, i8** %6, align 8
  %212 = load i32, i32* %5, align 4
  %213 = call i32 @idr_for_each_entry(%struct.idr* %210, i8* %211, i32 %212)
  %214 = load %struct.idr*, %struct.idr** %2, align 8
  %215 = load i32, i32* %4, align 4
  %216 = add nsw i32 %215, 1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [15 x i8], [15 x i8]* %3, i64 0, i64 %217
  %219 = call i32 @idr_replace(%struct.idr* %214, i8* %218, i32 0)
  %220 = load %struct.idr*, %struct.idr** %2, align 8
  %221 = load i8*, i8** %6, align 8
  %222 = load i32, i32* %5, align 4
  %223 = call i32 @idr_for_each_entry(%struct.idr* %220, i8* %221, i32 %222)
  %224 = load %struct.idr*, %struct.idr** %2, align 8
  %225 = call i32 @idr_remove(%struct.idr* %224, i32 0)
  br label %226

226:                                              ; preds = %192
  %227 = load i32, i32* %4, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %4, align 4
  br label %189

229:                                              ; preds = %189
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @idr_alloc(%struct.idr*, i8*, i32, i32, i32) #2

declare dso_local i32 @idr_for_each_entry(%struct.idr*, i8*, i32) #2

declare dso_local i32 @idr_destroy(%struct.idr*) #2

declare dso_local i32 @idr_remove(%struct.idr*, i32) #2

declare dso_local i32 @idr_is_empty(%struct.idr*) #2

declare dso_local i32 @idr_replace(%struct.idr*, i8*, i32) #2

declare dso_local i8* @idr_find(%struct.idr*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
