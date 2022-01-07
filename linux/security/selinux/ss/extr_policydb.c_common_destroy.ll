; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_common_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_common_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.common_datum = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@perm_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @common_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_destroy(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.common_datum*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @kfree(i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.common_datum*
  store %struct.common_datum* %14, %struct.common_datum** %7, align 8
  %15 = load %struct.common_datum*, %struct.common_datum** %7, align 8
  %16 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @perm_destroy, align 4
  %20 = call i32 @hashtab_map(i32 %18, i32 %19, i32* null)
  %21 = load %struct.common_datum*, %struct.common_datum** %7, align 8
  %22 = getelementptr inbounds %struct.common_datum, %struct.common_datum* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @hashtab_destroy(i32 %24)
  br label %26

26:                                               ; preds = %12, %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @kfree(i8* %27)
  ret i32 0
}

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hashtab_map(i32, i32, i32*) #1

declare dso_local i32 @hashtab_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
