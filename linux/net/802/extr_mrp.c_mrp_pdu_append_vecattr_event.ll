; ModuleID = '/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_pdu_append_vecattr_event.c'
source_filename = "/home/carl/AnghaBench/linux/net/802/extr_mrp.c_mrp_pdu_append_vecattr_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrp_applicant = type { i32 }
%struct.mrp_attr = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64 }

@__MRP_VECATTR_EVENT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mrp_applicant*, %struct.mrp_attr*, i32)* @mrp_pdu_append_vecattr_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrp_pdu_append_vecattr_event(%struct.mrp_applicant* %0, %struct.mrp_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mrp_applicant*, align 8
  %6 = alloca %struct.mrp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.mrp_applicant* %0, %struct.mrp_applicant** %5, align 8
  store %struct.mrp_attr* %1, %struct.mrp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %12

12:                                               ; preds = %186, %3
  %13 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %14 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %19 = call i32 @mrp_pdu_init(%struct.mrp_applicant* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %4, align 4
  br label %189

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %12
  %26 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %27 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_6__* @mrp_cb(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %59

33:                                               ; preds = %25
  %34 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %35 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_6__* @mrp_cb(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mrp_attr*, %struct.mrp_attr** %6, align 8
  %43 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %59, label %46

46:                                               ; preds = %33
  %47 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %48 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call %struct.TYPE_6__* @mrp_cb(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mrp_attr*, %struct.mrp_attr** %6, align 8
  %56 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %46, %33, %25
  %60 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %61 = load %struct.mrp_attr*, %struct.mrp_attr** %6, align 8
  %62 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mrp_attr*, %struct.mrp_attr** %6, align 8
  %65 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @mrp_pdu_append_msg_hdr(%struct.mrp_applicant* %60, i64 %63, i64 %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %186

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %73 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call %struct.TYPE_6__* @mrp_cb(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = icmp ne %struct.TYPE_5__* %77, null
  br i1 %78, label %79, label %94

79:                                               ; preds = %71
  %80 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %81 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_6__* @mrp_cb(i32 %82)
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.mrp_attr*, %struct.mrp_attr** %6, align 8
  %87 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.mrp_attr*, %struct.mrp_attr** %6, align 8
  %90 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @memcmp(i32 %85, i32 %88, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %79, %71
  %95 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %96 = load %struct.mrp_attr*, %struct.mrp_attr** %6, align 8
  %97 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.mrp_attr*, %struct.mrp_attr** %6, align 8
  %100 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @mrp_pdu_append_vecattr_hdr(%struct.mrp_applicant* %95, i32 %98, i64 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %186

105:                                              ; preds = %94
  br label %106

106:                                              ; preds = %105, %79
  %107 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %108 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.TYPE_6__* @mrp_cb(i32 %109)
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = call i32 @get_unaligned(i32* %113)
  %115 = call i32 @be16_to_cpu(i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = srem i32 %116, 3
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %106
  %121 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %122 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @skb_tailroom(i32 %123)
  %125 = sext i32 %124 to i64
  %126 = icmp ult i64 %125, 4
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %186

128:                                              ; preds = %120
  %129 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %130 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32* @__skb_put(i32 %131, i32 4)
  store i32* %132, i32** %10, align 8
  br label %141

133:                                              ; preds = %106
  %134 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %135 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @skb_tail_pointer(i32 %136)
  %138 = sext i32 %137 to i64
  %139 = sub i64 %138, 4
  %140 = inttoptr i64 %139 to i32*
  store i32* %140, i32** %10, align 8
  br label %141

141:                                              ; preds = %133, %128
  %142 = load i32, i32* %9, align 4
  switch i32 %142, label %162 [
    i32 0, label %143
    i32 1, label %150
    i32 2, label %157
  ]

143:                                              ; preds = %141
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @__MRP_VECATTR_EVENT_MAX, align 4
  %146 = load i32, i32* @__MRP_VECATTR_EVENT_MAX, align 4
  %147 = mul nsw i32 %145, %146
  %148 = mul i32 %144, %147
  %149 = load i32*, i32** %10, align 8
  store i32 %148, i32* %149, align 4
  br label %164

150:                                              ; preds = %141
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @__MRP_VECATTR_EVENT_MAX, align 4
  %153 = mul i32 %151, %152
  %154 = load i32*, i32** %10, align 8
  %155 = load i32, i32* %154, align 4
  %156 = add i32 %155, %153
  store i32 %156, i32* %154, align 4
  br label %164

157:                                              ; preds = %141
  %158 = load i32, i32* %7, align 4
  %159 = load i32*, i32** %10, align 8
  %160 = load i32, i32* %159, align 4
  %161 = add i32 %160, %158
  store i32 %161, i32* %159, align 4
  br label %164

162:                                              ; preds = %141
  %163 = call i32 @WARN_ON(i32 1)
  br label %164

164:                                              ; preds = %162, %157, %150, %143
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %8, align 4
  %167 = call i32 @cpu_to_be16(i32 %166)
  %168 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %169 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call %struct.TYPE_6__* @mrp_cb(i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = call i32 @put_unaligned(i32 %167, i32* %174)
  %176 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %177 = getelementptr inbounds %struct.mrp_applicant, %struct.mrp_applicant* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call %struct.TYPE_6__* @mrp_cb(i32 %178)
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.mrp_attr*, %struct.mrp_attr** %6, align 8
  %183 = getelementptr inbounds %struct.mrp_attr, %struct.mrp_attr* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @mrp_attrvalue_inc(i32 %181, i64 %184)
  store i32 0, i32* %4, align 4
  br label %189

186:                                              ; preds = %127, %104, %69
  %187 = load %struct.mrp_applicant*, %struct.mrp_applicant** %5, align 8
  %188 = call i32 @mrp_pdu_queue(%struct.mrp_applicant* %187)
  br label %12

189:                                              ; preds = %164, %22
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @mrp_pdu_init(%struct.mrp_applicant*) #1

declare dso_local %struct.TYPE_6__* @mrp_cb(i32) #1

declare dso_local i64 @mrp_pdu_append_msg_hdr(%struct.mrp_applicant*, i64, i64) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i64 @mrp_pdu_append_vecattr_hdr(%struct.mrp_applicant*, i32, i64) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @skb_tailroom(i32) #1

declare dso_local i32* @__skb_put(i32, i32) #1

declare dso_local i32 @skb_tail_pointer(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @put_unaligned(i32, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @mrp_attrvalue_inc(i32, i64) #1

declare dso_local i32 @mrp_pdu_queue(%struct.mrp_applicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
