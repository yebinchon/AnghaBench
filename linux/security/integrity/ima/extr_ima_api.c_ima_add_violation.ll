; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_api.c_ima_add_violation.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_api.c_ima_add_violation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.file = type { i32 }
%struct.integrity_iint_cache = type { i32 }
%struct.ima_template_entry = type { i32 }
%struct.inode = type { i32 }
%struct.ima_event_data = type { i8*, i8*, %struct.file*, %struct.integrity_iint_cache* }

@ima_htable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CONFIG_IMA_MEASURE_PCR_IDX = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_PCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_add_violation(%struct.file* %0, i8* %1, %struct.integrity_iint_cache* %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.integrity_iint_cache*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ima_template_entry*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.ima_event_data, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.integrity_iint_cache* %2, %struct.integrity_iint_cache** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = call %struct.inode* @file_inode(%struct.file* %16)
  store %struct.inode* %17, %struct.inode** %12, align 8
  %18 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %13, i32 0, i32 0
  %19 = load i8*, i8** %7, align 8
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %13, i32 0, i32 1
  %21 = load i8*, i8** %10, align 8
  store i8* %21, i8** %20, align 8
  %22 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %13, i32 0, i32 2
  %23 = load %struct.file*, %struct.file** %6, align 8
  store %struct.file* %23, %struct.file** %22, align 8
  %24 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %13, i32 0, i32 3
  %25 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %8, align 8
  store %struct.integrity_iint_cache* %25, %struct.integrity_iint_cache** %24, align 8
  store i32 1, i32* %14, align 4
  %26 = call i32 @atomic_long_inc(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ima_htable, i32 0, i32 0))
  %27 = call i32 @ima_alloc_init_template(%struct.ima_event_data* %13, %struct.ima_template_entry** %11, i32* null)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %15, align 4
  br label %46

33:                                               ; preds = %5
  %34 = load %struct.ima_template_entry*, %struct.ima_template_entry** %11, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.inode*, %struct.inode** %12, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* @CONFIG_IMA_MEASURE_PCR_IDX, align 4
  %39 = call i32 @ima_store_template(%struct.ima_template_entry* %34, i32 %35, %struct.inode* %36, i8* %37, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.ima_template_entry*, %struct.ima_template_entry** %11, align 8
  %44 = call i32 @ima_free_template_entry(%struct.ima_template_entry* %43)
  br label %45

45:                                               ; preds = %42, %33
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* @AUDIT_INTEGRITY_PCR, align 4
  %48 = load %struct.inode*, %struct.inode** %12, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 @integrity_audit_msg(i32 %47, %struct.inode* %48, i8* %49, i8* %50, i8* %51, i32 %52, i32 0)
  ret void
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @ima_alloc_init_template(%struct.ima_event_data*, %struct.ima_template_entry**, i32*) #1

declare dso_local i32 @ima_store_template(%struct.ima_template_entry*, i32, %struct.inode*, i8*, i32) #1

declare dso_local i32 @ima_free_template_entry(%struct.ima_template_entry*) #1

declare dso_local i32 @integrity_audit_msg(i32, %struct.inode*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
