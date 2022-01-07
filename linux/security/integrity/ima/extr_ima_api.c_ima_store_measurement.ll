; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_api.c_ima_store_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_api.c_ima_store_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.integrity_iint_cache = type { i32, i32 }
%struct.file = type { i32 }
%struct.evm_ima_xattr_data = type { i32 }
%struct.modsig = type { i32 }
%struct.ima_template_desc = type { i32 }
%struct.inode = type { i32 }
%struct.ima_template_entry = type { i32 }
%struct.ima_event_data = type { i8*, i32, %struct.modsig*, %struct.evm_ima_xattr_data*, %struct.file*, %struct.integrity_iint_cache* }

@ima_store_measurement.op = internal constant [21 x i8] c"add_template_measure\00", align 16
@ima_store_measurement.audit_cause = internal constant [7 x i8] c"ENOMEM\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AUDIT_INTEGRITY_PCR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@IMA_MEASURED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ima_store_measurement(%struct.integrity_iint_cache* %0, %struct.file* %1, i8* %2, %struct.evm_ima_xattr_data* %3, i32 %4, %struct.modsig* %5, i32 %6, %struct.ima_template_desc* %7) #0 {
  %9 = alloca %struct.integrity_iint_cache*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.evm_ima_xattr_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.modsig*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ima_template_desc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.inode*, align 8
  %19 = alloca %struct.ima_template_entry*, align 8
  %20 = alloca %struct.ima_event_data, align 8
  %21 = alloca i32, align 4
  store %struct.integrity_iint_cache* %0, %struct.integrity_iint_cache** %9, align 8
  store %struct.file* %1, %struct.file** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.evm_ima_xattr_data* %3, %struct.evm_ima_xattr_data** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.modsig* %5, %struct.modsig** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.ima_template_desc* %7, %struct.ima_template_desc** %16, align 8
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %17, align 4
  %24 = load %struct.file*, %struct.file** %10, align 8
  %25 = call %struct.inode* @file_inode(%struct.file* %24)
  store %struct.inode* %25, %struct.inode** %18, align 8
  %26 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %20, i32 0, i32 0
  %27 = load i8*, i8** %11, align 8
  store i8* %27, i8** %26, align 8
  %28 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %20, i32 0, i32 1
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %20, i32 0, i32 2
  %31 = load %struct.modsig*, %struct.modsig** %14, align 8
  store %struct.modsig* %31, %struct.modsig** %30, align 8
  %32 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %20, i32 0, i32 3
  %33 = load %struct.evm_ima_xattr_data*, %struct.evm_ima_xattr_data** %12, align 8
  store %struct.evm_ima_xattr_data* %33, %struct.evm_ima_xattr_data** %32, align 8
  %34 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %20, i32 0, i32 4
  %35 = load %struct.file*, %struct.file** %10, align 8
  store %struct.file* %35, %struct.file** %34, align 8
  %36 = getelementptr inbounds %struct.ima_event_data, %struct.ima_event_data* %20, i32 0, i32 5
  %37 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %9, align 8
  store %struct.integrity_iint_cache* %37, %struct.integrity_iint_cache** %36, align 8
  store i32 0, i32* %21, align 4
  %38 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %9, align 8
  %39 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %15, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %8
  %46 = load %struct.modsig*, %struct.modsig** %14, align 8
  %47 = icmp ne %struct.modsig* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %99

49:                                               ; preds = %45, %8
  %50 = load %struct.ima_template_desc*, %struct.ima_template_desc** %16, align 8
  %51 = call i32 @ima_alloc_init_template(%struct.ima_event_data* %20, %struct.ima_template_entry** %19, %struct.ima_template_desc* %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @AUDIT_INTEGRITY_PCR, align 4
  %56 = load %struct.inode*, %struct.inode** %18, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @integrity_audit_msg(i32 %55, %struct.inode* %56, i8* %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @ima_store_measurement.op, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @ima_store_measurement.audit_cause, i64 0, i64 0), i32 %58, i32 0)
  br label %99

60:                                               ; preds = %49
  %61 = load %struct.ima_template_entry*, %struct.ima_template_entry** %19, align 8
  %62 = load i32, i32* %21, align 4
  %63 = load %struct.inode*, %struct.inode** %18, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @ima_store_template(%struct.ima_template_entry* %61, i32 %62, %struct.inode* %63, i8* %64, i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* @EEXIST, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %69, %60
  %75 = load %struct.file*, %struct.file** %10, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @O_DIRECT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @IMA_MEASURED, align 4
  %83 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %9, align 8
  %84 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %15, align 4
  %88 = shl i32 1, %87
  %89 = load %struct.integrity_iint_cache*, %struct.integrity_iint_cache** %9, align 8
  %90 = getelementptr inbounds %struct.integrity_iint_cache, %struct.integrity_iint_cache* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %81, %74, %69
  %94 = load i32, i32* %17, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.ima_template_entry*, %struct.ima_template_entry** %19, align 8
  %98 = call i32 @ima_free_template_entry(%struct.ima_template_entry* %97)
  br label %99

99:                                               ; preds = %48, %54, %96, %93
  ret void
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @ima_alloc_init_template(%struct.ima_event_data*, %struct.ima_template_entry**, %struct.ima_template_desc*) #1

declare dso_local i32 @integrity_audit_msg(i32, %struct.inode*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ima_store_template(%struct.ima_template_entry*, i32, %struct.inode*, i8*, i32) #1

declare dso_local i32 @ima_free_template_entry(%struct.ima_template_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
