; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_common_file_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lsm.c_common_file_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.file = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.aa_label = type { i32 }

@aa_null = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.file*, i32)* @common_file_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_file_perm(i8* %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aa_label*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.file* %1, %struct.file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.file*, %struct.file** %6, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @aa_null, i32 0, i32 0), align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %29

19:                                               ; preds = %3
  %20 = call %struct.aa_label* (...) @__begin_current_label_crit_section()
  store %struct.aa_label* %20, %struct.aa_label** %8, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %23 = load %struct.file*, %struct.file** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @aa_file_perm(i8* %21, %struct.aa_label* %22, %struct.file* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.aa_label*, %struct.aa_label** %8, align 8
  %27 = call i32 @__end_current_label_crit_section(%struct.aa_label* %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.aa_label* @__begin_current_label_crit_section(...) #1

declare dso_local i32 @aa_file_perm(i8*, %struct.aa_label*, %struct.file*, i32) #1

declare dso_local i32 @__end_current_label_crit_section(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
