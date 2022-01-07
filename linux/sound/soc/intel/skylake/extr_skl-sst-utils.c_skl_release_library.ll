; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-utils.c_skl_release_library.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst-utils.c_skl_release_library.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_lib_info = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skl_release_library(%struct.skl_lib_info* %0, i32 %1) #0 {
  %3 = alloca %struct.skl_lib_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.skl_lib_info* %0, %struct.skl_lib_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.skl_lib_info*, %struct.skl_lib_info** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %11, i64 %13
  %15 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %10
  %19 = load %struct.skl_lib_info*, %struct.skl_lib_info** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %19, i64 %21
  %23 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @release_firmware(i32* %24)
  %26 = load %struct.skl_lib_info*, %struct.skl_lib_info** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %26, i64 %28
  %30 = getelementptr inbounds %struct.skl_lib_info, %struct.skl_lib_info* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %18, %10
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  ret void
}

declare dso_local i32 @release_firmware(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
