; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_set_initial.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_sidtab.c_sidtab_set_initial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sidtab = type { %struct.sidtab_isid_entry* }
%struct.sidtab_isid_entry = type { i32, i32 }
%struct.context = type { i32 }

@SECINITSID_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sidtab_set_initial(%struct.sidtab* %0, i32 %1, %struct.context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sidtab*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.context*, align 8
  %8 = alloca %struct.sidtab_isid_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.sidtab* %0, %struct.sidtab** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.context* %2, %struct.context** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SECINITSID_NUM, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %38

19:                                               ; preds = %12
  %20 = load %struct.sidtab*, %struct.sidtab** %5, align 8
  %21 = getelementptr inbounds %struct.sidtab, %struct.sidtab* %20, i32 0, i32 0
  %22 = load %struct.sidtab_isid_entry*, %struct.sidtab_isid_entry** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sidtab_isid_entry, %struct.sidtab_isid_entry* %22, i64 %25
  store %struct.sidtab_isid_entry* %26, %struct.sidtab_isid_entry** %8, align 8
  %27 = load %struct.sidtab_isid_entry*, %struct.sidtab_isid_entry** %8, align 8
  %28 = getelementptr inbounds %struct.sidtab_isid_entry, %struct.sidtab_isid_entry* %27, i32 0, i32 1
  %29 = load %struct.context*, %struct.context** %7, align 8
  %30 = call i32 @context_cpy(i32* %28, %struct.context* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %19
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %19
  %36 = load %struct.sidtab_isid_entry*, %struct.sidtab_isid_entry** %8, align 8
  %37 = getelementptr inbounds %struct.sidtab_isid_entry, %struct.sidtab_isid_entry* %36, i32 0, i32 0
  store i32 1, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %33, %16
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @context_cpy(i32*, %struct.context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
