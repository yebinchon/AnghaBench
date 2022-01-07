; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.c_get_saffire_spec.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob.c_get_saffire_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob_spec = type { i32 }
%struct.fw_unit = type { i32 }

@CSR_MODEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"SaffireLE\00", align 1
@saffire_le_spec = common dso_local global %struct.snd_bebob_spec zeroinitializer, align 4
@saffire_spec = common dso_local global %struct.snd_bebob_spec zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.snd_bebob_spec* (%struct.fw_unit*)* @get_saffire_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.snd_bebob_spec* @get_saffire_spec(%struct.fw_unit* %0) #0 {
  %2 = alloca %struct.snd_bebob_spec*, align 8
  %3 = alloca %struct.fw_unit*, align 8
  %4 = alloca [24 x i8], align 16
  store %struct.fw_unit* %0, %struct.fw_unit** %3, align 8
  %5 = bitcast [24 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 24, i1 false)
  %6 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %7 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CSR_MODEL, align 4
  %10 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %11 = call i64 @fw_csr_string(i32 %8, i32 %9, i8* %10, i32 24)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.snd_bebob_spec* null, %struct.snd_bebob_spec** %2, align 8
  br label %20

14:                                               ; preds = %1
  %15 = getelementptr inbounds [24 x i8], [24 x i8]* %4, i64 0, i64 0
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.snd_bebob_spec* @saffire_le_spec, %struct.snd_bebob_spec** %2, align 8
  br label %20

19:                                               ; preds = %14
  store %struct.snd_bebob_spec* @saffire_spec, %struct.snd_bebob_spec** %2, align 8
  br label %20

20:                                               ; preds = %19, %18, %13
  %21 = load %struct.snd_bebob_spec*, %struct.snd_bebob_spec** %2, align 8
  ret %struct.snd_bebob_spec* %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @fw_csr_string(i32, i32, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
