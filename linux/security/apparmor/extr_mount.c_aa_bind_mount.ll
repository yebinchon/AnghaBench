; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_bind_mount.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_bind_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.path = type { i32 }
%struct.aa_profile = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MS_REC = common dso_local global i64 0, align 8
@MS_BIND = common dso_local global i64 0, align 8
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_AUTOMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_bind_mount(%struct.aa_label* %0, %struct.path* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.aa_profile*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.path, align 4
  %14 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %6, align 8
  store %struct.path* %1, %struct.path** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %15 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %16 = icmp ne %struct.aa_label* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @AA_BUG(i32 %18)
  %20 = load %struct.path*, %struct.path** %7, align 8
  %21 = icmp ne %struct.path* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @AA_BUG(i32 %23)
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27, %4
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %67

34:                                               ; preds = %27
  %35 = load i64, i64* @MS_REC, align 8
  %36 = load i64, i64* @MS_BIND, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* %9, align 8
  %39 = and i64 %38, %37
  store i64 %39, i64* %9, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %42 = load i32, i32* @LOOKUP_AUTOMOUNT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @kern_path(i8* %40, i32 %43, %struct.path* %13)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %5, align 4
  br label %67

49:                                               ; preds = %34
  %50 = load i8*, i8** %11, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @get_buffers(i8* %50, i8* %51)
  %53 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %54 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %55 = load %struct.aa_profile*, %struct.aa_profile** %10, align 8
  %56 = load %struct.path*, %struct.path** %7, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @match_mnt(%struct.aa_profile* %55, %struct.path* %56, i8* %57, %struct.path* %13, i8* %58, i32* null, i64 %59, i32* null, i32 0)
  %61 = call i32 @fn_for_each_confined(%struct.aa_label* %53, %struct.aa_profile* %54, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @put_buffers(i8* %62, i8* %63)
  %65 = call i32 @path_put(%struct.path* %13)
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %49, %47, %31
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @get_buffers(i8*, i8*) #1

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @match_mnt(%struct.aa_profile*, %struct.path*, i8*, %struct.path*, i8*, i32*, i64, i32*, i32) #1

declare dso_local i32 @put_buffers(i8*, i8*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
