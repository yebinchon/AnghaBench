; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_of_get_dai_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-core.c_snd_soc_of_get_dai_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.of_phandle_args = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"sound-dai\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"#sound-dai-cells\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_of_get_dai_name(%struct.device_node* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.of_phandle_args, align 4
  %7 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = call i32 @of_parse_phandle_with_args(%struct.device_node* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 0, %struct.of_phandle_args* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @snd_soc_get_dai_name(%struct.of_phandle_args* %6, i8** %15)
  store i32 %16, i32* %7, align 4
  %17 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @of_node_put(i32 %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %14, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @snd_soc_get_dai_name(%struct.of_phandle_args*, i8**) #1

declare dso_local i32 @of_node_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
