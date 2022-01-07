; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_finalize_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_pktgen.c_pktgen_finalize_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktgen_dev = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.timespec64 = type { i32, i32 }
%struct.pktgen_hdr = type { i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32* }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@F_NODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@PKTGEN_MAGIC = common dso_local global i32 0, align 4
@F_NO_TIMESTAMP = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktgen_dev*, %struct.sk_buff*, i32)* @pktgen_finalize_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pktgen_finalize_skb(%struct.pktgen_dev* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.pktgen_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec64, align 4
  %8 = alloca %struct.pktgen_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pktgen_dev* %0, %struct.pktgen_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call %struct.pktgen_hdr* @skb_put(%struct.sk_buff* %14, i32 32)
  store %struct.pktgen_hdr* %15, %struct.pktgen_hdr** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 32
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %21 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @skb_put_zero(%struct.sk_buff* %25, i32 %26)
  br label %208

28:                                               ; preds = %3
  %29 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @MAX_SKB_FRAGS, align 4
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %35, %28
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @skb_put_zero(%struct.sk_buff* %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @PAGE_SIZE, align 4
  %51 = mul nsw i32 %49, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %45, %37
  store i32 0, i32* %10, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sdiv i32 %53, %54
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sdiv i32 %59, %60
  br label %64

62:                                               ; preds = %52
  %63 = load i32, i32* @PAGE_SIZE, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %61, %58 ], [ %63, %62 ]
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %160, %64
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %207

69:                                               ; preds = %66
  %70 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %109

78:                                               ; preds = %69
  %79 = call i32 (...) @numa_node_id()
  store i32 %79, i32* %13, align 4
  %80 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %81 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %86 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @F_NODE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %91, %84, %78
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = load i32, i32* @__GFP_ZERO, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @alloc_pages_node(i32 %96, i32 %99, i32 0)
  %101 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %102 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %101, i32 0, i32 4
  store i32 %100, i32* %102, align 4
  %103 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %104 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %95
  br label %207

108:                                              ; preds = %95
  br label %109

109:                                              ; preds = %108, %69
  %110 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %111 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @get_page(i32 %112)
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %117 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @skb_frag_set_page(%struct.sk_buff* %114, i32 %115, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %120)
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = call i32 @skb_frag_off_set(i32* %126, i32 0)
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %129, 1
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %150

132:                                              ; preds = %109
  %133 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %134 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %133)
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @PAGE_SIZE, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %132
  %144 = load i32, i32* %6, align 4
  br label %147

145:                                              ; preds = %132
  %146 = load i32, i32* @PAGE_SIZE, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  %149 = call i32 @skb_frag_size_set(i32* %139, i32 %148)
  br label %160

150:                                              ; preds = %109
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %151)
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %12, align 4
  %159 = call i32 @skb_frag_size_set(i32* %157, i32 %158)
  br label %160

160:                                              ; preds = %150, %147
  %161 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %162 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %161)
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = call i64 @skb_frag_size(i32* %167)
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = sub nsw i64 %170, %168
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %6, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %173)
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = call i64 @skb_frag_size(i32* %179)
  %181 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %180
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  %187 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %188 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %187)
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = call i64 @skb_frag_size(i32* %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %194
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 4
  %201 = load i32, i32* %10, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %10, align 4
  %203 = load i32, i32* %10, align 4
  %204 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %205 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %204)
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  store i32 %203, i32* %206, align 8
  br label %66

207:                                              ; preds = %107, %66
  br label %208

208:                                              ; preds = %207, %24
  %209 = load i32, i32* @PKTGEN_MAGIC, align 4
  %210 = call i8* @htonl(i32 %209)
  %211 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %8, align 8
  %212 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %211, i32 0, i32 3
  store i8* %210, i8** %212, align 8
  %213 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %214 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i8* @htonl(i32 %215)
  %217 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %8, align 8
  %218 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %217, i32 0, i32 2
  store i8* %216, i8** %218, align 8
  %219 = load %struct.pktgen_dev*, %struct.pktgen_dev** %4, align 8
  %220 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @F_NO_TIMESTAMP, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %208
  %226 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %8, align 8
  %227 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %226, i32 0, i32 1
  store i8* null, i8** %227, align 8
  %228 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %8, align 8
  %229 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %228, i32 0, i32 0
  store i8* null, i8** %229, align 8
  br label %244

230:                                              ; preds = %208
  %231 = call i32 @ktime_get_real_ts64(%struct.timespec64* %7)
  %232 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i8* @htonl(i32 %233)
  %235 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %8, align 8
  %236 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  %237 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @NSEC_PER_USEC, align 4
  %240 = sdiv i32 %238, %239
  %241 = call i8* @htonl(i32 %240)
  %242 = load %struct.pktgen_hdr*, %struct.pktgen_hdr** %8, align 8
  %243 = getelementptr inbounds %struct.pktgen_hdr, %struct.pktgen_hdr* %242, i32 0, i32 0
  store i8* %241, i8** %243, align 8
  br label %244

244:                                              ; preds = %230, %225
  ret void
}

declare dso_local %struct.pktgen_hdr* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @alloc_pages_node(i32, i32, i32) #1

declare dso_local i32 @get_page(i32) #1

declare dso_local i32 @skb_frag_set_page(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_frag_off_set(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size_set(i32*, i32) #1

declare dso_local i64 @skb_frag_size(i32*) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @ktime_get_real_ts64(%struct.timespec64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
