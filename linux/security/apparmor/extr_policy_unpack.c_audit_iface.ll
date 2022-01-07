; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_audit_iface.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_audit_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.aa_ext = type { i64, i64 }
%struct.TYPE_6__ = type { i8*, i8*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i64 }

@sa = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_NONE = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_STATUS = common dso_local global i32 0, align 4
@audit_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, i8*, i8*, i8*, %struct.aa_ext*, i32)* @audit_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_iface(%struct.aa_profile* %0, i8* %1, i8* %2, i8* %3, %struct.aa_ext* %4, i32 %5) #0 {
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.aa_ext*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.aa_profile*, align 8
  store %struct.aa_profile* %0, %struct.aa_profile** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.aa_ext* %4, %struct.aa_ext** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = call i32 (...) @aa_current_raw_label()
  %15 = call %struct.aa_profile* @labels_profile(i32 %14)
  store %struct.aa_profile* %15, %struct.aa_profile** %13, align 8
  %16 = load i32, i32* @sa, align 4
  %17 = load i32, i32* @LSM_AUDIT_DATA_NONE, align 4
  %18 = call i32 @DEFINE_AUDIT_DATA(i32 %16, i32 %17, i32* null)
  %19 = load %struct.aa_ext*, %struct.aa_ext** %11, align 8
  %20 = icmp ne %struct.aa_ext* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %6
  %22 = load %struct.aa_ext*, %struct.aa_ext** %11, align 8
  %23 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.aa_ext*, %struct.aa_ext** %11, align 8
  %26 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = call %struct.TYPE_6__* @aad(i32* @sa)
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i64 %28, i64* %31, align 8
  br label %32

32:                                               ; preds = %21, %6
  %33 = load i8*, i8** %8, align 8
  %34 = call %struct.TYPE_6__* @aad(i32* @sa)
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  %37 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %38 = icmp ne %struct.aa_profile* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %41 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call %struct.TYPE_6__* @aad(i32* @sa)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  br label %50

46:                                               ; preds = %32
  %47 = load i8*, i8** %9, align 8
  %48 = call %struct.TYPE_6__* @aad(i32* @sa)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %46, %39
  %51 = load i8*, i8** %10, align 8
  %52 = call %struct.TYPE_6__* @aad(i32* @sa)
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call %struct.TYPE_6__* @aad(i32* @sa)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @AUDIT_APPARMOR_STATUS, align 4
  %58 = load %struct.aa_profile*, %struct.aa_profile** %13, align 8
  %59 = load i32, i32* @audit_cb, align 4
  %60 = call i32 @aa_audit(i32 %57, %struct.aa_profile* %58, i32* @sa, i32 %59)
  ret i32 %60
}

declare dso_local %struct.aa_profile* @labels_profile(i32) #1

declare dso_local i32 @aa_current_raw_label(...) #1

declare dso_local i32 @DEFINE_AUDIT_DATA(i32, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @aad(i32*) #1

declare dso_local i32 @aa_audit(i32, %struct.aa_profile*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
