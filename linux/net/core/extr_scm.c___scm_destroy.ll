; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_scm.c___scm_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_scm.c___scm_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scm_cookie = type { %struct.scm_fp_list* }
%struct.scm_fp_list = type { i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__scm_destroy(%struct.scm_cookie* %0) #0 {
  %2 = alloca %struct.scm_cookie*, align 8
  %3 = alloca %struct.scm_fp_list*, align 8
  %4 = alloca i32, align 4
  store %struct.scm_cookie* %0, %struct.scm_cookie** %2, align 8
  %5 = load %struct.scm_cookie*, %struct.scm_cookie** %2, align 8
  %6 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %5, i32 0, i32 0
  %7 = load %struct.scm_fp_list*, %struct.scm_fp_list** %6, align 8
  store %struct.scm_fp_list* %7, %struct.scm_fp_list** %3, align 8
  %8 = load %struct.scm_fp_list*, %struct.scm_fp_list** %3, align 8
  %9 = icmp ne %struct.scm_fp_list* %8, null
  br i1 %9, label %10, label %39

10:                                               ; preds = %1
  %11 = load %struct.scm_cookie*, %struct.scm_cookie** %2, align 8
  %12 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %11, i32 0, i32 0
  store %struct.scm_fp_list* null, %struct.scm_fp_list** %12, align 8
  %13 = load %struct.scm_fp_list*, %struct.scm_fp_list** %3, align 8
  %14 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %29, %10
  %18 = load i32, i32* %4, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load %struct.scm_fp_list*, %struct.scm_fp_list** %3, align 8
  %22 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @fput(i32 %27)
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  br label %17

32:                                               ; preds = %17
  %33 = load %struct.scm_fp_list*, %struct.scm_fp_list** %3, align 8
  %34 = getelementptr inbounds %struct.scm_fp_list, %struct.scm_fp_list* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @free_uid(i32 %35)
  %37 = load %struct.scm_fp_list*, %struct.scm_fp_list** %3, align 8
  %38 = call i32 @kfree(%struct.scm_fp_list* %37)
  br label %39

39:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @free_uid(i32) #1

declare dso_local i32 @kfree(%struct.scm_fp_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
