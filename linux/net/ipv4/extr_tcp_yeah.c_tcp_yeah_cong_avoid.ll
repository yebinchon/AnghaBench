; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_yeah.c_tcp_yeah_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_yeah.c_tcp_yeah_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i8*, i32, i32, i32, i32 }
%struct.yeah = type { i32, i32, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@TCP_SCALABLE_AI_CNT = common dso_local global i32 0, align 4
@TCP_YEAH_ALPHA = common dso_local global i32 0, align 4
@TCP_YEAH_PHY = common dso_local global i32 0, align 4
@TCP_YEAH_GAMMA = common dso_local global i32 0, align 4
@TCP_YEAH_EPSILON = common dso_local global i32 0, align 4
@TCP_YEAH_ZETA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @tcp_yeah_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_yeah_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.yeah*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %13)
  store %struct.tcp_sock* %14, %struct.tcp_sock** %7, align 8
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call %struct.yeah* @inet_csk_ca(%struct.sock* %15)
  store %struct.yeah* %16, %struct.yeah** %8, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @tcp_is_cwnd_limited(%struct.sock* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %250

21:                                               ; preds = %3
  %22 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %23 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @tcp_slow_start(%struct.tcp_sock* %26, i32 %27)
  br label %78

29:                                               ; preds = %21
  %30 = load %struct.yeah*, %struct.yeah** %8, align 8
  %31 = getelementptr inbounds %struct.yeah, %struct.yeah* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %71, label %34

34:                                               ; preds = %29
  %35 = load %struct.yeah*, %struct.yeah** %8, align 8
  %36 = getelementptr inbounds %struct.yeah, %struct.yeah* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %39 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = sext i32 %37 to i64
  %42 = getelementptr i8, i8* %40, i64 %41
  store i8* %42, i8** %39, align 8
  %43 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %44 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TCP_SCALABLE_AI_CNT, align 4
  %50 = call i8* @min(i32 %48, i32 %49)
  %51 = icmp ugt i8* %45, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %34
  %53 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %54 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %52
  %66 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %67 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %66, i32 0, i32 0
  store i8* null, i8** %67, align 8
  br label %68

68:                                               ; preds = %65, %34
  %69 = load %struct.yeah*, %struct.yeah** %8, align 8
  %70 = getelementptr inbounds %struct.yeah, %struct.yeah* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %77

71:                                               ; preds = %29
  %72 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %73 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %74 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @tcp_cong_avoid_ai(%struct.tcp_sock* %72, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %71, %68
  br label %78

78:                                               ; preds = %77, %25
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.yeah*, %struct.yeah** %8, align 8
  %81 = getelementptr inbounds %struct.yeah, %struct.yeah* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @after(i32 %79, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %250

86:                                               ; preds = %78
  %87 = load %struct.yeah*, %struct.yeah** %8, align 8
  %88 = getelementptr inbounds %struct.yeah, %struct.yeah* %87, i32 0, i32 5
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 2
  br i1 %91, label %92, label %224

92:                                               ; preds = %86
  %93 = load %struct.yeah*, %struct.yeah** %8, align 8
  %94 = getelementptr inbounds %struct.yeah, %struct.yeah* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %9, align 4
  %97 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %98 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.yeah*, %struct.yeah** %8, align 8
  %102 = getelementptr inbounds %struct.yeah, %struct.yeah* %101, i32 0, i32 5
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %100, %104
  %106 = load i32, i32* %11, align 4
  %107 = mul nsw i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @do_div(i32 %108, i32 %109)
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @TCP_YEAH_ALPHA, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %129, label %115

115:                                              ; preds = %92
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.yeah*, %struct.yeah** %8, align 8
  %118 = getelementptr inbounds %struct.yeah, %struct.yeah* %117, i32 0, i32 5
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %116, %120
  %122 = load %struct.yeah*, %struct.yeah** %8, align 8
  %123 = getelementptr inbounds %struct.yeah, %struct.yeah* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @TCP_YEAH_PHY, align 4
  %127 = sdiv i32 %125, %126
  %128 = icmp sgt i32 %121, %127
  br i1 %128, label %129, label %202

129:                                              ; preds = %115, %92
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @TCP_YEAH_ALPHA, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %174

133:                                              ; preds = %129
  %134 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %135 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = load %struct.yeah*, %struct.yeah** %8, align 8
  %139 = getelementptr inbounds %struct.yeah, %struct.yeah* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %137, %140
  br i1 %141, label %142, label %174

142:                                              ; preds = %133
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* @TCP_YEAH_GAMMA, align 4
  %145 = sdiv i32 %143, %144
  %146 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %147 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @TCP_YEAH_EPSILON, align 4
  %150 = ashr i32 %148, %149
  %151 = call i8* @min(i32 %145, i32 %150)
  %152 = ptrtoint i8* %151 to i32
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %155 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sub nsw i32 %156, %153
  store i32 %157, i32* %155, align 8
  %158 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %159 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.yeah*, %struct.yeah** %8, align 8
  %162 = getelementptr inbounds %struct.yeah, %struct.yeah* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = call i8* @max(i32 %160, i32 %164)
  %166 = ptrtoint i8* %165 to i32
  %167 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %168 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %167, i32 0, i32 1
  store i32 %166, i32* %168, align 8
  %169 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %170 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %173 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  br label %174

174:                                              ; preds = %142, %133, %129
  %175 = load %struct.yeah*, %struct.yeah** %8, align 8
  %176 = getelementptr inbounds %struct.yeah, %struct.yeah* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp sle i64 %177, 2
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %181 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = ashr i32 %182, 1
  %184 = call i8* @max(i32 %183, i32 2)
  %185 = ptrtoint i8* %184 to i64
  %186 = load %struct.yeah*, %struct.yeah** %8, align 8
  %187 = getelementptr inbounds %struct.yeah, %struct.yeah* %186, i32 0, i32 2
  store i64 %185, i64* %187, align 8
  br label %193

188:                                              ; preds = %174
  %189 = load %struct.yeah*, %struct.yeah** %8, align 8
  %190 = getelementptr inbounds %struct.yeah, %struct.yeah* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 1
  store i64 %192, i64* %190, align 8
  br label %193

193:                                              ; preds = %188, %179
  %194 = load %struct.yeah*, %struct.yeah** %8, align 8
  %195 = getelementptr inbounds %struct.yeah, %struct.yeah* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  %198 = call i8* @min(i32 %197, i32 16777215)
  %199 = ptrtoint i8* %198 to i32
  %200 = load %struct.yeah*, %struct.yeah** %8, align 8
  %201 = getelementptr inbounds %struct.yeah, %struct.yeah* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  br label %220

202:                                              ; preds = %115
  %203 = load %struct.yeah*, %struct.yeah** %8, align 8
  %204 = getelementptr inbounds %struct.yeah, %struct.yeah* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = load %struct.yeah*, %struct.yeah** %8, align 8
  %208 = getelementptr inbounds %struct.yeah, %struct.yeah* %207, i32 0, i32 3
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @TCP_YEAH_ZETA, align 8
  %211 = icmp sgt i64 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %202
  %213 = load %struct.yeah*, %struct.yeah** %8, align 8
  %214 = getelementptr inbounds %struct.yeah, %struct.yeah* %213, i32 0, i32 2
  store i64 2, i64* %214, align 8
  %215 = load %struct.yeah*, %struct.yeah** %8, align 8
  %216 = getelementptr inbounds %struct.yeah, %struct.yeah* %215, i32 0, i32 3
  store i64 0, i64* %216, align 8
  br label %217

217:                                              ; preds = %212, %202
  %218 = load %struct.yeah*, %struct.yeah** %8, align 8
  %219 = getelementptr inbounds %struct.yeah, %struct.yeah* %218, i32 0, i32 0
  store i32 0, i32* %219, align 8
  br label %220

220:                                              ; preds = %217, %193
  %221 = load i32, i32* %10, align 4
  %222 = load %struct.yeah*, %struct.yeah** %8, align 8
  %223 = getelementptr inbounds %struct.yeah, %struct.yeah* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  br label %224

224:                                              ; preds = %220, %86
  %225 = load %struct.yeah*, %struct.yeah** %8, align 8
  %226 = getelementptr inbounds %struct.yeah, %struct.yeah* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.yeah*, %struct.yeah** %8, align 8
  %230 = getelementptr inbounds %struct.yeah, %struct.yeah* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 5
  store i32 %228, i32* %231, align 4
  %232 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %233 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.yeah*, %struct.yeah** %8, align 8
  %236 = getelementptr inbounds %struct.yeah, %struct.yeah* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 4
  store i32 %234, i32* %237, align 4
  %238 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %239 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.yeah*, %struct.yeah** %8, align 8
  %242 = getelementptr inbounds %struct.yeah, %struct.yeah* %241, i32 0, i32 5
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 3
  store i32 %240, i32* %243, align 4
  %244 = load %struct.yeah*, %struct.yeah** %8, align 8
  %245 = getelementptr inbounds %struct.yeah, %struct.yeah* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 0
  store i32 0, i32* %246, align 4
  %247 = load %struct.yeah*, %struct.yeah** %8, align 8
  %248 = getelementptr inbounds %struct.yeah, %struct.yeah* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 1
  store i32 2147483647, i32* %249, align 4
  br label %250

250:                                              ; preds = %20, %224, %78
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.yeah* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*) #1

declare dso_local i64 @tcp_in_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @tcp_cong_avoid_ai(%struct.tcp_sock*, i32, i32) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
