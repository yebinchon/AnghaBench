; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_dump_esp_combs.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_dump_esp_combs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_tmpl = type { i32 }
%struct.sadb_prop = type { i32, i32, %struct.sadb_comb*, i32 }
%struct.sadb_comb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SADB_EXT_PROPOSAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.xfrm_tmpl*)* @dump_esp_combs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_esp_combs(%struct.sk_buff* %0, %struct.xfrm_tmpl* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xfrm_tmpl*, align 8
  %5 = alloca %struct.sadb_prop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfrm_algo_desc*, align 8
  %9 = alloca %struct.sadb_comb*, align 8
  %10 = alloca %struct.xfrm_algo_desc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xfrm_tmpl* %1, %struct.xfrm_tmpl** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = call i8* @skb_put(%struct.sk_buff* %11, i32 24)
  %13 = bitcast i8* %12 to %struct.sadb_prop*
  store %struct.sadb_prop* %13, %struct.sadb_prop** %5, align 8
  %14 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %15 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %14, i32 0, i32 0
  store i32 3, i32* %15, align 8
  %16 = load i32, i32* @SADB_EXT_PROPOSAL, align 4
  %17 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %18 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %20 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %19, i32 0, i32 1
  store i32 32, i32* %20, align 4
  %21 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %22 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %21, i32 0, i32 2
  %23 = load %struct.sadb_comb*, %struct.sadb_comb** %22, align 8
  %24 = call i32 @memset(%struct.sadb_comb* %23, i32 0, i32 8)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %132, %2
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.xfrm_algo_desc* @xfrm_ealg_get_byidx(i32 %26)
  store %struct.xfrm_algo_desc* %27, %struct.xfrm_algo_desc** %8, align 8
  %28 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %29 = icmp ne %struct.xfrm_algo_desc* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %135

31:                                               ; preds = %25
  %32 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %33 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %132

37:                                               ; preds = %31
  %38 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %4, align 8
  %39 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %40 = call i64 @ealg_tmpl_set(%struct.xfrm_tmpl* %38, %struct.xfrm_algo_desc* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %44 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %37
  br label %132

48:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %128, %48
  %50 = load i32, i32* %7, align 4
  %51 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32 %50)
  store %struct.xfrm_algo_desc* %51, %struct.xfrm_algo_desc** %10, align 8
  %52 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %53 = icmp ne %struct.xfrm_algo_desc* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %131

55:                                               ; preds = %49
  %56 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %57 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %128

61:                                               ; preds = %55
  %62 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %4, align 8
  %63 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %64 = call i64 @aalg_tmpl_set(%struct.xfrm_tmpl* %62, %struct.xfrm_algo_desc* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %68 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66, %61
  br label %128

72:                                               ; preds = %66
  %73 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %74 = call i8* @skb_put(%struct.sk_buff* %73, i32 40)
  %75 = bitcast i8* %74 to %struct.sadb_comb*
  store %struct.sadb_comb* %75, %struct.sadb_comb** %9, align 8
  %76 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %77 = call i32 @memset(%struct.sadb_comb* %76, i32 0, i32 40)
  %78 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %79 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, 5
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %79, align 8
  %84 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %85 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %89 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 4
  %90 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %91 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %95 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %94, i32 0, i32 8
  store i32 %93, i32* %95, align 4
  %96 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %10, align 8
  %97 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %101 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %100, i32 0, i32 7
  store i32 %99, i32* %101, align 4
  %102 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %103 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %107 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 4
  %108 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %109 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %113 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  %114 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %8, align 8
  %115 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %119 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 4
  %120 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %121 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %120, i32 0, i32 0
  store i32 86400, i32* %121, align 4
  %122 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %123 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %122, i32 0, i32 1
  store i32 72000, i32* %123, align 4
  %124 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %125 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %124, i32 0, i32 2
  store i32 28800, i32* %125, align 4
  %126 = load %struct.sadb_comb*, %struct.sadb_comb** %9, align 8
  %127 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %126, i32 0, i32 3
  store i32 25200, i32* %127, align 4
  br label %128

128:                                              ; preds = %72, %71, %60
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %7, align 4
  br label %49

131:                                              ; preds = %54
  br label %132

132:                                              ; preds = %131, %47, %36
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %25

135:                                              ; preds = %30
  ret void
}

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.sadb_comb*, i32, i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_ealg_get_byidx(i32) #1

declare dso_local i64 @ealg_tmpl_set(%struct.xfrm_tmpl*, %struct.xfrm_algo_desc*) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32) #1

declare dso_local i64 @aalg_tmpl_set(%struct.xfrm_tmpl*, %struct.xfrm_algo_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
