; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_em_meta_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_em_meta.c_em_meta_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i64 }
%struct.meta_match = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tcf_meta_hdr = type { i32, i32 }
%struct.meta_type_ops = type { i64 (%struct.sk_buff*, %struct.TYPE_4__*, i32)* }

@TCA_EM_META_HDR = common dso_local global i32 0, align 4
@TCA_EM_META_LVALUE = common dso_local global i32 0, align 4
@TCA_EM_META_RVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*)* @em_meta_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_meta_dump(%struct.sk_buff* %0, %struct.tcf_ematch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcf_ematch*, align 8
  %6 = alloca %struct.meta_match*, align 8
  %7 = alloca %struct.tcf_meta_hdr, align 4
  %8 = alloca %struct.meta_type_ops*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %5, align 8
  %9 = load %struct.tcf_ematch*, %struct.tcf_ematch** %5, align 8
  %10 = getelementptr inbounds %struct.tcf_ematch, %struct.tcf_ematch* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.meta_match*
  store %struct.meta_match* %12, %struct.meta_match** %6, align 8
  %13 = call i32 @memset(%struct.tcf_meta_hdr* %7, i32 0, i32 8)
  %14 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %7, i32 0, i32 1
  %15 = load %struct.meta_match*, %struct.meta_match** %6, align 8
  %16 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @memcpy(i32* %14, i32* %17, i32 4)
  %19 = getelementptr inbounds %struct.tcf_meta_hdr, %struct.tcf_meta_hdr* %7, i32 0, i32 0
  %20 = load %struct.meta_match*, %struct.meta_match** %6, align 8
  %21 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @memcpy(i32* %19, i32* %22, i32 4)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* @TCA_EM_META_HDR, align 4
  %26 = call i64 @nla_put(%struct.sk_buff* %24, i32 %25, i32 8, %struct.tcf_meta_hdr* %7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %54

29:                                               ; preds = %2
  %30 = load %struct.meta_match*, %struct.meta_match** %6, align 8
  %31 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %30, i32 0, i32 1
  %32 = call %struct.meta_type_ops* @meta_type_ops(%struct.TYPE_4__* %31)
  store %struct.meta_type_ops* %32, %struct.meta_type_ops** %8, align 8
  %33 = load %struct.meta_type_ops*, %struct.meta_type_ops** %8, align 8
  %34 = getelementptr inbounds %struct.meta_type_ops, %struct.meta_type_ops* %33, i32 0, i32 0
  %35 = load i64 (%struct.sk_buff*, %struct.TYPE_4__*, i32)*, i64 (%struct.sk_buff*, %struct.TYPE_4__*, i32)** %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.meta_match*, %struct.meta_match** %6, align 8
  %38 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %37, i32 0, i32 1
  %39 = load i32, i32* @TCA_EM_META_LVALUE, align 4
  %40 = call i64 %35(%struct.sk_buff* %36, %struct.TYPE_4__* %38, i32 %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %29
  %43 = load %struct.meta_type_ops*, %struct.meta_type_ops** %8, align 8
  %44 = getelementptr inbounds %struct.meta_type_ops, %struct.meta_type_ops* %43, i32 0, i32 0
  %45 = load i64 (%struct.sk_buff*, %struct.TYPE_4__*, i32)*, i64 (%struct.sk_buff*, %struct.TYPE_4__*, i32)** %44, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load %struct.meta_match*, %struct.meta_match** %6, align 8
  %48 = getelementptr inbounds %struct.meta_match, %struct.meta_match* %47, i32 0, i32 0
  %49 = load i32, i32* @TCA_EM_META_RVALUE, align 4
  %50 = call i64 %45(%struct.sk_buff* %46, %struct.TYPE_4__* %48, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42, %29
  br label %54

53:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %55

54:                                               ; preds = %52, %28
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @memset(%struct.tcf_meta_hdr*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tcf_meta_hdr*) #1

declare dso_local %struct.meta_type_ops* @meta_type_ops(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
