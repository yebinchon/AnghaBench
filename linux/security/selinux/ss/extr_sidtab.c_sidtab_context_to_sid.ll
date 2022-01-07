; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_context_to_sid.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_context_to_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab = type { %struct.sidtab_isid_entry* }
%struct.sidtab_isid_entry = type { i32, i64 }
%struct.context = type { i32 }

@SECINITSID_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sidtab_context_to_sid(%struct.sidtab* %0, %struct.context* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sidtab*, align 8
  %6 = alloca %struct.context*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.sidtab_isid_entry*, align 8
  store %struct.sidtab* %0, %struct.sidtab** %5, align 8
  store %struct.context* %1, %struct.context** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @SECINITSID_NUM, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %17 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %16, i32 0, i32 0
  %18 = load %struct.sidtab_isid_entry*, %struct.sidtab_isid_entry** %17, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.sidtab_isid_entry, %struct.sidtab_isid_entry* %18, i64 %19
  store %struct.sidtab_isid_entry* %20, %struct.sidtab_isid_entry** %10, align 8
  %21 = load %struct.sidtab_isid_entry*, %struct.sidtab_isid_entry** %10, align 8
  %22 = getelementptr inbounds %struct.sidtab_isid_entry, %struct.sidtab_isid_entry* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load %struct.context*, %struct.context** %6, align 8
  %27 = load %struct.sidtab_isid_entry*, %struct.sidtab_isid_entry** %10, align 8
  %28 = getelementptr inbounds %struct.sidtab_isid_entry, %struct.sidtab_isid_entry* %27, i32 0, i32 0
  %29 = call i64 @context_cmp(%struct.context* %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, 1
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  store i32 0, i32* %4, align 4
  br label %54

35:                                               ; preds = %25, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  br label %11

39:                                               ; preds = %11
  %40 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %41 = load %struct.context*, %struct.context** %6, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = call i32 @sidtab_reverse_lookup(%struct.sidtab* %40, %struct.context* %41, i64* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %54

48:                                               ; preds = %39
  %49 = load i64, i64* @SECINITSID_NUM, align 8
  %50 = add i64 %49, 1
  %51 = load i64*, i64** %7, align 8
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, %50
  store i64 %53, i64* %51, align 8
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %48, %46, %31
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i64 @context_cmp(%struct.context*, i32*) #1

declare dso_local i32 @sidtab_reverse_lookup(%struct.sidtab*, %struct.context*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
