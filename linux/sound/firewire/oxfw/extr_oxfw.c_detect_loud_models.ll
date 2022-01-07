; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw.c_detect_loud_models.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw.c_detect_loud_models.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"Onyxi\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Onyx-i\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Onyx 1640i\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"d.Pro\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Mackie Onyx Satellite\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Tapco LINK.firewire 4x6\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"U.420\00", align 1
@__const.detect_loud_models.models = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)], align 16
@CSR_MODEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*)* @detect_loud_models to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_loud_models(%struct.fw_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fw_unit*, align 8
  %4 = alloca [7 x i8*], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %3, align 8
  %7 = bitcast [7 x i8*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 16 bitcast ([7 x i8*]* @__const.detect_loud_models.models to i8*), i64 56, i1 false)
  %8 = load %struct.fw_unit*, %struct.fw_unit** %3, align 8
  %9 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CSR_MODEL, align 4
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %13 = call i32 @fw_csr_string(i32 %10, i32 %11, i8* %12, i32 32)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

17:                                               ; preds = %1
  %18 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 0
  %19 = getelementptr inbounds [7 x i8*], [7 x i8*]* %4, i64 0, i64 0
  %20 = call i32 @ARRAY_SIZE(i8** %19)
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %22 = call i64 @match_string(i8** %18, i32 %20, i8* %21)
  %23 = icmp sge i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %17, %16
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @fw_csr_string(i32, i32, i8*, i32) #2

declare dso_local i64 @match_string(i8**, i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
