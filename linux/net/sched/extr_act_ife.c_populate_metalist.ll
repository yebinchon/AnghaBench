; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_populate_metalist.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_act_ife.c_populate_metalist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_ife_info = type { i32 }
%struct.nlattr = type { i32 }

@max_metacnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_ife_info*, %struct.nlattr**, i32, i32)* @populate_metalist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @populate_metalist(%struct.tcf_ife_info* %0, %struct.nlattr** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tcf_ife_info*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.tcf_ife_info* %0, %struct.tcf_ife_info** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %12, align 4
  br label %14

14:                                               ; preds = %60, %4
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @max_metacnt, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %18
  %26 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i8* @nla_data(%struct.nlattr* %30)
  store i8* %31, i8** %13, align 8
  %32 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i32 @nla_len(%struct.nlattr* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @load_metaops_and_vet(i32 %38, i8* %39, i32 %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %25
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %5, align 4
  br label %65

47:                                               ; preds = %25
  %48 = load %struct.tcf_ife_info*, %struct.tcf_ife_info** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @add_metainfo(%struct.tcf_ife_info* %48, i32 %49, i8* %50, i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %65

58:                                               ; preds = %47
  br label %59

59:                                               ; preds = %58, %18
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %14

63:                                               ; preds = %14
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %56, %45
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @load_metaops_and_vet(i32, i8*, i32, i32) #1

declare dso_local i32 @add_metainfo(%struct.tcf_ife_info*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
