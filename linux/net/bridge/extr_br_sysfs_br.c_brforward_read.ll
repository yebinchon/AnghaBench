; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_br.c_brforward_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_sysfs_br.c_brforward_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.device = type { i32 }
%struct.net_bridge = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @brforward_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brforward_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.net_bridge*, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.kobject*, %struct.kobject** %9, align 8
  %18 = call %struct.device* @kobj_to_dev(%struct.kobject* %17)
  store %struct.device* %18, %struct.device** %14, align 8
  %19 = load %struct.device*, %struct.device** %14, align 8
  %20 = call %struct.net_bridge* @to_bridge(%struct.device* %19)
  store %struct.net_bridge* %20, %struct.net_bridge** %15, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = urem i64 %22, 4
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %47

28:                                               ; preds = %6
  %29 = load %struct.net_bridge*, %struct.net_bridge** %15, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %13, align 8
  %32 = udiv i64 %31, 4
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  %37 = call i32 @br_fdb_fillbuf(%struct.net_bridge* %29, i8* %30, i64 %32, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %40, %28
  %46 = load i32, i32* %16, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %25
  %48 = load i32, i32* %7, align 4
  ret i32 %48
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.net_bridge* @to_bridge(%struct.device*) #1

declare dso_local i32 @br_fdb_fillbuf(%struct.net_bridge*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
