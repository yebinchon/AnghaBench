; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_umount.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.vfsmount = type { i32 }
%struct.aa_profile = type { i32 }
%struct.path = type { i32, %struct.vfsmount* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_umount(%struct.aa_label* %0, %struct.vfsmount* %1, i32 %2) #0 {
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.path, align 8
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %5, align 8
  store i32 %2, i32* %6, align 4
  store i8* null, i8** %8, align 8
  %11 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %12 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %13 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %16 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  store %struct.vfsmount* %16, %struct.vfsmount** %15, align 8
  %17 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %18 = icmp ne %struct.aa_label* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @AA_BUG(i32 %20)
  %22 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %23 = icmp ne %struct.vfsmount* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @AA_BUG(i32 %25)
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @get_buffers(i8* %27)
  %29 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %30 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %31 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @profile_umount(%struct.aa_profile* %31, %struct.path* %10, i8* %32)
  %34 = call i32 @fn_for_each_confined(%struct.aa_label* %29, %struct.aa_profile* %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @put_buffers(i8* %35)
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @get_buffers(i8*) #1

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @profile_umount(%struct.aa_profile*, %struct.path*, i8*) #1

declare dso_local i32 @put_buffers(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
