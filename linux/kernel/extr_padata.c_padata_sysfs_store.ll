; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_sysfs_store.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_sysfs_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.padata_instance = type { i32 }
%struct.padata_sysfs_entry = type { i32 (%struct.padata_instance.0*, %struct.attribute.1*, i8*, i64)*, i64 }
%struct.padata_instance.0 = type opaque
%struct.attribute.1 = type opaque

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*, i64)* @padata_sysfs_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padata_sysfs_store(%struct.kobject* %0, %struct.attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.padata_instance*, align 8
  %10 = alloca %struct.padata_sysfs_entry*, align 8
  %11 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* @EIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.kobject*, %struct.kobject** %5, align 8
  %15 = call %struct.padata_instance* @kobj2pinst(%struct.kobject* %14)
  store %struct.padata_instance* %15, %struct.padata_instance** %9, align 8
  %16 = load %struct.attribute*, %struct.attribute** %6, align 8
  %17 = call %struct.padata_sysfs_entry* @attr2pentry(%struct.attribute* %16)
  store %struct.padata_sysfs_entry* %17, %struct.padata_sysfs_entry** %10, align 8
  %18 = load %struct.padata_sysfs_entry*, %struct.padata_sysfs_entry** %10, align 8
  %19 = getelementptr inbounds %struct.padata_sysfs_entry, %struct.padata_sysfs_entry* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.padata_sysfs_entry*, %struct.padata_sysfs_entry** %10, align 8
  %24 = getelementptr inbounds %struct.padata_sysfs_entry, %struct.padata_sysfs_entry* %23, i32 0, i32 0
  %25 = load i32 (%struct.padata_instance.0*, %struct.attribute.1*, i8*, i64)*, i32 (%struct.padata_instance.0*, %struct.attribute.1*, i8*, i64)** %24, align 8
  %26 = load %struct.padata_instance*, %struct.padata_instance** %9, align 8
  %27 = bitcast %struct.padata_instance* %26 to %struct.padata_instance.0*
  %28 = load %struct.attribute*, %struct.attribute** %6, align 8
  %29 = bitcast %struct.attribute* %28 to %struct.attribute.1*
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 %25(%struct.padata_instance.0* %27, %struct.attribute.1* %29, i8* %30, i64 %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %22, %4
  %34 = load i32, i32* %11, align 4
  ret i32 %34
}

declare dso_local %struct.padata_instance* @kobj2pinst(%struct.kobject*) #1

declare dso_local %struct.padata_sysfs_entry* @attr2pentry(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
