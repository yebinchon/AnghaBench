; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_pivotroot.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_aa_pivotroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.path = type { i32 }
%struct.aa_profile = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"label build failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OP_PIVOTROOT = common dso_local global i32 0, align 4
@AA_MAY_PIVOTROOT = common dso_local global i32 0, align 4
@nullperms = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_pivotroot(%struct.aa_label* %0, %struct.path* %1, %struct.path* %2) #0 {
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store %struct.path* %1, %struct.path** %5, align 8
  store %struct.path* %2, %struct.path** %6, align 8
  store %struct.aa_label* null, %struct.aa_label** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %13 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %14 = icmp ne %struct.aa_label* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @AA_BUG(i32 %16)
  %18 = load %struct.path*, %struct.path** %5, align 8
  %19 = icmp ne %struct.path* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.path*, %struct.path** %6, align 8
  %24 = icmp ne %struct.path* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @AA_BUG(i32 %26)
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 @get_buffers(i8* %28, i8* %29)
  %31 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %32 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %35 = load %struct.path*, %struct.path** %6, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.path*, %struct.path** %5, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @build_pivotroot(%struct.aa_profile* %34, %struct.path* %35, i8* %36, %struct.path* %37, i8* %38)
  %40 = call %struct.aa_label* @fn_label_build(%struct.aa_label* %31, %struct.aa_profile* %32, i32 %33, i32 %39)
  store %struct.aa_label* %40, %struct.aa_label** %8, align 8
  %41 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %42 = icmp ne %struct.aa_label* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %3
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %12, align 4
  br label %69

46:                                               ; preds = %3
  %47 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %48 = call i32 @IS_ERR(%struct.aa_label* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %59, label %50

50:                                               ; preds = %46
  %51 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %52 = call i32 @aa_replace_current_label(%struct.aa_label* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %57 = call i32 @aa_put_label(%struct.aa_label* %56)
  br label %64

58:                                               ; preds = %50
  br label %62

59:                                               ; preds = %46
  %60 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %61 = call i32 @PTR_ERR(%struct.aa_label* %60)
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %58
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %69, %63, %55
  %65 = load i8*, i8** %9, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @put_buffers(i8* %65, i8* %66)
  %68 = load i32, i32* %12, align 4
  ret i32 %68

69:                                               ; preds = %43
  %70 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %71 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %72 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %73 = load i32, i32* @OP_PIVOTROOT, align 4
  %74 = load i32, i32* @AA_MAY_PIVOTROOT, align 4
  %75 = load i8*, i8** %11, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @audit_mount(%struct.aa_profile* %72, i32 %73, i32* null, i32* null, i32* null, i32* null, i32 0, i32* null, i32 %74, i32* @nullperms, i8* %75, i32 %76)
  %78 = call i32 @fn_for_each(%struct.aa_label* %70, %struct.aa_profile* %71, i32 %77)
  store i32 %78, i32* %12, align 4
  br label %64
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @get_buffers(i8*, i8*) #1

declare dso_local %struct.aa_label* @fn_label_build(%struct.aa_label*, %struct.aa_profile*, i32, i32) #1

declare dso_local i32 @build_pivotroot(%struct.aa_profile*, %struct.path*, i8*, %struct.path*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.aa_label*) #1

declare dso_local i32 @aa_replace_current_label(%struct.aa_label*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

declare dso_local i32 @PTR_ERR(%struct.aa_label*) #1

declare dso_local i32 @put_buffers(i8*, i8*) #1

declare dso_local i32 @fn_for_each(%struct.aa_label*, %struct.aa_profile*, i32) #1

declare dso_local i32 @audit_mount(%struct.aa_profile*, i32, i32*, i32*, i32*, i32*, i32, i32*, i32, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
