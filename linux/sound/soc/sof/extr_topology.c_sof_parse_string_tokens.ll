; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_parse_string_tokens.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_sof_parse_string_tokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.sof_topology_token = type { i64, i64, i32, i32, i32 (%struct.snd_soc_tplg_vendor_string_elem*, i8*, i32, i32)* }
%struct.snd_soc_tplg_vendor_string_elem = type opaque
%struct.snd_soc_tplg_vendor_array = type { %struct.snd_soc_tplg_vendor_string_elem.0*, i32 }
%struct.snd_soc_tplg_vendor_string_elem.0 = type { i32 }

@SND_SOC_TPLG_TUPLE_TYPE_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_component*, i8*, %struct.sof_topology_token*, i32, %struct.snd_soc_tplg_vendor_array*)* @sof_parse_string_tokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sof_parse_string_tokens(%struct.snd_soc_component* %0, i8* %1, %struct.sof_topology_token* %2, i32 %3, %struct.snd_soc_tplg_vendor_array* %4) #0 {
  %6 = alloca %struct.snd_soc_component*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sof_topology_token*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_soc_tplg_vendor_array*, align 8
  %11 = alloca %struct.snd_soc_tplg_vendor_string_elem.0*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sof_topology_token* %2, %struct.sof_topology_token** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.snd_soc_tplg_vendor_array* %4, %struct.snd_soc_tplg_vendor_array** %10, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %83, %5
  %15 = load i32, i32* %12, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %18 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @le32_to_cpu(i32 %19)
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %86

22:                                               ; preds = %14
  %23 = load %struct.snd_soc_tplg_vendor_array*, %struct.snd_soc_tplg_vendor_array** %10, align 8
  %24 = getelementptr inbounds %struct.snd_soc_tplg_vendor_array, %struct.snd_soc_tplg_vendor_array* %23, i32 0, i32 0
  %25 = load %struct.snd_soc_tplg_vendor_string_elem.0*, %struct.snd_soc_tplg_vendor_string_elem.0** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.snd_soc_tplg_vendor_string_elem.0, %struct.snd_soc_tplg_vendor_string_elem.0* %25, i64 %27
  store %struct.snd_soc_tplg_vendor_string_elem.0* %28, %struct.snd_soc_tplg_vendor_string_elem.0** %11, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %79, %22
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %82

33:                                               ; preds = %29
  %34 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %34, i64 %36
  %38 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SND_SOC_TPLG_TUPLE_TYPE_STRING, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %79

43:                                               ; preds = %33
  %44 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %44, i64 %46
  %48 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.snd_soc_tplg_vendor_string_elem.0*, %struct.snd_soc_tplg_vendor_string_elem.0** %11, align 8
  %51 = getelementptr inbounds %struct.snd_soc_tplg_vendor_string_elem.0, %struct.snd_soc_tplg_vendor_string_elem.0* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @le32_to_cpu(i32 %52)
  %54 = icmp ne i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %79

56:                                               ; preds = %43
  %57 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %57, i64 %59
  %61 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %60, i32 0, i32 4
  %62 = load i32 (%struct.snd_soc_tplg_vendor_string_elem*, i8*, i32, i32)*, i32 (%struct.snd_soc_tplg_vendor_string_elem*, i8*, i32, i32)** %61, align 8
  %63 = load %struct.snd_soc_tplg_vendor_string_elem.0*, %struct.snd_soc_tplg_vendor_string_elem.0** %11, align 8
  %64 = bitcast %struct.snd_soc_tplg_vendor_string_elem.0* %63 to %struct.snd_soc_tplg_vendor_string_elem*
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %66, i64 %68
  %70 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.sof_topology_token*, %struct.sof_topology_token** %8, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %72, i64 %74
  %76 = getelementptr inbounds %struct.sof_topology_token, %struct.sof_topology_token* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %62(%struct.snd_soc_tplg_vendor_string_elem* %64, i8* %65, i32 %71, i32 %77)
  br label %79

79:                                               ; preds = %56, %55, %42
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %29

82:                                               ; preds = %29
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %14

86:                                               ; preds = %14
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
