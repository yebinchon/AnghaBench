; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_verify_dfa_xindex.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_verify_dfa_xindex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@YYTD_ID_ACCEPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_dfa*, i32)* @verify_dfa_xindex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_dfa_xindex(%struct.aa_dfa* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_dfa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aa_dfa* %0, %struct.aa_dfa** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %35, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %10 = getelementptr inbounds %struct.aa_dfa, %struct.aa_dfa* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %10, align 8
  %12 = load i64, i64* @YYTD_ID_ACCEPT, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %11, i64 %12
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %8, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %7
  %19 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dfa_user_xindex(%struct.aa_dfa* %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @verify_xindex(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %39

26:                                               ; preds = %18
  %27 = load %struct.aa_dfa*, %struct.aa_dfa** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dfa_other_xindex(%struct.aa_dfa* %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @verify_xindex(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %39

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %7

38:                                               ; preds = %7
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %33, %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @verify_xindex(i32, i32) #1

declare dso_local i32 @dfa_user_xindex(%struct.aa_dfa*, i32) #1

declare dso_local i32 @dfa_other_xindex(%struct.aa_dfa*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
