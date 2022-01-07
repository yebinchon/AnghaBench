; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_rangetr_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_rangetr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab = type { i32 }
%struct.range_trans = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashtab*, i8*, i8*)* @rangetr_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rangetr_cmp(%struct.hashtab* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hashtab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.range_trans*, align 8
  %9 = alloca %struct.range_trans*, align 8
  %10 = alloca i32, align 4
  store %struct.hashtab* %0, %struct.hashtab** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.range_trans*
  store %struct.range_trans* %12, %struct.range_trans** %8, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.range_trans*
  store %struct.range_trans* %14, %struct.range_trans** %9, align 8
  %15 = load %struct.range_trans*, %struct.range_trans** %8, align 8
  %16 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.range_trans*, %struct.range_trans** %9, align 8
  %19 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %3
  %27 = load %struct.range_trans*, %struct.range_trans** %8, align 8
  %28 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.range_trans*, %struct.range_trans** %9, align 8
  %31 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %26
  %39 = load %struct.range_trans*, %struct.range_trans** %8, align 8
  %40 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.range_trans*, %struct.range_trans** %9, align 8
  %43 = getelementptr inbounds %struct.range_trans, %struct.range_trans* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %41, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %38, %36, %24
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
