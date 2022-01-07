; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_string_to_av_perm.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_string_to_av_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.class_datum**, %struct.TYPE_6__ }
%struct.class_datum = type { %struct.TYPE_5__, %struct.common_datum* }
%struct.TYPE_5__ = type { i32 }
%struct.common_datum = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.perm_datum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_to_av_perm(%struct.policydb* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.policydb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.class_datum*, align 8
  %9 = alloca %struct.perm_datum*, align 8
  %10 = alloca %struct.common_datum*, align 8
  store %struct.policydb* %0, %struct.policydb** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.perm_datum* null, %struct.perm_datum** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.policydb*, %struct.policydb** %5, align 8
  %16 = getelementptr inbounds %struct.policydb, %struct.policydb* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %62

21:                                               ; preds = %13
  %22 = load %struct.policydb*, %struct.policydb** %5, align 8
  %23 = getelementptr inbounds %struct.policydb, %struct.policydb* %22, i32 0, i32 0
  %24 = load %struct.class_datum**, %struct.class_datum*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.class_datum*, %struct.class_datum** %24, i64 %27
  %29 = load %struct.class_datum*, %struct.class_datum** %28, align 8
  store %struct.class_datum* %29, %struct.class_datum** %8, align 8
  %30 = load %struct.class_datum*, %struct.class_datum** %8, align 8
  %31 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %30, i32 0, i32 1
  %32 = load %struct.common_datum*, %struct.common_datum** %31, align 8
  store %struct.common_datum* %32, %struct.common_datum** %10, align 8
  %33 = load %struct.common_datum*, %struct.common_datum** %10, align 8
  %34 = icmp ne %struct.common_datum* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load %struct.common_datum*, %struct.common_datum** %10, align 8
  %37 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call %struct.perm_datum* @hashtab_search(i32 %39, i8* %40)
  store %struct.perm_datum* %41, %struct.perm_datum** %9, align 8
  br label %42

42:                                               ; preds = %35, %21
  %43 = load %struct.perm_datum*, %struct.perm_datum** %9, align 8
  %44 = icmp ne %struct.perm_datum* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load %struct.class_datum*, %struct.class_datum** %8, align 8
  %47 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call %struct.perm_datum* @hashtab_search(i32 %49, i8* %50)
  store %struct.perm_datum* %51, %struct.perm_datum** %9, align 8
  br label %52

52:                                               ; preds = %45, %42
  %53 = load %struct.perm_datum*, %struct.perm_datum** %9, align 8
  %54 = icmp ne %struct.perm_datum* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %62

56:                                               ; preds = %52
  %57 = load %struct.perm_datum*, %struct.perm_datum** %9, align 8
  %58 = getelementptr inbounds %struct.perm_datum, %struct.perm_datum* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %59, 1
  %61 = shl i32 1, %60
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %56, %55, %20
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.perm_datum* @hashtab_search(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
