; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_quota_quotaoff.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_quota_quotaoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, {}* }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @quota_quotaoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_quotaoff(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to i32 (%struct.super_block*, i32)**
  %11 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.super_block*, i32)* %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %2
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = bitcast {}** %17 to i32 (%struct.super_block*, i32)**
  %19 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.super_block*, i32)* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @ENOSYS, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %53

24:                                               ; preds = %13, %2
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = bitcast {}** %28 to i32 (%struct.super_block*, i32)**
  %30 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.super_block*, i32)* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %24
  %33 = load %struct.super_block*, %struct.super_block** %4, align 8
  %34 = getelementptr inbounds %struct.super_block, %struct.super_block* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = bitcast {}** %36 to i32 (%struct.super_block*, i32)**
  %38 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %37, align 8
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @qtype_enforce_flag(i32 %40)
  %42 = call i32 %38(%struct.super_block* %39, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %24
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = getelementptr inbounds %struct.super_block, %struct.super_block* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to i32 (%struct.super_block*, i32)**
  %49 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %48, align 8
  %50 = load %struct.super_block*, %struct.super_block** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 %49(%struct.super_block* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %43, %32, %21
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @qtype_enforce_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
