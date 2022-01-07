; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_apply_modes_to_perms.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_apply_modes_to_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.aa_perms = type { i8*, i8*, i8*, i8* }

@ALL_PERMS_MASK = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_apply_modes_to_perms(%struct.aa_profile* %0, %struct.aa_perms* %1) #0 {
  %3 = alloca %struct.aa_profile*, align 8
  %4 = alloca %struct.aa_perms*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %3, align 8
  store %struct.aa_perms* %1, %struct.aa_perms** %4, align 8
  %5 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %6 = call i32 @AUDIT_MODE(%struct.aa_profile* %5)
  switch i32 %6, label %21 [
    i32 131, label %7
    i32 130, label %11
    i32 129, label %14
    i32 128, label %17
  ]

7:                                                ; preds = %2
  %8 = load i8*, i8** @ALL_PERMS_MASK, align 8
  %9 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %10 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %9, i32 0, i32 3
  store i8* %8, i8** %10, align 8
  br label %11

11:                                               ; preds = %2, %7
  %12 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %13 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %12, i32 0, i32 2
  store i8* null, i8** %13, align 8
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %16 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 3
  store i8* null, i8** %16, align 8
  br label %17

17:                                               ; preds = %2, %14
  %18 = load i8*, i8** @ALL_PERMS_MASK, align 8
  %19 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %20 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  br label %21

21:                                               ; preds = %2, %17, %11
  %22 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %23 = call i64 @KILL_MODE(%struct.aa_profile* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i8*, i8** @ALL_PERMS_MASK, align 8
  %27 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %28 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  br label %38

29:                                               ; preds = %21
  %30 = load %struct.aa_profile*, %struct.aa_profile** %3, align 8
  %31 = call i64 @COMPLAIN_MODE(%struct.aa_profile* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i8*, i8** @ALL_PERMS_MASK, align 8
  %35 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %36 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37, %25
  ret void
}

declare dso_local i32 @AUDIT_MODE(%struct.aa_profile*) #1

declare dso_local i64 @KILL_MODE(%struct.aa_profile*) #1

declare dso_local i64 @COMPLAIN_MODE(%struct.aa_profile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
