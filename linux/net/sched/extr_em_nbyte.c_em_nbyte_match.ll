; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_nbyte.c_em_nbyte_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_nbyte.c_em_nbyte_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i64 }
%struct.tcf_pkt_info = type { i32 }
%struct.nbyte_data = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*, %struct.tcf_pkt_info*)* @em_nbyte_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_nbyte_match(%struct.sk_buff* %0, %struct.tcf_ematch* %1, %struct.tcf_pkt_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tcf_ematch*, align 8
  %7 = alloca %struct.tcf_pkt_info*, align 8
  %8 = alloca %struct.nbyte_data*, align 8
  %9 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %6, align 8
  store %struct.tcf_pkt_info* %2, %struct.tcf_pkt_info** %7, align 8
  %10 = load %struct.tcf_ematch*, %struct.tcf_ematch** %6, align 8
  %11 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.nbyte_data*
  store %struct.nbyte_data* %13, %struct.nbyte_data** %8, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load %struct.nbyte_data*, %struct.nbyte_data** %8, align 8
  %16 = getelementptr inbounds %struct.nbyte_data, %struct.nbyte_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @tcf_get_base_ptr(%struct.sk_buff* %14, i32 %18)
  store i8* %19, i8** %9, align 8
  %20 = load %struct.nbyte_data*, %struct.nbyte_data** %8, align 8
  %21 = getelementptr inbounds %struct.nbyte_data, %struct.nbyte_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  store i8* %26, i8** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.nbyte_data*, %struct.nbyte_data** %8, align 8
  %30 = getelementptr inbounds %struct.nbyte_data, %struct.nbyte_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @tcf_valid_offset(%struct.sk_buff* %27, i8* %28, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

36:                                               ; preds = %3
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.nbyte_data*, %struct.nbyte_data** %8, align 8
  %39 = getelementptr inbounds %struct.nbyte_data, %struct.nbyte_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nbyte_data*, %struct.nbyte_data** %8, align 8
  %42 = getelementptr inbounds %struct.nbyte_data, %struct.nbyte_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memcmp(i8* %37, i32 %40, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %36, %35
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i8* @tcf_get_base_ptr(%struct.sk_buff*, i32) #1

declare dso_local i32 @tcf_valid_offset(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
