; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/extr_cmp.c_cmp_connection_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmp_connection = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_unit = type { i32 }

@TCODE_READ_QUADLET_REQUEST = common dso_local global i32 0, align 4
@MPR_PLUGS_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MPR_SPEED_MASK = common dso_local global i32 0, align 4
@MPR_SPEED_SHIFT = common dso_local global i32 0, align 4
@SCODE_BETA = common dso_local global i32 0, align 4
@MPR_XSPEED_MASK = common dso_local global i32 0, align 4
@MPR_XSPEED_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_connection_init(%struct.cmp_connection* %0, %struct.fw_unit* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmp_connection*, align 8
  %7 = alloca %struct.fw_unit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cmp_connection* %0, %struct.cmp_connection** %6, align 8
  store %struct.fw_unit* %1, %struct.fw_unit** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %15 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.fw_unit*, %struct.fw_unit** %7, align 8
  %17 = load i32, i32* @TCODE_READ_QUADLET_REQUEST, align 4
  %18 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %19 = call i32 @mpr_address(%struct.cmp_connection* %18)
  %20 = call i32 @snd_fw_transaction(%struct.fw_unit* %16, i32 %17, i32 %19, i32* %10, i32 4, i32 0)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %5, align 4
  br label %80

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @MPR_PLUGS_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp uge i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %80

36:                                               ; preds = %25
  %37 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %38 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %37, i32 0, i32 6
  %39 = load %struct.fw_unit*, %struct.fw_unit** %7, align 8
  %40 = call i32 @fw_iso_resources_init(i32* %38, %struct.fw_unit* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %80

45:                                               ; preds = %36
  %46 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %47 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  %48 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %49 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %48, i32 0, i32 5
  %50 = call i32 @mutex_init(i32* %49)
  %51 = call i32 @cpu_to_be32(i32 -2147483648)
  %52 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %53 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %56 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MPR_SPEED_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @MPR_SPEED_SHIFT, align 4
  %61 = lshr i32 %59, %60
  %62 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %63 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %65 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SCODE_BETA, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %45
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @MPR_XSPEED_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @MPR_XSPEED_SHIFT, align 4
  %74 = lshr i32 %72, %73
  %75 = load %struct.cmp_connection*, %struct.cmp_connection** %6, align 8
  %76 = getelementptr inbounds %struct.cmp_connection, %struct.cmp_connection* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %69, %45
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %43, %33, %23
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @snd_fw_transaction(%struct.fw_unit*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mpr_address(%struct.cmp_connection*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @fw_iso_resources_init(i32*, %struct.fw_unit*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
