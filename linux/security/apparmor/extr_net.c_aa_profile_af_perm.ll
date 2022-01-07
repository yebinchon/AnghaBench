; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_net.c_aa_profile_af_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_net.c_aa_profile_af_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_profile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.common_audit_data = type { i32 }
%struct.aa_perms = type { i32 }

@AF_MAX = common dso_local global i64 0, align 8
@SOCK_MAX = common dso_local global i32 0, align 4
@AA_CLASS_NET = common dso_local global i32 0, align 4
@audit_net_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_profile_af_perm(%struct.aa_profile* %0, %struct.common_audit_data* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca %struct.common_audit_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.aa_perms, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %7, align 8
  store %struct.common_audit_data* %1, %struct.common_audit_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = bitcast %struct.aa_perms* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* @AF_MAX, align 8
  %18 = icmp sge i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @AA_BUG(i32 %19)
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @SOCK_MAX, align 4
  %26 = icmp sge i32 %24, %25
  br label %27

27:                                               ; preds = %23, %5
  %28 = phi i1 [ true, %5 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @AA_BUG(i32 %29)
  %31 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %32 = call i64 @profile_unconfined(%struct.aa_profile* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %70

35:                                               ; preds = %27
  %36 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %37 = load i32, i32* @AA_CLASS_NET, align 4
  %38 = call i32 @PROFILE_MEDIATES(%struct.aa_profile* %36, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %70

42:                                               ; preds = %35
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @cpu_to_be16(i64 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = call i32 @cpu_to_be16(i64 %47)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %51 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %13, align 4
  %55 = bitcast [2 x i32]* %14 to i8*
  %56 = call i32 @aa_dfa_match_len(i32 %53, i32 %54, i8* %55, i32 4)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %58 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @aa_compute_perms(i32 %60, i32 %61, %struct.aa_perms* %12)
  %63 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %64 = call i32 @aa_apply_modes_to_perms(%struct.aa_profile* %63, %struct.aa_perms* %12)
  %65 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.common_audit_data*, %struct.common_audit_data** %8, align 8
  %68 = load i32, i32* @audit_net_cb, align 4
  %69 = call i32 @aa_check_perms(%struct.aa_profile* %65, %struct.aa_perms* %12, i32 %66, %struct.common_audit_data* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %42, %41, %34
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AA_BUG(i32) #2

declare dso_local i64 @profile_unconfined(%struct.aa_profile*) #2

declare dso_local i32 @PROFILE_MEDIATES(%struct.aa_profile*, i32) #2

declare dso_local i32 @cpu_to_be16(i64) #2

declare dso_local i32 @aa_dfa_match_len(i32, i32, i8*, i32) #2

declare dso_local i32 @aa_compute_perms(i32, i32, %struct.aa_perms*) #2

declare dso_local i32 @aa_apply_modes_to_perms(%struct.aa_profile*, %struct.aa_perms*) #2

declare dso_local i32 @aa_check_perms(%struct.aa_profile*, %struct.aa_perms*, i32, %struct.common_audit_data*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
