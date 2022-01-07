; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_audit.c_aa_audit_rule_match.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_audit.c_aa_audit_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_audit_rule = type { i32 }
%struct.aa_label = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_audit_rule_match(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.aa_audit_rule*, align 8
  %11 = alloca %struct.aa_label*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.aa_audit_rule*
  store %struct.aa_audit_rule* %14, %struct.aa_audit_rule** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.aa_label* @aa_secid_to_label(i32 %15)
  store %struct.aa_label* %16, %struct.aa_label** %11, align 8
  %17 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %18 = icmp ne %struct.aa_label* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %43

22:                                               ; preds = %4
  %23 = load %struct.aa_label*, %struct.aa_label** %11, align 8
  %24 = load %struct.aa_audit_rule*, %struct.aa_audit_rule** %10, align 8
  %25 = getelementptr inbounds %struct.aa_audit_rule, %struct.aa_audit_rule* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @aa_label_is_subset(%struct.aa_label* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %42 [
    i32 130, label %32
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %41 [
    i32 129, label %34
    i32 128, label %36
  ]

34:                                               ; preds = %32
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %5, align 4
  br label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %43

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %30
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %36, %34, %19
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.aa_label* @aa_secid_to_label(i32) #1

declare dso_local i64 @aa_label_is_subset(%struct.aa_label*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
