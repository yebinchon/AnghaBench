; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_rlimits.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_policy_unpack.c_unpack_rlimits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_ext = type { i8* }
%struct.aa_profile = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@AA_STRUCT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"rlimits\00", align 1
@RLIM_NLIMITS = common dso_local global i32 0, align 4
@AA_ARRAYEND = common dso_local global i32 0, align 4
@AA_STRUCTEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_ext*, %struct.aa_profile*)* @unpack_rlimits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unpack_rlimits(%struct.aa_ext* %0, %struct.aa_profile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_ext*, align 8
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aa_ext* %0, %struct.aa_ext** %4, align 8
  store %struct.aa_profile* %1, %struct.aa_profile** %5, align 8
  %12 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %13 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %16 = load i32, i32* @AA_STRUCT, align 4
  %17 = call i64 @unpack_nameX(%struct.aa_ext* %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %73

19:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  %20 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %21 = call i32 @unpack_u32(%struct.aa_ext* %20, i32* %9, i32* null)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %74

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %27 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %30 = call i32 @unpack_array(%struct.aa_ext* %29, i32* null)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RLIM_NLIMITS, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %74

35:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %57, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @aa_map_resource(i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %44 = call i32 @unpack_u64(%struct.aa_ext* %43, i32* %10, i32* null)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %74

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %50 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %48, i32* %56, align 4
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %36

60:                                               ; preds = %36
  %61 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %62 = load i32, i32* @AA_ARRAYEND, align 4
  %63 = call i64 @unpack_nameX(%struct.aa_ext* %61, i32 %62, i8* null)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %74

66:                                               ; preds = %60
  %67 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %68 = load i32, i32* @AA_STRUCTEND, align 4
  %69 = call i64 @unpack_nameX(%struct.aa_ext* %67, i32 %68, i8* null)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %74

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %2
  store i32 1, i32* %3, align 4
  br label %78

74:                                               ; preds = %71, %65, %46, %34, %23
  %75 = load i8*, i8** %6, align 8
  %76 = load %struct.aa_ext*, %struct.aa_ext** %4, align 8
  %77 = getelementptr inbounds %struct.aa_ext, %struct.aa_ext* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %73
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i64 @unpack_nameX(%struct.aa_ext*, i32, i8*) #1

declare dso_local i32 @unpack_u32(%struct.aa_ext*, i32*, i32*) #1

declare dso_local i32 @unpack_array(%struct.aa_ext*, i32*) #1

declare dso_local i32 @aa_map_resource(i32) #1

declare dso_local i32 @unpack_u64(%struct.aa_ext*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
