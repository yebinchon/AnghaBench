; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_nlattr.c_nla_policy_len.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_nlattr.c_nla_policy_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nla_policy = type { i64, i64 }

@nla_attr_len = common dso_local global i64* null, align 8
@nla_attr_minlen = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nla_policy_len(%struct.nla_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.nla_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nla_policy* %0, %struct.nla_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %68, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %73

11:                                               ; preds = %7
  %12 = load %struct.nla_policy*, %struct.nla_policy** %3, align 8
  %13 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.nla_policy*, %struct.nla_policy** %3, align 8
  %18 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @nla_total_size(i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  br label %67

25:                                               ; preds = %11
  %26 = load i64*, i64** @nla_attr_len, align 8
  %27 = load %struct.nla_policy*, %struct.nla_policy** %3, align 8
  %28 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %26, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %25
  %34 = load i64*, i64** @nla_attr_len, align 8
  %35 = load %struct.nla_policy*, %struct.nla_policy** %3, align 8
  %36 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @nla_total_size(i64 %39)
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %66

45:                                               ; preds = %25
  %46 = load i64*, i64** @nla_attr_minlen, align 8
  %47 = load %struct.nla_policy*, %struct.nla_policy** %3, align 8
  %48 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %45
  %54 = load i64*, i64** @nla_attr_minlen, align 8
  %55 = load %struct.nla_policy*, %struct.nla_policy** %3, align 8
  %56 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @nla_total_size(i64 %59)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %53, %45
  br label %66

66:                                               ; preds = %65, %33
  br label %67

67:                                               ; preds = %66, %16
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = load %struct.nla_policy*, %struct.nla_policy** %3, align 8
  %72 = getelementptr inbounds %struct.nla_policy, %struct.nla_policy* %71, i32 1
  store %struct.nla_policy* %72, %struct.nla_policy** %3, align 8
  br label %7

73:                                               ; preds = %7
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @nla_total_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
