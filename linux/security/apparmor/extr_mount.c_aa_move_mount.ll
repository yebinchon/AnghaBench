; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_move_mount.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_move_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.path = type { i32 }
%struct.aa_profile = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@MS_MOVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_move_mount(%struct.aa_label* %0, %struct.path* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.aa_profile*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.path, align 4
  %12 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* null, i8** %9, align 8
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
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %58

32:                                               ; preds = %25
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %35 = call i32 @kern_path(i8* %33, i32 %34, %struct.path* %11)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %4, align 4
  br label %58

40:                                               ; preds = %32
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @get_buffers(i8* %41, i8* %42)
  %44 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %45 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %46 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %47 = load %struct.path*, %struct.path** %6, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* @MS_MOVE, align 4
  %51 = call i32 @match_mnt(%struct.aa_profile* %46, %struct.path* %47, i8* %48, %struct.path* %11, i8* %49, i32* null, i32 %50, i32* null, i32 0)
  %52 = call i32 @fn_for_each_confined(%struct.aa_label* %44, %struct.aa_profile* %45, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @put_buffers(i8* %53, i8* %54)
  %56 = call i32 @path_put(%struct.path* %11)
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %40, %38, %29
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @kern_path(i8*, i32, %struct.path*) #1

declare dso_local i32 @get_buffers(i8*, i8*) #1

declare dso_local i32 @fn_for_each_confined(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @match_mnt(%struct.aa_profile*, %struct.path*, i8*, %struct.path*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @put_buffers(i8*, i8*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
