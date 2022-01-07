; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.c_check_audiophile_booted.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.c_check_audiophile_booted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@CSR_MODEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"FW Audiophile Bootloader\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*)* @check_audiophile_booted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_audiophile_booted(%struct.fw_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_unit*, align 8
  %4 = alloca [28 x i8], align 16
  store %struct.fw_unit* %0, %struct.fw_unit** %3, align 8
  %5 = bitcast [28 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 28, i1 false)
  %6 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %7 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CSR_MODEL, align 4
  %10 = getelementptr inbounds [28 x i8], [28 x i8]* %4, i64 0, i64 0
  %11 = call i64 @fw_csr_string(i32 %8, i32 %9, i8* %10, i32 28)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  %15 = getelementptr inbounds [28 x i8], [28 x i8]* %4, i64 0, i64 0
  %16 = call i64 @strncmp(i8* %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 24)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %14, %13
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @fw_csr_string(i32, i32, i8*, i32) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
