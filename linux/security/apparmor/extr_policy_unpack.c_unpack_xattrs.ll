; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_xattrs.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_xattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }
%struct.aa_profile = type { i32, i32* }

@AA_STRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"xattrs\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@AA_ARRAYEND = common dso_local global i32 0, align 4
@AA_STRUCTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, %struct.aa_profile*)* @unpack_xattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_xattrs(%struct.aa_ext* %0, %struct.aa_profile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_ext*, align 8
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aa_ext* %0, %struct.aa_ext** %4, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %5, align 8
  %9 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %10 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %13 = load i32, i32* @AA_STRUCT, align 4
  %14 = call i64 @unpack_nameX(%struct.aa_ext* %12, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %65

16:                                               ; preds = %2
  %17 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %18 = call i32 @unpack_array(%struct.aa_ext* %17, i32* null)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %21 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kcalloc(i32 %22, i32 8, i32 %23)
  %25 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %26 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %25, i32 0, i32 1
  store i32* %24, i32** %26, align 8
  %27 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %28 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %16
  br label %66

32:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %39 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %40 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @unpack_strdup(%struct.aa_ext* %38, i32* %44, i32* null)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %37
  br label %66

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %33

52:                                               ; preds = %33
  %53 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %54 = load i32, i32* @AA_ARRAYEND, align 4
  %55 = call i64 @unpack_nameX(%struct.aa_ext* %53, i32 %54, i8* null)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %66

58:                                               ; preds = %52
  %59 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %60 = load i32, i32* @AA_STRUCTEND, align 4
  %61 = call i64 @unpack_nameX(%struct.aa_ext* %59, i32 %60, i8* null)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %66

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %2
  store i32 1, i32* %3, align 4
  br label %70

66:                                               ; preds = %63, %57, %47, %31
  %67 = load i8*, i8** %6, align 8
  %68 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %69 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %65
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @unpack_nameX(%struct.aa_ext*, i32, i8*) #1

declare dso_local i32 @unpack_array(%struct.aa_ext*, i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @unpack_strdup(%struct.aa_ext*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
