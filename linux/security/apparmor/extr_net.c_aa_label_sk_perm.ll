; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_net.c_aa_label_sk_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_net.c_aa_label_sk_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.sock = type { i32 }
%struct.aa_profile = type { i32 }

@sa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_label*, i8*, i32, %struct.sock*)* @aa_label_sk_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aa_label_sk_perm(%struct.aa_label* %0, i8* %1, i32 %2, %struct.sock* %3) #0 {
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.aa_profile*, align 8
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.sock* %3, %struct.sock** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %12 = icmp ne %struct.aa_label* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @AA_BUG(i32 %14)
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = icmp ne %struct.sock* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @AA_BUG(i32 %19)
  %21 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %22 = call i32 @unconfined(%struct.aa_label* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @sa, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.sock*, %struct.sock** %8, align 8
  %28 = call i32 @DEFINE_AUDIT_SK(i32 %25, i8* %26, %struct.sock* %27)
  %29 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %30 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %31 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.sock*, %struct.sock** %8, align 8
  %34 = call i32 @aa_profile_af_sk_perm(%struct.aa_profile* %31, i32* @sa, i32 %32, %struct.sock* %33)
  %35 = call i32 @fn_for_each_confined(%struct.aa_label* %29, %struct.aa_profile* %30, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %24, %4
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @unconfined(%struct.aa_label*) #1

declare dso_local i32 @DEFINE_AUDIT_SK(i32, i8*, %struct.sock*) #1

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @aa_profile_af_sk_perm(%struct.aa_profile*, i32*, i32, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
