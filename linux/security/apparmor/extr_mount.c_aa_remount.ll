; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_remount.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.path = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.aa_profile = type { i32 }

@FS_BINARY_MOUNTDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_remount(%struct.aa_label* %0, %struct.path* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.aa_profile*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %10, align 8
  %13 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %14 = icmp ne %struct.aa_label* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @AA_BUG(i32 %16)
  %18 = load %struct.path*, %struct.path** %6, align 8
  %19 = icmp ne %struct.path* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.path*, %struct.path** %6, align 8
  %24 = getelementptr inbounds %struct.path, %struct.path* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FS_BINARY_MOUNTDATA, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 @get_buffers(i8* %34)
  %36 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %37 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %38 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %39 = load %struct.path*, %struct.path** %6, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @match_mnt(%struct.aa_profile* %38, %struct.path* %39, i8* %40, i32* null, i32* null, i32* null, i64 %41, i8* %42, i32 %43)
  %45 = call i32 @fn_for_each_confined(%struct.aa_label* %36, %struct.aa_profile* %37, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @put_buffers(i8* %46)
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @get_buffers(i8*) #1

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @match_mnt(%struct.aa_profile*, %struct.path*, i8*, i32*, i32*, i32*, i64, i8*, i32) #1

declare dso_local i32 @put_buffers(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
