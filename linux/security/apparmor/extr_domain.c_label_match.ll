; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_label_match.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_domain.c_label_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_perms = type { i32 }
%struct.aa_profile = type { i32 }
%struct.aa_label = type { i32 }

@nullperms = common dso_local global %struct.aa_perms zeroinitializer, align 4
@allperms = common dso_local global %struct.aa_perms zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, i32, %struct.aa_perms*)* @label_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @label_match(%struct.aa_profile* %0, %struct.aa_label* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.aa_perms* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.aa_profile*, align 8
  %10 = alloca %struct.aa_label*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.aa_perms*, align 8
  %16 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %9, align 8
  store %struct.aa_label* %1, %struct.aa_label** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.aa_perms* %6, %struct.aa_perms** %15, align 8
  %17 = load %struct.aa_perms*, %struct.aa_perms** %15, align 8
  %18 = bitcast %struct.aa_perms* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast (%struct.aa_perms* @nullperms to i8*), i64 4, i1 false)
  %19 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %20 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.aa_perms*, %struct.aa_perms** %15, align 8
  %26 = call i32 @label_compound_match(%struct.aa_profile* %19, %struct.aa_label* %20, i32 %21, i32 %22, i32 %23, i32 %24, %struct.aa_perms* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %8, align 4
  br label %42

31:                                               ; preds = %7
  %32 = load %struct.aa_perms*, %struct.aa_perms** %15, align 8
  %33 = bitcast %struct.aa_perms* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 bitcast (%struct.aa_perms* @allperms to i8*), i64 4, i1 false)
  %34 = load %struct.aa_profile*, %struct.aa_profile** %9, align 8
  %35 = load %struct.aa_label*, %struct.aa_label** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.aa_perms*, %struct.aa_perms** %15, align 8
  %41 = call i32 @label_components_match(%struct.aa_profile* %34, %struct.aa_label* %35, i32 %36, i32 %37, i32 %38, i32 %39, %struct.aa_perms* %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %31, %29
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @label_compound_match(%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, i32, %struct.aa_perms*) #2

declare dso_local i32 @label_components_match(%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, i32, %struct.aa_perms*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
