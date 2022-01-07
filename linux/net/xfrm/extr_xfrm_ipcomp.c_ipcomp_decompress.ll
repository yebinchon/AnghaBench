; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_ipcomp.c_ipcomp_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.ipcomp_data* }
%struct.ipcomp_data = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32* }
%struct.crypto_comp = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i64, i32* }

@IPCOMP_SCRATCH_SIZE = common dso_local global i32 0, align 4
@ipcomp_scratches = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*, %struct.sk_buff*)* @ipcomp_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipcomp_decompress(%struct.xfrm_state* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipcomp_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.crypto_comp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.page*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %17 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %16, i32 0, i32 0
  %18 = load %struct.ipcomp_data*, %struct.ipcomp_data** %17, align 8
  store %struct.ipcomp_data* %18, %struct.ipcomp_data** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @IPCOMP_SCRATCH_SIZE, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %8, align 8
  %26 = call i32 (...) @get_cpu()
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @ipcomp_scratches, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i8** @per_cpu_ptr(i32 %27, i32 %28)
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %10, align 8
  %32 = load %struct.ipcomp_data*, %struct.ipcomp_data** %5, align 8
  %33 = getelementptr inbounds %struct.ipcomp_data, %struct.ipcomp_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i8** @per_cpu_ptr(i32 %34, i32 %35)
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.crypto_comp*
  store %struct.crypto_comp* %38, %struct.crypto_comp** %11, align 8
  %39 = load %struct.crypto_comp*, %struct.crypto_comp** %11, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @crypto_comp_decompress(%struct.crypto_comp* %39, i32* %40, i32 %41, i32* %42, i32* %7)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %2
  br label %160

47:                                               ; preds = %2
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 4
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %12, align 4
  br label %160

57:                                               ; preds = %47
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = call i32 @skb_tailroom(%struct.sk_buff* %62)
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @skb_tailroom(%struct.sk_buff* %66)
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %65, %57
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @__skb_put(%struct.sk_buff* %69, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %75, i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %128, %68
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %10, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %159

88:                                               ; preds = %79
  %89 = load i32, i32* @EMSGSIZE, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %12, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %96 = icmp sge i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 @WARN_ON(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %160

101:                                              ; preds = %88
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %102)
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  store i32* %110, i32** %14, align 8
  %111 = load i32, i32* @GFP_ATOMIC, align 4
  %112 = call %struct.page* @alloc_page(i32 %111)
  store %struct.page* %112, %struct.page** %15, align 8
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %12, align 4
  %115 = load %struct.page*, %struct.page** %15, align 8
  %116 = icmp ne %struct.page* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %101
  br label %160

118:                                              ; preds = %101
  %119 = load i32*, i32** %14, align 8
  %120 = load %struct.page*, %struct.page** %15, align 8
  %121 = call i32 @__skb_frag_set_page(i32* %119, %struct.page* %120)
  %122 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %126, %118
  %129 = load i32*, i32** %14, align 8
  %130 = call i32 @skb_frag_off_set(i32* %129, i32 0)
  %131 = load i32*, i32** %14, align 8
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @skb_frag_size_set(i32* %131, i32 %132)
  %134 = load i32*, i32** %14, align 8
  %135 = call i32 @skb_frag_address(i32* %134)
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @memcpy(i32 %135, i32* %136, i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %154)
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  store i64 %158, i64* %156, align 8
  br label %79

159:                                              ; preds = %79
  store i32 0, i32* %12, align 4
  br label %160

160:                                              ; preds = %159, %117, %100, %54, %46
  %161 = call i32 (...) @put_cpu()
  %162 = load i32, i32* %12, align 4
  ret i32 %162
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i8** @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @crypto_comp_decompress(%struct.crypto_comp*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @__skb_frag_set_page(i32*, %struct.page*) #1

declare dso_local i32 @skb_frag_off_set(i32*, i32) #1

declare dso_local i32 @skb_frag_size_set(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_frag_address(i32*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
