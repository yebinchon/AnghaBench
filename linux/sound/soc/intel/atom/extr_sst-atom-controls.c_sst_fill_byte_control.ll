; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_fill_byte_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_fill_byte_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_data = type { %struct.TYPE_2__*, %struct.snd_sst_bytes_v2* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_sst_bytes_v2 = type { i32, i32, i8*, i8*, i8*, i8*, i32 }

@SST_CMD_BYTES_SET = common dso_local global i32 0, align 4
@SST_MAX_BIN_BYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"command length too big (%u)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"writing to lpe: \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_data*, i8*, i8*, i8*, i8*, i32, i8*)* @sst_fill_byte_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_fill_byte_control(%struct.sst_data* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sst_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.snd_sst_bytes_v2*, align 8
  store %struct.sst_data* %0, %struct.sst_data** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  %17 = load %struct.sst_data*, %struct.sst_data** %9, align 8
  %18 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %17, i32 0, i32 1
  %19 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %18, align 8
  store %struct.snd_sst_bytes_v2* %19, %struct.snd_sst_bytes_v2** %16, align 8
  %20 = load i32, i32* @SST_CMD_BYTES_SET, align 4
  %21 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %16, align 8
  %22 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %16, align 8
  %25 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %16, align 8
  %28 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %16, align 8
  %31 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %16, align 8
  %34 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = load i32, i32* @SST_MAX_BIN_BYTES, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 48
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %7
  %42 = load %struct.sst_data*, %struct.sst_data** %9, align 8
  %43 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %8, align 4
  br label %67

50:                                               ; preds = %7
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %16, align 8
  %53 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %16, align 8
  %55 = getelementptr inbounds %struct.snd_sst_bytes_v2, %struct.snd_sst_bytes_v2* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %15, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @memcpy(i32 %56, i8* %57, i32 %58)
  %60 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %61 = load %struct.snd_sst_bytes_v2*, %struct.snd_sst_bytes_v2** %16, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 48
  %65 = trunc i64 %64 to i32
  %66 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %60, %struct.snd_sst_bytes_v2* %61, i32 %65)
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %50, %41
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, %struct.snd_sst_bytes_v2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
