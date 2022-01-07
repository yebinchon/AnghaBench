; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_policy.c_add_rules.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_policy.c_add_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_rule_entry = type { i64, i64, i32 }

@IMA_DEFAULT_POLICY = common dso_local global i32 0, align 4
@ima_default_rules = common dso_local global i32 0, align 4
@IMA_CUSTOM_POLICY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ima_policy_rules = common dso_local global i32 0, align 4
@APPRAISE = common dso_local global i64 0, align 8
@temp_ima_appraise = common dso_local global i32 0, align 4
@POLICY_CHECK = common dso_local global i64 0, align 8
@IMA_APPRAISE_POLICY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ima_rule_entry*, i32, i32)* @add_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_rules(%struct.ima_rule_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ima_rule_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ima_rule_entry*, align 8
  store %struct.ima_rule_entry* %0, %struct.ima_rule_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %77, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %80

13:                                               ; preds = %9
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IMA_DEFAULT_POLICY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %19, i64 %21
  %23 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %22, i32 0, i32 2
  %24 = call i32 @list_add_tail(i32* %23, i32* @ima_default_rules)
  br label %25

25:                                               ; preds = %18, %13
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IMA_CUSTOM_POLICY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %31, i64 %33
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.ima_rule_entry* @kmemdup(%struct.ima_rule_entry* %34, i32 24, i32 %35)
  store %struct.ima_rule_entry* %36, %struct.ima_rule_entry** %8, align 8
  %37 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %38 = icmp ne %struct.ima_rule_entry* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %77

40:                                               ; preds = %30
  %41 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %8, align 8
  %42 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %41, i32 0, i32 2
  %43 = call i32 @list_add_tail(i32* %42, i32* @ima_policy_rules)
  br label %44

44:                                               ; preds = %40, %25
  %45 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %45, i64 %47
  %49 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @APPRAISE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %44
  %54 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %54, i64 %56
  %58 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ima_appraise_flag(i64 %59)
  %61 = load i32, i32* @temp_ima_appraise, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* @temp_ima_appraise, align 4
  %63 = load %struct.ima_rule_entry*, %struct.ima_rule_entry** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %63, i64 %65
  %67 = getelementptr inbounds %struct.ima_rule_entry, %struct.ima_rule_entry* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @POLICY_CHECK, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %53
  %72 = load i32, i32* @IMA_APPRAISE_POLICY, align 4
  %73 = load i32, i32* @temp_ima_appraise, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* @temp_ima_appraise, align 4
  br label %75

75:                                               ; preds = %71, %53
  br label %76

76:                                               ; preds = %75, %44
  br label %77

77:                                               ; preds = %76, %39
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %9

80:                                               ; preds = %9
  ret void
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.ima_rule_entry* @kmemdup(%struct.ima_rule_entry*, i32, i32) #1

declare dso_local i32 @ima_appraise_flag(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
