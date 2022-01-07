; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_label_merge_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_label_merge_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32, i32* }
%struct.aa_profile = type { i32 }
%struct.label_it = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_label*, %struct.aa_label*, %struct.aa_label*)* @label_merge_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @label_merge_cmp(%struct.aa_label* %0, %struct.aa_label* %1, %struct.aa_label* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.aa_label*, align 8
  %8 = alloca %struct.aa_profile*, align 8
  %9 = alloca %struct.label_it, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aa_label* %0, %struct.aa_label** %5, align 8
  store %struct.aa_label* %1, %struct.aa_label** %6, align 8
  store %struct.aa_label* %2, %struct.aa_label** %7, align 8
  store %struct.aa_profile* null, %struct.aa_profile** %8, align 8
  %12 = bitcast %struct.label_it* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %14 = icmp ne %struct.aa_label* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @AA_BUG(i32 %16)
  %18 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %19 = icmp ne %struct.aa_label* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @AA_BUG(i32 %21)
  %23 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %24 = icmp ne %struct.aa_label* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @AA_BUG(i32 %26)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %56, %3
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %31 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %36 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %37 = call %struct.aa_profile* @aa_label_next_in_merge(%struct.label_it* %9, %struct.aa_label* %35, %struct.aa_label* %36)
  store %struct.aa_profile* %37, %struct.aa_profile** %8, align 8
  %38 = icmp ne %struct.aa_profile* %37, null
  br label %39

39:                                               ; preds = %34, %28
  %40 = phi i1 [ false, %28 ], [ %38, %34 ]
  br i1 %40, label %41, label %59

41:                                               ; preds = %39
  %42 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %43 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %44 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @profile_cmp(%struct.aa_profile* %42, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %72

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %28

59:                                               ; preds = %39
  %60 = load %struct.aa_profile*, %struct.aa_profile** %8, align 8
  %61 = icmp ne %struct.aa_profile* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %72

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.aa_label*, %struct.aa_label** %7, align 8
  %66 = getelementptr inbounds %struct.aa_label, %struct.aa_label* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 -1, i32* %4, align 4
  br label %72

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %69, %62, %53
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AA_BUG(i32) #2

declare dso_local %struct.aa_profile* @aa_label_next_in_merge(%struct.label_it*, %struct.aa_label*, %struct.aa_label*) #2

declare dso_local i32 @profile_cmp(%struct.aa_profile*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
