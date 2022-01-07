; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_bundle_ok.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_bundle_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { i64, i64, i64, i64, i64, %struct.TYPE_7__, %struct.dst_entry*, i32, %struct.TYPE_6__**, i32 }
%struct.TYPE_7__ = type { %struct.dst_entry }
%struct.dst_entry = type { i32, %struct.TYPE_8__*, i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@XFRM_MAX_DEPTH = common dso_local global i32 0, align 4
@DST_XFRM_QUEUE = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@RTAX_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_dst*)* @xfrm_bundle_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_bundle_ok(%struct.xfrm_dst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_dst*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.xfrm_dst*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfrm_dst*, align 8
  store %struct.xfrm_dst* %0, %struct.xfrm_dst** %3, align 8
  %13 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca %struct.xfrm_dst*, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load %struct.xfrm_dst*, %struct.xfrm_dst** %3, align 8
  %18 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.dst_entry* %19, %struct.dst_entry** %6, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %21 = call %struct.dst_entry* @xfrm_dst_path(%struct.dst_entry* %20)
  %22 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %23 = bitcast %struct.dst_entry* %22 to %struct.xfrm_dst*
  %24 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dst_check(%struct.dst_entry* %21, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %30 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %35 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @netif_running(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33, %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %199

40:                                               ; preds = %33, %28
  %41 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %42 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DST_XFRM_QUEUE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %199

48:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %137, %48
  %50 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %51 = bitcast %struct.dst_entry* %50 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %51, %struct.xfrm_dst** %12, align 8
  %52 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %53 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @XFRM_STATE_VALID, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %199

61:                                               ; preds = %49
  %62 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %63 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %66 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %64, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %199

72:                                               ; preds = %61
  %73 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %74 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %72
  %78 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %79 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %82 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %81, i32 0, i32 8
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = call i64 @atomic_read(i32* %86)
  %88 = icmp ne i64 %80, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %199

90:                                               ; preds = %77, %72
  %91 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.xfrm_dst*, %struct.xfrm_dst** %16, i64 %94
  store %struct.xfrm_dst* %91, %struct.xfrm_dst** %95, align 8
  %96 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %97 = call %struct.dst_entry* @xfrm_dst_child(%struct.dst_entry* %96)
  %98 = call i64 @dst_mtu(%struct.dst_entry* %97)
  store i64 %98, i64* %10, align 8
  %99 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %100 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %90
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %108 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %104, %90
  %110 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %111 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %110, i32 0, i32 6
  %112 = load %struct.dst_entry*, %struct.dst_entry** %111, align 8
  %113 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %114 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dst_check(%struct.dst_entry* %112, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %109
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %199

119:                                              ; preds = %109
  %120 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %121 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %120, i32 0, i32 6
  %122 = load %struct.dst_entry*, %struct.dst_entry** %121, align 8
  %123 = call i64 @dst_mtu(%struct.dst_entry* %122)
  store i64 %123, i64* %10, align 8
  %124 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %125 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %124, i32 0, i32 4
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %119
  %130 = load i32, i32* %9, align 4
  store i32 %130, i32* %8, align 4
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.xfrm_dst*, %struct.xfrm_dst** %12, align 8
  %133 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %132, i32 0, i32 4
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %129, %119
  %135 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %136 = call %struct.dst_entry* @xfrm_dst_child(%struct.dst_entry* %135)
  store %struct.dst_entry* %136, %struct.dst_entry** %6, align 8
  br label %137

137:                                              ; preds = %134
  %138 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %139 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %138, i32 0, i32 1
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = icmp ne %struct.TYPE_8__* %140, null
  br i1 %141, label %49, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = call i64 @likely(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %199

150:                                              ; preds = %142
  %151 = load i32, i32* %8, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.xfrm_dst*, %struct.xfrm_dst** %16, i64 %153
  %155 = load %struct.xfrm_dst*, %struct.xfrm_dst** %154, align 8
  store %struct.xfrm_dst* %155, %struct.xfrm_dst** %7, align 8
  %156 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %157 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %10, align 8
  br label %159

159:                                              ; preds = %189, %150
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %8, align 4
  %162 = icmp ne i32 %160, 0
  br i1 %162, label %163, label %198

163:                                              ; preds = %159
  %164 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %165 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %164, i32 0, i32 5
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  store %struct.dst_entry* %166, %struct.dst_entry** %6, align 8
  %167 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %168 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %167, i32 0, i32 1
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = load i64, i64* %10, align 8
  %171 = call i64 @xfrm_state_mtu(%struct.TYPE_8__* %169, i64 %170)
  store i64 %171, i64* %10, align 8
  %172 = load i64, i64* %10, align 8
  %173 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %174 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp sgt i64 %172, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %163
  %178 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %179 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %178, i32 0, i32 4
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %10, align 8
  br label %181

181:                                              ; preds = %177, %163
  %182 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %183 = load i32, i32* @RTAX_MTU, align 4
  %184 = load i64, i64* %10, align 8
  %185 = call i32 @dst_metric_set(%struct.dst_entry* %182, i32 %183, i64 %184)
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %181
  br label %198

189:                                              ; preds = %181
  %190 = load i32, i32* %8, align 4
  %191 = sub nsw i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.xfrm_dst*, %struct.xfrm_dst** %16, i64 %192
  %194 = load %struct.xfrm_dst*, %struct.xfrm_dst** %193, align 8
  store %struct.xfrm_dst* %194, %struct.xfrm_dst** %7, align 8
  %195 = load i64, i64* %10, align 8
  %196 = load %struct.xfrm_dst*, %struct.xfrm_dst** %7, align 8
  %197 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %196, i32 0, i32 3
  store i64 %195, i64* %197, align 8
  br label %159

198:                                              ; preds = %188, %159
  store i32 1, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %199

199:                                              ; preds = %198, %149, %118, %89, %71, %60, %47, %39
  %200 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dst_check(%struct.dst_entry*, i32) #2

declare dso_local %struct.dst_entry* @xfrm_dst_path(%struct.dst_entry*) #2

declare dso_local i32 @netif_running(i64) #2

declare dso_local i64 @atomic_read(i32*) #2

declare dso_local i64 @dst_mtu(%struct.dst_entry*) #2

declare dso_local %struct.dst_entry* @xfrm_dst_child(%struct.dst_entry*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i64 @xfrm_state_mtu(%struct.TYPE_8__*, i64) #2

declare dso_local i32 @dst_metric_set(%struct.dst_entry*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
