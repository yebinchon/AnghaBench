; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_string_to_security_class.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_string_to_security_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.class_datum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_to_security_class(%struct.policydb* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.policydb*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.class_datum*, align 8
  store %struct.policydb* %0, %struct.policydb** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.policydb*, %struct.policydb** %4, align 8
  %8 = getelementptr inbounds %struct.policydb, %struct.policydb* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.class_datum* @hashtab_search(i32 %10, i8* %11)
  store %struct.class_datum* %12, %struct.class_datum** %6, align 8
  %13 = load %struct.class_datum*, %struct.class_datum** %6, align 8
  %14 = icmp ne %struct.class_datum* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.class_datum*, %struct.class_datum** %6, align 8
  %18 = getelementptr inbounds %struct.class_datum, %struct.class_datum* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.class_datum* @hashtab_search(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
