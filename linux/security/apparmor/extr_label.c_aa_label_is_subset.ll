; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_is_subset.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_label.c_aa_label_is_subset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_label = type { i32 }
%struct.label_it = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aa_label_is_subset(%struct.aa_label* %0, %struct.aa_label* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aa_label*, align 8
  %5 = alloca %struct.aa_label*, align 8
  %6 = alloca %struct.label_it, align 4
  store %struct.aa_label* %0, %struct.aa_label** %4, align 8
  store %struct.aa_label* %1, %struct.aa_label** %5, align 8
  %7 = bitcast %struct.label_it* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 4, i1 false)
  %8 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %9 = icmp ne %struct.aa_label* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @AA_BUG(i32 %11)
  %13 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %14 = icmp ne %struct.aa_label* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @AA_BUG(i32 %16)
  %18 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %19 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %20 = icmp eq %struct.aa_label* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.aa_label*, %struct.aa_label** %4, align 8
  %24 = load %struct.aa_label*, %struct.aa_label** %5, align 8
  %25 = call i32* @__aa_label_next_not_in_set(%struct.label_it* %6, %struct.aa_label* %23, %struct.aa_label* %24)
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %21
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @AA_BUG(i32) #2

declare dso_local i32* @__aa_label_next_not_in_set(%struct.label_it*, %struct.aa_label*, %struct.aa_label*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
