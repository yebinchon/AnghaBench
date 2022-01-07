; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_resource.c_audit_resource.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_resource.c_audit_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { i32 }
%struct.aa_label = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, %struct.aa_label*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@sa = common dso_local global i32 0, align 4
@LSM_AUDIT_DATA_NONE = common dso_local global i32 0, align 4
@OP_SETRLIMIT = common dso_local global i32 0, align 4
@AUDIT_APPARMOR_AUTO = common dso_local global i32 0, align 4
@audit_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, i32, i64, %struct.aa_label*, i8*, i32)* @audit_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @audit_resource(%struct.aa_profile* %0, i32 %1, i64 %2, %struct.aa_label* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.aa_label* %3, %struct.aa_label** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @sa, align 4
  %14 = load i32, i32* @LSM_AUDIT_DATA_NONE, align 4
  %15 = load i32, i32* @OP_SETRLIMIT, align 4
  %16 = call i32 @DEFINE_AUDIT_DATA(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_4__* @aad(i32* @sa)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.TYPE_4__* @aad(i32* @sa)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i64 %21, i64* %24, align 8
  %25 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %26 = call %struct.TYPE_4__* @aad(i32* @sa)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store %struct.aa_label* %25, %struct.aa_label** %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call %struct.TYPE_4__* @aad(i32* @sa)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %12, align 4
  %32 = call %struct.TYPE_4__* @aad(i32* @sa)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @AUDIT_APPARMOR_AUTO, align 4
  %35 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %36 = load i32, i32* @audit_cb, align 4
  %37 = call i32 @aa_audit(i32 %34, %struct.aa_profile* %35, i32* @sa, i32 %36)
  ret i32 %37
}

declare dso_local i32 @DEFINE_AUDIT_DATA(i32, i32, i32) #1

declare dso_local %struct.TYPE_4__* @aad(i32*) #1

declare dso_local i32 @aa_audit(i32, %struct.aa_profile*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
