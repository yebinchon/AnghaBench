; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_check_snoop_available.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_azx_check_snoop_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, i32, i64, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@hda_snoop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Force to %s mode by module option\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"snoop\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"non-snoop\00", align 1
@AZX_SNOOP_TYPE_NONE = common dso_local global i64 0, align 8
@AZX_DRIVER_VIA = common dso_local global i64 0, align 8
@AZX_DCAPS_SNOOP_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Force to non-snoop mode\0A\00", align 1
@AZX_DRIVER_CMEDIA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*)* @azx_check_snoop_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @azx_check_snoop_available(%struct.azx* %0) #0 {
  %2 = alloca %struct.azx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %2, align 8
  %5 = load i32, i32* @hda_snoop, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.azx*, %struct.azx** %2, align 8
  %10 = getelementptr inbounds %struct.azx, %struct.azx* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 (i32, i8*, ...) @dev_info(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.azx*, %struct.azx** %2, align 8
  %21 = getelementptr inbounds %struct.azx, %struct.azx* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.azx*, %struct.azx** %2, align 8
  %27 = getelementptr inbounds %struct.azx, %struct.azx* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %93

28:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %29 = load %struct.azx*, %struct.azx** %2, align 8
  %30 = call i64 @azx_get_snoop_type(%struct.azx* %29)
  %31 = load i64, i64* @AZX_SNOOP_TYPE_NONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load %struct.azx*, %struct.azx** %2, align 8
  %35 = getelementptr inbounds %struct.azx, %struct.azx* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AZX_DRIVER_VIA, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load %struct.azx*, %struct.azx** %2, align 8
  %41 = getelementptr inbounds %struct.azx, %struct.azx* %40, i32 0, i32 5
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = call i32 @pci_read_config_byte(%struct.TYPE_4__* %42, i32 66, i32* %4)
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 128
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %39
  %48 = load %struct.azx*, %struct.azx** %2, align 8
  %49 = getelementptr inbounds %struct.azx, %struct.azx* %48, i32 0, i32 5
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 48
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.azx*, %struct.azx** %2, align 8
  %56 = getelementptr inbounds %struct.azx, %struct.azx* %55, i32 0, i32 5
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 32
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %47
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %54, %39
  br label %63

63:                                               ; preds = %62, %33, %28
  %64 = load %struct.azx*, %struct.azx** %2, align 8
  %65 = getelementptr inbounds %struct.azx, %struct.azx* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AZX_DCAPS_SNOOP_OFF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.azx*, %struct.azx** %2, align 8
  %74 = getelementptr inbounds %struct.azx, %struct.azx* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* %3, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %71
  %78 = load %struct.azx*, %struct.azx** %2, align 8
  %79 = getelementptr inbounds %struct.azx, %struct.azx* %78, i32 0, i32 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @dev_info(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.azx*, %struct.azx** %2, align 8
  %85 = getelementptr inbounds %struct.azx, %struct.azx* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @AZX_DRIVER_CMEDIA, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load %struct.azx*, %struct.azx** %2, align 8
  %91 = getelementptr inbounds %struct.azx, %struct.azx* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %77
  br label %93

93:                                               ; preds = %8, %92, %71
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i64 @azx_get_snoop_type(%struct.azx*) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_4__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
