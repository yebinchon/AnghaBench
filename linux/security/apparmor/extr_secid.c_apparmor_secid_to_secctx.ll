; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_secid.c_apparmor_secid_to_secctx.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_secid.c_apparmor_secid_to_secctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@root_ns = common dso_local global i32 0, align 4
@FLAG_SHOW_MODE = common dso_local global i32 0, align 4
@FLAG_VIEW_SUBNS = common dso_local global i32 0, align 4
@FLAG_HIDDEN_UNCONFINED = common dso_local global i32 0, align 4
@FLAG_ABS_ROOT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apparmor_secid_to_secctx(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.aa_label* @aa_secid_to_label(i32 %10)
  store %struct.aa_label* %11, %struct.aa_label** %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @AA_BUG(i32 %15)
  %17 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %18 = icmp ne %struct.aa_label* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %58

22:                                               ; preds = %3
  %23 = load i8**, i8*** %6, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32, i32* @root_ns, align 4
  %28 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %29 = load i32, i32* @FLAG_SHOW_MODE, align 4
  %30 = load i32, i32* @FLAG_VIEW_SUBNS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FLAG_HIDDEN_UNCONFINED, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FLAG_ABS_ROOT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = call i32 @aa_label_asxprint(i8** %26, i32 %27, %struct.aa_label* %28, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %49

38:                                               ; preds = %22
  %39 = load i32, i32* @root_ns, align 4
  %40 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %41 = load i32, i32* @FLAG_SHOW_MODE, align 4
  %42 = load i32, i32* @FLAG_VIEW_SUBNS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @FLAG_HIDDEN_UNCONFINED, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @FLAG_ABS_ROOT, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @aa_label_snxprint(i32* null, i32 0, i32 %39, %struct.aa_label* %40, i32 %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %38, %25
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %58

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %55, %52, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.aa_label* @aa_secid_to_label(i32) #1

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @aa_label_asxprint(i8**, i32, %struct.aa_label*, i32, i32) #1

declare dso_local i32 @aa_label_snxprint(i32*, i32, i32, %struct.aa_label*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
