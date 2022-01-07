; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_str_perms.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_aa_str_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i32 }
%struct.path_cond = type { i32 }
%struct.aa_perms = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_str_perms(%struct.aa_dfa* %0, i32 %1, i8* %2, %struct.path_cond* %3, %struct.aa_perms* %4) #0 {
  %6 = alloca %struct.aa_dfa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.path_cond*, align 8
  %10 = alloca %struct.aa_perms*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.aa_perms, align 4
  store %struct.aa_dfa* %0, %struct.aa_dfa** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.path_cond* %3, %struct.path_cond** %9, align 8
  store %struct.aa_perms* %4, %struct.aa_perms** %10, align 8
  %13 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @aa_dfa_match(%struct.aa_dfa* %13, i32 %14, i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.aa_perms*, %struct.aa_perms** %10, align 8
  %18 = load %struct.aa_dfa*, %struct.aa_dfa** %6, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.path_cond*, %struct.path_cond** %9, align 8
  %21 = call i32 @aa_compute_fperms(%struct.aa_dfa* %18, i32 %19, %struct.path_cond* %20)
  %22 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %12, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = bitcast %struct.aa_perms* %17 to i8*
  %24 = bitcast %struct.aa_perms* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i32, i32* %11, align 4
  ret i32 %25
}

declare dso_local i32 @aa_dfa_match(%struct.aa_dfa*, i32, i8*) #1

declare dso_local i32 @aa_compute_fperms(%struct.aa_dfa*, i32, %struct.path_cond*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
