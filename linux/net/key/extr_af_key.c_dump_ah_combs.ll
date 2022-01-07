; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_dump_ah_combs.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_dump_ah_combs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xfrm_tmpl = type { i32 }
%struct.sadb_prop = type { i32, i32, i32, i32 }
%struct.xfrm_algo_desc = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.sadb_comb = type { i32, i32, i32, i32, i32, i32, i32 }

@SADB_EXT_PROPOSAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.xfrm_tmpl*)* @dump_ah_combs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ah_combs(%struct.sk_buff* %0, %struct.xfrm_tmpl* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xfrm_tmpl*, align 8
  %5 = alloca %struct.sadb_prop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfrm_algo_desc*, align 8
  %8 = alloca %struct.sadb_comb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xfrm_tmpl* %1, %struct.xfrm_tmpl** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.sadb_prop* @skb_put(%struct.sk_buff* %9, i32 16)
  store %struct.sadb_prop* %10, %struct.sadb_prop** %5, align 8
  %11 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %12 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %11, i32 0, i32 0
  store i32 2, i32* %12, align 4
  %13 = load i32, i32* @SADB_EXT_PROPOSAL, align 4
  %14 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %15 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %17 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %16, i32 0, i32 1
  store i32 32, i32* %17, align 4
  %18 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %19 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memset(i32 %20, i32 0, i32 4)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %80, %2
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32 %23)
  store %struct.xfrm_algo_desc* %24, %struct.xfrm_algo_desc** %7, align 8
  %25 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %26 = icmp ne %struct.xfrm_algo_desc* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %83

28:                                               ; preds = %22
  %29 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %30 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %80

34:                                               ; preds = %28
  %35 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %4, align 8
  %36 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %37 = call i64 @aalg_tmpl_set(%struct.xfrm_tmpl* %35, %struct.xfrm_algo_desc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %34
  %40 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %41 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = call %struct.sadb_comb* @skb_put_zero(%struct.sk_buff* %45, i32 28)
  store %struct.sadb_comb* %46, %struct.sadb_comb** %8, align 8
  %47 = load %struct.sadb_prop*, %struct.sadb_prop** %5, align 8
  %48 = getelementptr inbounds %struct.sadb_prop, %struct.sadb_prop* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 3
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %54 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %58 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %60 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %64 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.xfrm_algo_desc*, %struct.xfrm_algo_desc** %7, align 8
  %66 = getelementptr inbounds %struct.xfrm_algo_desc, %struct.xfrm_algo_desc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %70 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %72 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %71, i32 0, i32 0
  store i32 86400, i32* %72, align 4
  %73 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %74 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %73, i32 0, i32 1
  store i32 72000, i32* %74, align 4
  %75 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %76 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %75, i32 0, i32 2
  store i32 28800, i32* %76, align 4
  %77 = load %struct.sadb_comb*, %struct.sadb_comb** %8, align 8
  %78 = getelementptr inbounds %struct.sadb_comb, %struct.sadb_comb* %77, i32 0, i32 3
  store i32 25200, i32* %78, align 4
  br label %79

79:                                               ; preds = %44, %39, %34
  br label %80

80:                                               ; preds = %79, %33
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %22

83:                                               ; preds = %27
  ret void
}

declare dso_local %struct.sadb_prop* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.xfrm_algo_desc* @xfrm_aalg_get_byidx(i32) #1

declare dso_local i64 @aalg_tmpl_set(%struct.xfrm_tmpl*, %struct.xfrm_algo_desc*) #1

declare dso_local %struct.sadb_comb* @skb_put_zero(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
