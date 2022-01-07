; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_sysfs_show.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_padata.c_padata_sysfs_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }
%struct.padata_instance = type { i32 }
%struct.padata_sysfs_entry = type { i32 (%struct.padata_instance.0*, %struct.attribute.1*, i8*)* }
%struct.padata_instance.0 = type opaque
%struct.attribute.1 = type opaque

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i8*)* @padata_sysfs_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @padata_sysfs_show(%struct.kobject* %0, %struct.attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.kobject*, align 8
  %5 = alloca %struct.attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.padata_instance*, align 8
  %8 = alloca %struct.padata_sysfs_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %4, align 8
  store %struct.attribute* %1, %struct.attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %9, align 4
  %12 = load %struct.kobject*, %struct.kobject** %4, align 8
  %13 = call %struct.padata_instance* @kobj2pinst(%struct.kobject* %12)
  store %struct.padata_instance* %13, %struct.padata_instance** %7, align 8
  %14 = load %struct.attribute*, %struct.attribute** %5, align 8
  %15 = call %struct.padata_sysfs_entry* @attr2pentry(%struct.attribute* %14)
  store %struct.padata_sysfs_entry* %15, %struct.padata_sysfs_entry** %8, align 8
  %16 = load %struct.padata_sysfs_entry*, %struct.padata_sysfs_entry** %8, align 8
  %17 = getelementptr inbounds %struct.padata_sysfs_entry, %struct.padata_sysfs_entry* %16, i32 0, i32 0
  %18 = load i32 (%struct.padata_instance.0*, %struct.attribute.1*, i8*)*, i32 (%struct.padata_instance.0*, %struct.attribute.1*, i8*)** %17, align 8
  %19 = icmp ne i32 (%struct.padata_instance.0*, %struct.attribute.1*, i8*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.padata_sysfs_entry*, %struct.padata_sysfs_entry** %8, align 8
  %22 = getelementptr inbounds %struct.padata_sysfs_entry, %struct.padata_sysfs_entry* %21, i32 0, i32 0
  %23 = load i32 (%struct.padata_instance.0*, %struct.attribute.1*, i8*)*, i32 (%struct.padata_instance.0*, %struct.attribute.1*, i8*)** %22, align 8
  %24 = load %struct.padata_instance*, %struct.padata_instance** %7, align 8
  %25 = bitcast %struct.padata_instance* %24 to %struct.padata_instance.0*
  %26 = load %struct.attribute*, %struct.attribute** %5, align 8
  %27 = bitcast %struct.attribute* %26 to %struct.attribute.1*
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 %23(%struct.padata_instance.0* %25, %struct.attribute.1* %27, i8* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %20, %3
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local %struct.padata_instance* @kobj2pinst(%struct.kobject*) #1

declare dso_local %struct.padata_sysfs_entry* @attr2pentry(%struct.attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
