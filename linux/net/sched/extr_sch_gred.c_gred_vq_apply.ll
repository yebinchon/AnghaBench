; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_vq_apply.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_gred.c_gred_vq_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gred_sched = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i8* }
%struct.nlattr = type { i32 }

@TCA_GRED_VQ_MAX = common dso_local global i32 0, align 4
@gred_vq_policy = common dso_local global i32 0, align 4
@TCA_GRED_VQ_DP = common dso_local global i64 0, align 8
@TCA_GRED_VQ_FLAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gred_sched*, %struct.nlattr*)* @gred_vq_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gred_vq_apply(%struct.gred_sched* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.gred_sched*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.gred_sched* %0, %struct.gred_sched** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %8 = load i32, i32* @TCA_GRED_VQ_MAX, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca %struct.nlattr*, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @TCA_GRED_VQ_MAX, align 4
  %14 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %15 = load i32, i32* @gred_vq_policy, align 4
  %16 = call i32 @nla_parse_nested_deprecated(%struct.nlattr** %12, i32 %13, %struct.nlattr* %14, i32 %15, i32* null)
  %17 = load i64, i64* @TCA_GRED_VQ_DP, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = call i8* @nla_get_u32(%struct.nlattr* %19)
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* @TCA_GRED_VQ_FLAGS, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load i64, i64* @TCA_GRED_VQ_FLAGS, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i8* @nla_get_u32(%struct.nlattr* %29)
  %31 = load %struct.gred_sched*, %struct.gred_sched** %3, align 8
  %32 = getelementptr inbounds %struct.gred_sched, %struct.gred_sched* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* %30, i8** %37, align 8
  br label %38

38:                                               ; preds = %26, %2
  %39 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %39)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
