; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_match.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_perms = type { i32 }
%struct.aa_profile = type { i32 }
%struct.aa_label = type { i32 }

@allperms = common dso_local global %struct.aa_perms zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_label_match(%struct.aa_profile* %0, %struct.aa_label* %1, i32 %2, i32 %3, i32 %4, %struct.aa_perms* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_profile*, align 8
  %9 = alloca %struct.aa_label*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.aa_perms*, align 8
  %14 = alloca i32, align 4
  store %struct.aa_profile* %0, %struct.aa_profile** %8, align 8
  store %struct.aa_label* %1, %struct.aa_label** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.aa_perms* %5, %struct.aa_perms** %13, align 8
  %15 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %16 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %21 = call i32 @label_compound_match(%struct.aa_profile* %15, %struct.aa_label* %16, i32 %17, i32 %18, i32 %19, %struct.aa_perms* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %7, align 4
  br label %36

26:                                               ; preds = %6
  %27 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %28 = bitcast %struct.aa_perms* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 bitcast (%struct.aa_perms* @allperms to i8*), i64 4, i1 false)
  %29 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %30 = load %struct.aa_label*, %struct.aa_label** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.aa_perms*, %struct.aa_perms** %13, align 8
  %35 = call i32 @label_components_match(%struct.aa_profile* %29, %struct.aa_label* %30, i32 %31, i32 %32, i32 %33, %struct.aa_perms* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %26, %24
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @label_compound_match(%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, %struct.aa_perms*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @label_components_match(%struct.aa_profile*, %struct.aa_label*, i32, i32, i32, %struct.aa_perms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
