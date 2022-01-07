; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima.h_ima_appraise_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima.h_ima_appraise_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.integrity_iint_cache = type { i32 }
%struct.file = type { i32 }
%struct.evm_ima_xattr_data = type { i32 }
%struct.modsig = type { i32 }

@INTEGRITY_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.integrity_iint_cache*, %struct.file*, i8*, %struct.evm_ima_xattr_data*, i32, %struct.modsig*)* @ima_appraise_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ima_appraise_measurement(i32 %0, %struct.integrity_iint_cache* %1, %struct.file* %2, i8* %3, %struct.evm_ima_xattr_data* %4, i32 %5, %struct.modsig* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.integrity_iint_cache*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.evm_ima_xattr_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.modsig*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.integrity_iint_cache* %1, %struct.integrity_iint_cache** %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.evm_ima_xattr_data* %4, %struct.evm_ima_xattr_data** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.modsig* %6, %struct.modsig** %14, align 8
  %15 = load i32, i32* @INTEGRITY_UNKNOWN, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
