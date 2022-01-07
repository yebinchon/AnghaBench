; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_lookupn_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy.c_aa_lookupn_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.aa_ns = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"unconfined\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.aa_profile* @aa_lookupn_profile(%struct.aa_ns* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.aa_ns*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.aa_profile*, align 8
  store %struct.aa_ns* %0, %struct.aa_ns** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i32 (...) @rcu_read_lock()
  br label %9

9:                                                ; preds = %23, %3
  %10 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %11 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %10, i32 0, i32 1
  %12 = load i8*, i8** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call %struct.aa_profile* @__lookupn_profile(i32* %11, i8* %12, i64 %13)
  store %struct.aa_profile* %14, %struct.aa_profile** %7, align 8
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %17 = icmp ne %struct.aa_profile* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %20 = call i32 @aa_get_profile_not0(%struct.aa_profile* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %9, label %25

25:                                               ; preds = %23
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %28 = icmp ne %struct.aa_profile* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @strncmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.aa_ns*, %struct.aa_ns** %4, align 8
  %36 = getelementptr inbounds %struct.aa_ns, %struct.aa_ns* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.aa_profile* @aa_get_newest_profile(i32 %37)
  store %struct.aa_profile* %38, %struct.aa_profile** %7, align 8
  br label %39

39:                                               ; preds = %34, %29, %25
  %40 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  ret %struct.aa_profile* %40
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.aa_profile* @__lookupn_profile(i32*, i8*, i64) #1

declare dso_local i32 @aa_get_profile_not0(%struct.aa_profile*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local %struct.aa_profile* @aa_get_newest_profile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
