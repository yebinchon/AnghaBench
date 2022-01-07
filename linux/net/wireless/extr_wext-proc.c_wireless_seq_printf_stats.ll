; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_wext-proc.c_wireless_seq_printf_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_wext-proc.c_wireless_seq_printf_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iw_statistics = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.seq_file = type { i32 }
%struct.net_device = type { i32, i64, i64 }

@wireless_seq_printf_stats.nullstats = internal global %struct.iw_statistics zeroinitializer, align 8
@.str = private unnamed_addr constant [59 x i8] c"%6s: %04x  %3d%c  %3d%c  %3d%c  %6d %6d %6d %6d %6d   %6d\0A\00", align 1
@IW_QUAL_QUAL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_DBM = common dso_local global i32 0, align 4
@IW_QUAL_LEVEL_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_NOISE_UPDATED = common dso_local global i32 0, align 4
@IW_QUAL_ALL_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.net_device*)* @wireless_seq_printf_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wireless_seq_printf_stats(%struct.seq_file* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.iw_statistics*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.iw_statistics* @get_wireless_stats(%struct.net_device* %6)
  store %struct.iw_statistics* %7, %struct.iw_statistics** %5, align 8
  %8 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %9 = icmp ne %struct.iw_statistics* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %2
  %12 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %13 = icmp ne %struct.iw_statistics* %12, null
  br i1 %13, label %14, label %122

14:                                               ; preds = %11
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %20 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %23 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %27 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IW_QUAL_QUAL_UPDATED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 46, i32 32
  %35 = trunc i32 %34 to i8
  %36 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %37 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %41 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IW_QUAL_DBM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 256, i32 0
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %39, %49
  %51 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %52 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IW_QUAL_LEVEL_UPDATED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 46, i32 32
  %60 = trunc i32 %59 to i8
  %61 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %62 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %66 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @IW_QUAL_DBM, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 256, i32 0
  %74 = sext i32 %73 to i64
  %75 = sub nsw i64 %64, %74
  %76 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %77 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IW_QUAL_NOISE_UPDATED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 46, i32 32
  %85 = trunc i32 %84 to i8
  %86 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %87 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %91 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %95 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %99 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %103 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %107 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @seq_printf(%struct.seq_file* %15, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i32 %25, i8 signext %35, i64 %50, i8 signext %60, i64 %75, i8 signext %85, i32 %89, i32 %93, i32 %97, i32 %101, i32 %105, i32 %109)
  %111 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %112 = icmp ne %struct.iw_statistics* %111, @wireless_seq_printf_stats.nullstats
  br i1 %112, label %113, label %121

113:                                              ; preds = %14
  %114 = load i32, i32* @IW_QUAL_ALL_UPDATED, align 4
  %115 = xor i32 %114, -1
  %116 = load %struct.iw_statistics*, %struct.iw_statistics** %5, align 8
  %117 = getelementptr inbounds %struct.iw_statistics, %struct.iw_statistics* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, %115
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %113, %14
  br label %122

122:                                              ; preds = %121, %11
  ret void
}

declare dso_local %struct.iw_statistics* @get_wireless_stats(%struct.net_device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i8 signext, i64, i8 signext, i64, i8 signext, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
