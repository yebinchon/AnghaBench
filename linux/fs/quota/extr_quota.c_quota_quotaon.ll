; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_quota_quotaon.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota.c_quota_quotaon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i32 (%struct.super_block*, i32)* }
%struct.path = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, %struct.path*)* @quota_quotaon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_quotaon(%struct.super_block* %0, i32 %1, i32 %2, %struct.path* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.path*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.path* %3, %struct.path** %9, align 8
  %10 = load %struct.super_block*, %struct.super_block** %6, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.super_block*, i32, i32, %struct.path*)**
  %15 = load i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32, i32, %struct.path*)** %14, align 8
  %16 = icmp ne i32 (%struct.super_block*, i32, i32, %struct.path*)* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %4
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.super_block*, i32)* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %63

27:                                               ; preds = %17, %4
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = getelementptr inbounds %struct.super_block, %struct.super_block* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %31, align 8
  %33 = icmp ne i32 (%struct.super_block*, i32)* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.super_block*, %struct.super_block** %6, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)** %38, align 8
  %40 = load %struct.super_block*, %struct.super_block** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @qtype_enforce_flag(i32 %41)
  %43 = call i32 %39(%struct.super_block* %40, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %63

44:                                               ; preds = %27
  %45 = load %struct.path*, %struct.path** %9, align 8
  %46 = call i64 @IS_ERR(%struct.path* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.path*, %struct.path** %9, align 8
  %50 = call i32 @PTR_ERR(%struct.path* %49)
  store i32 %50, i32* %5, align 4
  br label %63

51:                                               ; preds = %44
  %52 = load %struct.super_block*, %struct.super_block** %6, align 8
  %53 = getelementptr inbounds %struct.super_block, %struct.super_block* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.super_block*, i32, i32, %struct.path*)**
  %57 = load i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32, i32, %struct.path*)** %56, align 8
  %58 = load %struct.super_block*, %struct.super_block** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.path*, %struct.path** %9, align 8
  %62 = call i32 %57(%struct.super_block* %58, i32 %59, i32 %60, %struct.path* %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %51, %48, %34, %24
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @qtype_enforce_flag(i32) #1

declare dso_local i64 @IS_ERR(%struct.path*) #1

declare dso_local i32 @PTR_ERR(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
