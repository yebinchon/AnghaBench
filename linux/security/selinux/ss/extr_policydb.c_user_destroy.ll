; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_user_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_user_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_datum = type { %struct.TYPE_4__, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @user_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @user_destroy(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.user_datum*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @kfree(i8* %8)
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.user_datum*
  store %struct.user_datum* %14, %struct.user_datum** %7, align 8
  %15 = load %struct.user_datum*, %struct.user_datum** %7, align 8
  %16 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %15, i32 0, i32 2
  %17 = call i32 @ebitmap_destroy(i32* %16)
  %18 = load %struct.user_datum*, %struct.user_datum** %7, align 8
  %19 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @ebitmap_destroy(i32* %23)
  %25 = load %struct.user_datum*, %struct.user_datum** %7, align 8
  %26 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @ebitmap_destroy(i32* %30)
  %32 = load %struct.user_datum*, %struct.user_datum** %7, align 8
  %33 = getelementptr inbounds %struct.user_datum, %struct.user_datum* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @ebitmap_destroy(i32* %34)
  br label %36

36:                                               ; preds = %12, %3
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @kfree(i8* %37)
  ret i32 0
}

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ebitmap_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
