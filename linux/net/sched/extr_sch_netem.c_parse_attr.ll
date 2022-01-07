; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_parse_attr.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_netem.c_parse_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nla_policy = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"netem: invalid attributes len %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, i32, %struct.nlattr*, %struct.nla_policy*, i32)* @parse_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_attr(%struct.nlattr** %0, i32 %1, %struct.nlattr* %2, %struct.nla_policy* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nla_policy*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nlattr* %2, %struct.nlattr** %9, align 8
  store %struct.nla_policy* %3, %struct.nla_policy** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  %15 = load i32, i32* %11, align 4
  %16 = call i32 @NLA_ALIGN(i32 %15)
  %17 = sub nsw i32 %14, %16
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %48

25:                                               ; preds = %5
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @nla_attr_size(i32 0)
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %33 = call i32 @nla_data(%struct.nlattr* %32)
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @NLA_ALIGN(i32 %34)
  %36 = add nsw i32 %33, %35
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.nla_policy*, %struct.nla_policy** %10, align 8
  %39 = call i32 @nla_parse_deprecated(%struct.nlattr** %30, i32 %31, i32 %36, i32 %37, %struct.nla_policy* %38, i32* null)
  store i32 %39, i32* %6, align 4
  br label %48

40:                                               ; preds = %25
  %41 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 8, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memset(%struct.nlattr** %41, i32 0, i32 %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %40, %29, %20
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @NLA_ALIGN(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @nla_attr_size(i32) #1

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, i32, i32, %struct.nla_policy*, i32*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memset(%struct.nlattr**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
