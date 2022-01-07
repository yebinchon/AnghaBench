; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_manifest_new_ver.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-topology.c_manifest_new_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_tplg = type { i32 }
%struct.snd_soc_tplg_manifest = type { i32, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_soc_tplg_manifest_v4 = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ASoC: invalid manifest size %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ASoC: old version of manifest\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_tplg*, %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest**)* @manifest_new_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manifest_new_ver(%struct.soc_tplg* %0, %struct.snd_soc_tplg_manifest* %1, %struct.snd_soc_tplg_manifest** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.soc_tplg*, align 8
  %6 = alloca %struct.snd_soc_tplg_manifest*, align 8
  %7 = alloca %struct.snd_soc_tplg_manifest**, align 8
  %8 = alloca %struct.snd_soc_tplg_manifest*, align 8
  %9 = alloca %struct.snd_soc_tplg_manifest_v4*, align 8
  %10 = alloca i32, align 4
  store %struct.soc_tplg* %0, %struct.soc_tplg** %5, align 8
  store %struct.snd_soc_tplg_manifest* %1, %struct.snd_soc_tplg_manifest** %6, align 8
  store %struct.snd_soc_tplg_manifest** %2, %struct.snd_soc_tplg_manifest*** %7, align 8
  %11 = load %struct.snd_soc_tplg_manifest**, %struct.snd_soc_tplg_manifest*** %7, align 8
  store %struct.snd_soc_tplg_manifest* null, %struct.snd_soc_tplg_manifest** %11, align 8
  %12 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %6, align 8
  %13 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 28
  br i1 %18, label %19, label %35

19:                                               ; preds = %3
  %20 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %21 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (i32, i8*, ...) @dev_warn(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %117

30:                                               ; preds = %19
  %31 = call i8* @cpu_to_le32(i32 28)
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %6, align 8
  %34 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %3
  %36 = load %struct.soc_tplg*, %struct.soc_tplg** %5, align 8
  %37 = getelementptr inbounds %struct.soc_tplg, %struct.soc_tplg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_warn(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %6, align 8
  %41 = bitcast %struct.snd_soc_tplg_manifest* %40 to %struct.snd_soc_tplg_manifest_v4*
  store %struct.snd_soc_tplg_manifest_v4* %41, %struct.snd_soc_tplg_manifest_v4** %9, align 8
  %42 = load %struct.snd_soc_tplg_manifest_v4*, %struct.snd_soc_tplg_manifest_v4** %9, align 8
  %43 = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, %struct.snd_soc_tplg_manifest_v4* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = add i64 32, %47
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.snd_soc_tplg_manifest* @kzalloc(i32 %49, i32 %50)
  store %struct.snd_soc_tplg_manifest* %51, %struct.snd_soc_tplg_manifest** %8, align 8
  %52 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %53 = icmp ne %struct.snd_soc_tplg_manifest* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %35
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %117

57:                                               ; preds = %35
  %58 = call i8* @cpu_to_le32(i32 32)
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %61 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.snd_soc_tplg_manifest_v4*, %struct.snd_soc_tplg_manifest_v4** %9, align 8
  %63 = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, %struct.snd_soc_tplg_manifest_v4* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %66 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 4
  %67 = load %struct.snd_soc_tplg_manifest_v4*, %struct.snd_soc_tplg_manifest_v4** %9, align 8
  %68 = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, %struct.snd_soc_tplg_manifest_v4* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %71 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.snd_soc_tplg_manifest_v4*, %struct.snd_soc_tplg_manifest_v4** %9, align 8
  %73 = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, %struct.snd_soc_tplg_manifest_v4* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %76 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load %struct.snd_soc_tplg_manifest_v4*, %struct.snd_soc_tplg_manifest_v4** %9, align 8
  %78 = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, %struct.snd_soc_tplg_manifest_v4* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %81 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.snd_soc_tplg_manifest_v4*, %struct.snd_soc_tplg_manifest_v4** %9, align 8
  %83 = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, %struct.snd_soc_tplg_manifest_v4* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %86 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.snd_soc_tplg_manifest_v4*, %struct.snd_soc_tplg_manifest_v4** %9, align 8
  %88 = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, %struct.snd_soc_tplg_manifest_v4* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %92 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %95 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %114

99:                                               ; preds = %57
  %100 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %101 = getelementptr inbounds %struct.snd_soc_tplg_manifest, %struct.snd_soc_tplg_manifest* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_soc_tplg_manifest_v4*, %struct.snd_soc_tplg_manifest_v4** %9, align 8
  %105 = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, %struct.snd_soc_tplg_manifest_v4* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.snd_soc_tplg_manifest_v4*, %struct.snd_soc_tplg_manifest_v4** %9, align 8
  %109 = getelementptr inbounds %struct.snd_soc_tplg_manifest_v4, %struct.snd_soc_tplg_manifest_v4* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @le32_to_cpu(i32 %111)
  %113 = call i32 @memcpy(i32 %103, i32 %107, i32 %112)
  br label %114

114:                                              ; preds = %99, %57
  %115 = load %struct.snd_soc_tplg_manifest*, %struct.snd_soc_tplg_manifest** %8, align 8
  %116 = load %struct.snd_soc_tplg_manifest**, %struct.snd_soc_tplg_manifest*** %7, align 8
  store %struct.snd_soc_tplg_manifest* %115, %struct.snd_soc_tplg_manifest** %116, align 8
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %114, %54, %27
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.snd_soc_tplg_manifest* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
