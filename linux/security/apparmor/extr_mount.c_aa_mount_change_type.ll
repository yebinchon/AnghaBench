; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_mount_change_type.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_mount_change_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.path = type { i32 }
%struct.aa_profile = type { i32 }

@MS_REC = common dso_local global i64 0, align 8
@MS_SILENT = common dso_local global i64 0, align 8
@MS_SHARED = common dso_local global i64 0, align 8
@MS_PRIVATE = common dso_local global i64 0, align 8
@MS_SLAVE = common dso_local global i64 0, align 8
@MS_UNBINDABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_mount_change_type(%struct.aa_label* %0, %struct.path* %1, i64 %2) #0 {
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  store i64 %2, i64* %6, align 8
  store i8* null, i8** %8, align 8
  %10 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %11 = icmp ne %struct.aa_label* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @AA_BUG(i32 %13)
  %15 = load %struct.path*, %struct.path** %5, align 8
  %16 = icmp ne %struct.path* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @AA_BUG(i32 %18)
  %20 = load i64, i64* @MS_REC, align 8
  %21 = load i64, i64* @MS_SILENT, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @MS_SHARED, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @MS_PRIVATE, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @MS_SLAVE, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* @MS_UNBINDABLE, align 8
  %30 = or i64 %28, %29
  %31 = load i64, i64* %6, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @get_buffers(i8* %33)
  %35 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %36 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %37 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %38 = load %struct.path*, %struct.path** %5, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @match_mnt(%struct.aa_profile* %37, %struct.path* %38, i8* %39, i32* null, i32* null, i32* null, i64 %40, i32* null, i32 0)
  %42 = call i32 @fn_for_each_confined(%struct.aa_label* %35, %struct.aa_profile* %36, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @put_buffers(i8* %43)
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @get_buffers(i8*) #1

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @match_mnt(%struct.aa_profile*, %struct.path*, i8*, i32*, i32*, i32*, i64, i32*, i32) #1

declare dso_local i32 @put_buffers(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
