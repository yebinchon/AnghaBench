; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_dump_mconfig.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_dump_mconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.skl_module_iface* }
%struct.skl_module_iface = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Dumping config\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Input Format:\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"channels = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"s_freq = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"ch_cfg = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"valid bit depth = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Output Format:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_dev*, %struct.skl_module_cfg*)* @skl_dump_mconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_dump_mconfig(%struct.skl_dev* %0, %struct.skl_module_cfg* %1) #0 {
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca %struct.skl_module_cfg*, align 8
  %5 = alloca %struct.skl_module_iface*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %4, align 8
  %6 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %4, align 8
  %7 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.skl_module_iface*, %struct.skl_module_iface** %9, align 8
  %11 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %10, i64 0
  store %struct.skl_module_iface* %11, %struct.skl_module_iface** %5, align 8
  %12 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %13 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %17 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %21 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.skl_module_iface*, %struct.skl_module_iface** %5, align 8
  %24 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %32 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.skl_module_iface*, %struct.skl_module_iface** %5, align 8
  %35 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %34, i32 0, i32 1
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %43 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.skl_module_iface*, %struct.skl_module_iface** %5, align 8
  %46 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @dev_dbg(i32 %44, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %54 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.skl_module_iface*, %struct.skl_module_iface** %5, align 8
  %57 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  %64 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %65 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %68 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %69 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.skl_module_iface*, %struct.skl_module_iface** %5, align 8
  %72 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %71, i32 0, i32 0
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %80 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.skl_module_iface*, %struct.skl_module_iface** %5, align 8
  %83 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32, i8*, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %88)
  %90 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %91 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.skl_module_iface*, %struct.skl_module_iface** %5, align 8
  %94 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %93, i32 0, i32 0
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (i32, i8*, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  %101 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %102 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.skl_module_iface*, %struct.skl_module_iface** %5, align 8
  %105 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @dev_dbg(i32 %103, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
