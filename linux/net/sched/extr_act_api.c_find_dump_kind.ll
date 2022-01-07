; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_find_dump_kind.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_api.c_find_dump_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@TCA_ACT_MAX = common dso_local global i32 0, align 4
@TCA_ACT_MAX_PRIO = common dso_local global i32 0, align 4
@TCA_ACT_TAB = common dso_local global i64 0, align 8
@tcf_action_policy = common dso_local global i32 0, align 4
@TCA_ACT_KIND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nlattr* (%struct.nlattr**)* @find_dump_kind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nlattr* @find_dump_kind(%struct.nlattr** %0) #0 {
  %2 = alloca %struct.nlattr*, align 8
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  %10 = load i32, i32* @TCA_ACT_MAX, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca %struct.nlattr*, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = alloca %struct.nlattr*, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %19 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %20 = load i64, i64* @TCA_ACT_TAB, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  store %struct.nlattr* %22, %struct.nlattr** %4, align 8
  %23 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %24 = icmp eq %struct.nlattr* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store %struct.nlattr* null, %struct.nlattr** %2, align 8
  store i32 1, i32* %9, align 4
  br label %54

26:                                               ; preds = %1
  %27 = load i32, i32* @TCA_ACT_MAX_PRIO, align 4
  %28 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %29 = call i32 @nla_data(%struct.nlattr* %28)
  %30 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %31 = call i32 @nla_len(%struct.nlattr* %30)
  %32 = call i32 @NLMSG_ALIGN(i32 %31)
  %33 = call i64 @nla_parse_deprecated(%struct.nlattr** %18, i32 %27, i32 %29, i32 %32, i32* null, i32* null)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store %struct.nlattr* null, %struct.nlattr** %2, align 8
  store i32 1, i32* %9, align 4
  br label %54

36:                                               ; preds = %26
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 1
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp eq %struct.nlattr* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store %struct.nlattr* null, %struct.nlattr** %2, align 8
  store i32 1, i32* %9, align 4
  br label %54

41:                                               ; preds = %36
  %42 = load i32, i32* @TCA_ACT_MAX, align 4
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 1
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = load i32, i32* @tcf_action_policy, align 4
  %46 = call i64 @nla_parse_nested_deprecated(%struct.nlattr** %14, i32 %42, %struct.nlattr* %44, i32 %45, i32* null)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store %struct.nlattr* null, %struct.nlattr** %2, align 8
  store i32 1, i32* %9, align 4
  br label %54

49:                                               ; preds = %41
  %50 = load i64, i64* @TCA_ACT_KIND, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  store %struct.nlattr* %52, %struct.nlattr** %8, align 8
  %53 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  store %struct.nlattr* %53, %struct.nlattr** %2, align 8
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %49, %48, %40, %35, %25
  %55 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load %struct.nlattr*, %struct.nlattr** %2, align 8
  ret %struct.nlattr* %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nla_parse_deprecated(%struct.nlattr**, i32, i32, i32, i32*, i32*) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @NLMSG_ALIGN(i32) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i64 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
